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
        nameLabel.text=data
    }
    
    @IBAction func unwindVC1 (segue : UIStoryboardSegue){}
    
    @IBAction func pressEditButton(_ sender: Any) {
        performSegue(withIdentifier: "sendEdit", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "sendEdit"{
            let secondVC = segue.destination as! PersonalInfoTableViewController
            secondVC.data = nameLabel.text!
            secondVC.delegate = self
        }
    }
    
  

 
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


