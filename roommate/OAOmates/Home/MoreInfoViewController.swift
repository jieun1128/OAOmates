//
//  MoreInfoViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/21.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit
//import moltin

class MoreInfoViewController: UIViewController {

    @IBOutlet weak var collegeLabel: UILabel!
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nationLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var dormitoryLabel: UILabel!
    @IBOutlet weak var sleepTimeLabel: UILabel!
    @IBOutlet weak var letterLabel: UITextView!
    @IBOutlet weak var introductionLabel: UILabel!
    @IBOutlet weak var openChatLabel: UITextField!
    @IBOutlet weak var timeLabel: UILabel!

    var detail : Room?
    
    //???/
    var detailItem: AnyObject? {
        didSet {
            //Update the view
            self.viewDidLoad()
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = "\(detail!.personalInfo.age)"
        genderLabel.text = "\(detail!.personalInfo.gender)"
        dormitoryLabel.text = "동국대학교 \( detail!.personalInfo.dormitory) \( detail!.personalInfo.number)인실"
        nationLabel.text = "\( detail!.personalInfo.nation)"
        gradeLabel.text = "\(detail!.personalInfo.grade)"
        majorLabel.text = "\(detail!.personalInfo.major)"
        introductionLabel.text = "\(detail!.personalInfo.introduction)"
        letterLabel.text = "\(detail!.personalInfo.letter)"
        openChatLabel.text = "\(detail!.personalInfo.openChat)"
        collegeLabel.text = "\(detail!.personalInfo.college)"
        sleepTimeLabel.text = "\(detail!.personalInfo.sleepTime)"
//        P.M. 00:00 ~ A.M. 00:00
//        college.text = //으으으
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
//        genderLabel?.text = data[IndexPath.row].gender
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
