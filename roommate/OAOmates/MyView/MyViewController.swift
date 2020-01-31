//
//  MyViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/28.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit




class MyViewController: UITableViewController, CanRecieve{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var collegeLabel: UILabel!
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var nationLabel: UILabel!
    
    @IBOutlet weak var dormitoryLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    
//    func returningName() -> String? {
//        return nameLabel.text
//    }
//    
    func passDataBack(data: String) {
        nameLabel.text = data
//        nickNameLabel.text = data.personalInfo.nickname
//        collegeLabel.text = data.personalInfo.college
//        majorLabel.text = data.personalInfo.major
//        gradeLabel.text = data.personalInfo.grade
//        ageLabel.text = data.personalInfo.age
//        genderLabel.text = data.personalInfo.gender
//        nationLabel.text = data.personalInfo.nation
        
    }
    
    
    
    @IBAction func pressEditButton(_ sender: Any) {
        performSegue(withIdentifier: "sendEdit", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendEdit"{
            let editVC = segue.destination as! PersonalInfoTableViewController
            editVC.data = nameLabel.text!
//            editVC.data.personalInfo.nickname = nickNameLabel.text!
//            editVC.data.personalInfo.college = collegeLabel.text!
//            editVC.data.personalInfo.major = majorLabel.text!
//            editVC.data.personalInfo.grade = gradeLabel.text!
//            editVC.data.personalInfo.age = ageLabel.text!
//            editVC.data.personalInfo.gender = genderLabel.text!
//            editVC.data.personalInfo.nation = nationLabel.text!
//            editVC.data.personalInfo.dormitory = dormitoryLabel.text!
//            editVC.data.personalInfo.number = numberLabel.text!
            
            editVC.delegate = self

        }
    }
    
  @IBAction func unwindVC1 (segue : UIStoryboardSegue){}

 
        // Do any additional setup after loading the view.
    
}

  






    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


