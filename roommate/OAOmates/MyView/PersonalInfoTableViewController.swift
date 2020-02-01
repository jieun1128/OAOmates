//
//  PersonalInfoTableViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/28.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

protocol CanRecieve{
    func passDataBack(data: String)
}

class PersonalInfoTableViewController: UITableViewController {
    
    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var NickNameText: UITextField!
    @IBOutlet weak var MajorText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var genderText: UITextField!
    @IBOutlet weak var nationText: UITextField!
    @IBOutlet weak var introductionText: UITextField!
    @IBOutlet weak var letterText: UITextField!
    @IBOutlet weak var sleepAPM: UISegmentedControl!
    @IBOutlet weak var sleepText: UITextField!
    @IBOutlet weak var wakeText: UITextField!
    @IBOutlet weak var wakeAPM: UISegmentedControl!
    @IBOutlet weak var collegeText: UITextField!
    @IBOutlet weak var openChat: UITextField!
    @IBOutlet weak var dormitory: UISegmentedControl!
    @IBOutlet weak var number: UISegmentedControl!
    @IBOutlet weak var yearText: UITextField!
    @IBOutlet weak var semester: UISegmentedControl!
    @IBOutlet weak var gradeText: UITextField!
    @IBOutlet weak var month: UISegmentedControl!
    
    
    func convertString (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "남산"
        }else {
            return "충무"
        }
    }
    func convertStringNumber (button : UISegmentedControl)->String{
        if button.selectedSegmentIndex == 0 {
            return "2"
        }else if button.selectedSegmentIndex == 1 {
            return "4"
        }else{
            return "6"
        }
    }
    func convertStringSemester (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "1"
        }else {
            return "2"
        }
    }
    func convertStringMonth (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "4"
        }else {
            return "6"
        }
    }
    func convertStringWake (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "A.M."
        }else {
            return "P.M."
        }
    }
    func convertStringSleep (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "A.M."
        }else {
            return "P.M."
        }
    }
    
    
    
    @IBAction func SaveUser(_ sender: Any) {
        let user = Person(dormitory: convertString(button: dormitory), name: NameText.text ?? "", number: convertStringNumber(button: number), nickname: NickNameText.text ?? "", age: ageText.text ?? "", gender: genderText.text ?? "", nation: nationText.text ?? "", major: MajorText.text ?? "", grade: gradeText.text ?? "", college: collegeText.text ?? "", sleepAPM: convertStringSleep(button: sleepAPM), sleepTime: sleepText.text ?? "", wakeAPM: convertStringWake(button: wakeAPM), wakeTime: wakeText.text ?? "", letter: letterText.text ?? "", introduction: introductionText.text ?? "", openChat: openChat.text ?? "", userId: "", year: yearText.text ?? "", semester: convertStringSemester(button: semester), month: convertStringMonth(button: month))
        
        
        API.shared.addPersonalInfo(user: user)
    }
    
    var userId:String {
        return UserDefaults.standard.string(forKey: "userId") ?? ""
    }

    
    override func viewDidLoad() {
    super.viewDidLoad()
        API.shared.getUserInfo(userId: userId) { user in
            self.NameText.text = user.name
            self.NickNameText.text = user.nickname
            self.collegeText.text = user.college
            self.MajorText.text = user.major
            self.gradeText.text = user.grade
            self.ageText.text = user.age
            self.genderText.text = user.gender
            self.nationText.text = user.nation
//            self.dormitoryLabel.text = user.dormitory
//            self.numberLabel.text = user.number
            self.sleepText.text = user.sleepTime
            self.wakeText.text = user.wakeTime
            self.introductionText.text = user.introduction
            self.letterText.text = user.letter
            self.openChat.text = user.openChat
            
            if user.sleepAPM == "A.M."{self.sleepAPM.selectedSegmentIndex = 0}else{
                self.sleepAPM.selectedSegmentIndex = 1
            }
            
            if user.wakeAPM == "A.M."{self.wakeAPM.selectedSegmentIndex = 0}else{ self.wakeAPM.selectedSegmentIndex = 1}
            
            if user.dormitory == "남산"{self.dormitory.selectedSegmentIndex = 0}
            else{ self.dormitory.selectedSegmentIndex = 1 }
            
            if user.number == "2"{self.number.selectedSegmentIndex = 0 }
            else if user.number == "4" {self.number.selectedSegmentIndex = 1}
            else{self.number.selectedSegmentIndex = 2}
            
    }

    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
