//
//  MyPickerViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/21.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

class MyPickerViewController:UIViewController, UITextFieldDelegate{
    
    var currentTextField = UITextField()
    var pickerView = UIPickerView()
    
    // 개인정보
    var Year = ["1학년", "2학년", "3학년", "4학년", "해당사항 없음"]
    var Age = ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"]
    var Gender = ["남", "여", "x"]
    var Nation = ["Korea", "China", "Japan", "India"]
    
    @IBOutlet weak var profileYear: UITextField!
    @IBOutlet weak var profileAge: UITextField!
    @IBOutlet weak var profileGender: UITextField!
    @IBOutlet weak var profileNation: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {return 1}
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if currentTextField == profileYear{
            return Year.count
        } else if currentTextField == profileAge{
            return Age.count
        } else if currentTextField == profileGender {
            return Gender.count
        } else if currentTextField == profileNation {
            return Nation.count
        } else {
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:Int) -> String?{
        if currentTextField == profileYear{
            return Year[row]
        } else if currentTextField == profileAge{
            return Age[row]
        } else if currentTextField == profileGender{
            return Gender[row]
        } else if currentTextField == profileNation{
            return Nation[row]
        }else{
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, disSelectRow row: Int, inComponent component: Int){
        
       if currentTextField == profileYear{
        profileYear.text = Year[row]
        self.view.endEditing(true)
        } else if currentTextField == profileAge{
        profileAge.text = Age[row]
        self.view.endEditing(true)
        } else if currentTextField == profileGender{
        profileGender.text = Gender[row]
        self.view.endEditing(true)
        } else if currentTextField == profileNation{
        profileNation.text = Nation[row]
        self.view.endEditing(true)
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //self.pickerView.delegate = self
        //self.pickerView.dataSource = self
        currentTextField = textField
        if currentTextField == profileYear{
            currentTextField.inputView = pickerView
        } else if currentTextField == profileAge{
            currentTextField.inputView = pickerView
        } else if currentTextField == profileGender{
            currentTextField.inputView = pickerView
        } else if currentTextField == profileNation{
            currentTextField.inputView = pickerView
        }
    }
}
