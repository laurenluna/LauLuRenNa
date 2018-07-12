//
//  loginController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/11.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit
import PerfectSession
import PerfectSessionPostgresSQL
import PerfectCrypto
import LocalAuthentication


class loginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    @IBAction func login(_ sender: Any) {
    
        let user = username.text
        let pass = password.text
        
        if (user == "" || pass == ""){
            return
        }
        
        DoLogin(user!,pass!)
    }
    
    func DoLogin(_ user:String, _ pass:String){
        //temp to use
        //不知道该怎么写！！！！！痛苦！！！！！
        //救命啊！！！！！
        //数据库搭不好！！！！！
        
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
