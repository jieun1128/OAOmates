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
    
    
    
    func passDataBack(data: String) {
        nameLabel.text = data
//        nickNameLabel.text = data.nickname
//        collegeLabel.text = data.college
//        majorLabel.text = data.major
//        gradeLabel.text = data.grade
//        ageLabel.text = data.age
//        genderLabel.text = data.gender
//        nationLabel.text = data.nation
        
    }
    
    
    
    @IBAction func pressEditButton(_ sender: Any) {
        performSegue(withIdentifier: "sendEdit", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "sendEdit"{
            let editVC = segue.destination as! PersonalInfoTableViewController
            editVC.data = nameLabel.text!
//            editVC.data.nickname = nickNameLabel.text!
//            editVC.data.college = collegeLabel.text!
//            editVC.data.major = majorLabel.text!
//            editVC.data.grade = gradeLabel.text!
//            editVC.data.age = ageLabel.text!
//            editVC.data.gender = genderLabel.text!
//            editVC.data.nation = nationLabel.text!
//            editVC.data.dormitory = dormitoryLabel.text!
//            editVC.data.number = numberLabel.text!
            
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


