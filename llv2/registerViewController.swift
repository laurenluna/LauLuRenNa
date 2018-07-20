//
//  registerViewController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/13.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit
import Firebase

class registerViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var continueButton: UIButton!
    
    @IBOutlet weak var labelText: UILabel!
    
    
    //user signup
    @IBAction func handleSignUp(_ sender: UIButton) {
        
        guard let username = usernameField.text else {
            return
        }
        
        guard let email = emailField.text else{
            return
        }
        
        guard let pass = passwordField.text else{
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: pass){
            user,error in
            if error == nil && user != nil {
                self.labelText.text = "成功创建！"
                
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = username
                changeRequest?.commitChanges{error in
                    if error == nil{
                        //转到profile
                        self.performSegue(withIdentifier: "registerComplete", sender: self)
                            
                    }
                    
                }
            }
            else{
                self.labelText.text = "创建失败，用户已存在或数值错误（密码过短邮箱不符等）"
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
