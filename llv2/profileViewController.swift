//
//  profileViewController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/16.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit
import Firebase

class profileViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBAction func handleLogout(_ sender: UIButton) {
        try! Auth.auth().signOut()
        self.performSegue(withIdentifier: "logoutSegue", sender: self)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.labelText.text = "欢迎，" + (Auth.auth().currentUser?.displayName)!
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
