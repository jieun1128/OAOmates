//
//  MyViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/28.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit
import FirebaseFirestore




class MyViewController: UITableViewController{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var collegeLabel: UILabel!
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var nationLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    
    @IBOutlet weak var dormitoryLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var semesterLabel: UILabel!
    @IBOutlet weak var introductionLabel: UILabel!
    @IBOutlet weak var letterLabel: UILabel!
    @IBOutlet weak var openChatLabel: UILabel!
    @IBOutlet weak var amLabel: UILabel!
    @IBOutlet weak var sleephour: UILabel!
    @IBOutlet weak var pmLabel: UILabel!
    @IBOutlet weak var wakehour: UILabel!
    
    
    var userId:String {
        return UserDefaults.standard.string(forKey: "userId") ?? ""
    }
    
    @IBAction func pressEditButton(_ sender: Any) {
        performSegue(withIdentifier: "sendEdit", sender: self)
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
        API.shared.getUserInfo(userId: userId) { user in
            self.nameLabel.text = user.name
            self.nickNameLabel.text = user.nickname
            self.collegeLabel.text = user.college
            self.majorLabel.text = user.major
            self.gradeLabel.text = user.grade
            self.ageLabel.text = user.age
            self.genderLabel.text = user.gender
            self.nationLabel.text = user.nation
            self.dormitoryLabel.text = user.dormitory
            self.numberLabel.text = user.number
            self.amLabel.text = user.wakeAPM
            self.pmLabel.text = user.sleepAPM
            self.sleephour.text = "\(user.wakeTime)"
            self.wakehour.text = user.sleepTime
            self.yearLabel.text = user.year
            self.semesterLabel.text = user.semester
            self.monthLabel.text = user.month
            
            self.introductionLabel.text = user.introduction
            self.letterLabel.text = user.letter
            self.openChatLabel.text = user.openChat
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


