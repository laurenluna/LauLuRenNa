//
//  profileViewController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/16.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit
import Alamofire

class profileViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    //let URL_USER_IMAGE = "http://localhost/phpFile/v1/imageUpload.php"

    @IBOutlet weak var labelUserName: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    //click on the picture

    @IBAction func upload(_ sender: AnyObject) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        image.allowsEditing = false
        
        self.present(image, animated:true){
         //after it is complete
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            userImage.image = image
        }
        else{
            //error message
        }
        
        self.dismiss(animated: true,completion: nil)
        
        
        //upload to server
        
        myImageUploadRequest()
        
        
        
    }
    
    func myImageUploadRequest(){
        //
    }
    
    
    
    
    @IBAction func logout(_ sender: UIButton) {
        UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        UserDefaults.standard.synchronize()
        
        let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "loginController") as! loginController
        self.navigationController?.pushViewController(loginViewController, animated:true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaultValues = UserDefaults.standard
        if let name = defaultValues.string(forKey:"username"){
            labelUserName.text = "已登录，你好： " + name
        }
        else{
            labelUserName.text = "Luna,Lauren，当你们看到这条消息的时候！出bug啦！哈哈哈哈！！" +
                                 "不知道是ui还是数据库还是alamofire反正就是出bug了，绝望吗？？"
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
