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
    
    
    //select departure city
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var selectCity: UIPickerView!
    
    var list = ["Toronto","London","Waterloo","Hamilton","Mississauga","Montreal"]
    
    func depCity(pickerView: UIPickerView) -> String {
        return "String"
    }
    
    func pickerView(pickerView: UIPickerView, departCity component: String) -> String {
        return "String"
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        self.view.endEditing(true)
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
//        if pickerView == selectCity {
//
//            self.textBox = self.list[Int]
//        }
        self.textBox.text = self.list[row]
        self.selectCity.isHidden = true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField == self.textBox {
            self.selectCity.isHidden = false
            textField.endEditing(true)
        }
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
