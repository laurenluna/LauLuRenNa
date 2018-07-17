//
//  loginController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/11.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit
import Alamofire

class loginController: UIViewController {
    
    let URL_USER_LOGIN = "http://localhost/phpFile/v1/login.php"
    let defaultValues = UserDefaults.standard
    
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var labelMessage: UILabel!
    
    //press the loginin button
    @IBAction func buttonLogin(_ sender: UIButton) {
        
        let parameters: Parameters=[
            "username": textFieldUserName.text!,
            "password": textFieldPassword.text!]
        
        //making post request
        Alamofire.request(URL_USER_LOGIN, method: .post, parameters: parameters).responseJSON{
            response in
            print(response)
            
            if let result = response.result.value{
                let jsonData = result as! NSDictionary
                
                //if no error
                if(!(jsonData.value(forKey:"error") as! Bool)){
                    //get user from response
                    let user = jsonData.value(forKey:"user") as! NSDictionary
                    
                    let userId = user.value(forKey:"id") as! Int
                    let userName = user.value(forKey:"username") as! String
                    let userEmail = user.value(forKey:"email") as! String
                    let userPhone = user.value(forKey:"phone") as! String
                    
                    //save user values
                    self.defaultValues.set(userId,forKey:"userid")
                    self.defaultValues.set(userName,forKey:"username")
                    self.defaultValues.set(userEmail, forKey:"useremail")
                    self.defaultValues.set(userPhone,forKey:"userphone")
                    
                    //let profileViewController = self.storyboard?.instantiateViewController(withIdentifier:"profileViewController") as! profileViewController
                    //self.navigationController?.showDetailViewController(profileViewController, sender: UIButton.self)

                        //dismiss用来跳转回界面，目前暂时不使用所以comment out
                        //self.dismiss(animated: false, completion: nil)
                    
                }
                else{
                    self.labelMessage.text = "登陆失败，密码或用户名错误"
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if defaultValues.string(forKey:"username") != nil{
            let profileViewController = self.storyboard?.instantiateViewController(withIdentifier:"profileViewController") as! profileViewController
            self.navigationController?.pushViewController(profileViewController, animated: true)
       }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
