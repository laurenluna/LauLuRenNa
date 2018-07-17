//
//  profileViewController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/16.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit

class profileViewController: UIViewController {

    @IBOutlet weak var labelUserName: UILabel!
    
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            labelUserName.text = "Luna,Lauren，当你们看到这条消息的时候！出bug啦！哈哈哈哈！！" +
                                 "不知道是ui还是数据库还是alamofire反正就是出bug了，绝望吗？？"
=======
            labelUserName.text = "登录错误, 用户名或密码错误"
>>>>>>> parent of 95dad31... 我成功了兄弟！！！！
=======
            labelUserName.text = "登录错误, 用户名或密码错误"
>>>>>>> parent of 95dad31... 我成功了兄弟！！！！
=======
            labelUserName.text = "登录错误, 用户名或密码错误"
>>>>>>> parent of 95dad31... 我成功了兄弟！！！！
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
