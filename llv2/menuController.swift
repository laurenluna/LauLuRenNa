//
//  menuController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/7.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit

class menuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    ////////////////////////////////////////////

    @IBOutlet weak var sendAd: UIButton!
    
    
    @IBAction func turnSendAd(_ sender: UIButton) {
        let sendAdTurn = sendAdViewContronller()
        self.navigationController?.pushViewController(sendAdTurn, animated: true)
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
