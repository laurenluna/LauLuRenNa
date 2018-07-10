//
//  carpoolAdViewController.swift
//  LunaLauren
//
//  Created by 林蔼欣 on 2018-07-08.
//  Copyright © 2018 Luna Cao. All rights reserved.
//

import UIKit

class carpoolAdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //lauren————————————————————————————————————————————————————————————
    //button to go back to main
    @IBOutlet weak var back: UIButton!
    @IBAction func goback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //time label
    @IBOutlet private weak var showGoTime: UILabel!
    //time picker
    @IBOutlet weak var gotime: UIDatePicker!
    
    @IBAction func gotime(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: gotime.date)
        showGoTime.text = "从 \(strDate)至"
    }
    
    //latest go time label
    @IBOutlet private weak var latestGoTime: UILabel!
    //latest go time
    @IBOutlet weak var latestGo: UIDatePicker!
    
    @IBAction func latestGo(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
    //    dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: latestGo.date)
        latestGoTime.text = "至 \(strDate)之间出发"
    }
    
    
    //------------------------------------------------------------------
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
