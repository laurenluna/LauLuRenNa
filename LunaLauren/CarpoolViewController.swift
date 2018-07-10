//
//  CarpoolViewController.swift
//  LunaLauren
//
//  Created by Luna Cao on 2018/7/5.
//  Copyright © 2018年 Luna Cao. All rights reserved.
//

import UIKit

class CarpoolViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    //
    //    let datePicker = UIDatePicker()
    //    datePicker.datePickerMode = UIDatePickerMode.time
    //    // datePicker.backgroundColor = UIColor.blue
    //    //txtFildDeadLine.textField.inputView = datePicker
    
    @IBAction func goTime(_ sender: UIDatePicker) {
        sender.datePickerMode = UIDatePickerMode.time
        print(sender.date)
        
    }
    @IBAction func arrTime(_ sender: UIDatePicker) {
        sender.datePickerMode = UIDatePickerMode.time
        print(sender.date)
    }
    
//    @IBAction func timeline(_ sender: UITextField) {
//        print(goTime(<#T##sender: UIDatePicker##UIDatePicker#>))
//    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //button to go back to the main
    @IBOutlet weak var back: UIButton!
    @IBAction func goBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
