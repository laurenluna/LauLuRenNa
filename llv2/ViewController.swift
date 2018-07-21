//
//  ViewController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/5.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    
        @IBOutlet weak var carpool: UIButton!
        @IBOutlet weak var xianzhi: UIButton!
        @IBOutlet weak var other: UIButton!
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var profileButton: UIButton!
    
    
    //定义用户是否登录，显示登录按钮或不显示
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       // if let user = Auth.auth().currentUser{
         //  loginButton.isHidden = true
           //profileButton.isHidden = false
        //}
        //else {
            loginButton.isHidden = false
            profileButton.isHidden = true
        //}
    }
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            carpool.layer.cornerRadius = 30
            xianzhi.layer.cornerRadius = 30
            other.layer.cornerRadius = 30
        
        if self.revealViewController() != nil{
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
 self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //click to turn to carpool section
    @IBAction func TurnCarpool(_ sender: UIButton) {
        let carpoolView = CarpoolViewController()
        self.navigationController?.pushViewController(carpoolView, animated: true)
    }
    
    //click to turn to xianzhi section
    @IBAction func TurnXianzhi(_ sender: UIButton) {
        let xianzhiView = xianzhiViewController()
  self.navigationController?.pushViewController(xianzhiView, animated: true)
    }
    
     //click to turn to other section
    @IBAction func TurnOther(_ sender: UIButton) {
        let otherView = otherViewController()
        self.navigationController?.pushViewController(otherView, animated: true)
    }
    
    

    
    
    
    
    

    
}

