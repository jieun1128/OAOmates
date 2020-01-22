//
//  MoreInfoViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/21.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

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


    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = "\(String(describing: detail?.age))"
        genderLabel.text = "\(String(describing: detail?.gender))"
        dormitoryLabel.text = "동국대학교 \(String(describing: detail?.dormitory))학사 \(String(describing: detail?.number))인실"
        nationLabel.text = "\(String(describing: detail?.nation))"
        
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
