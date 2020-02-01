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
    @IBOutlet weak var nicknameLabel: UILabel!
    
    //
    var matchingField: UITextField?
    //
    
    
    var detail : Person?
    
    //???/
    var detailItem: AnyObject? {
        didSet {
            //Update the view
            self.viewDidLoad()
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        nicknameLabel.text = "\(detail!/*personalInfo*/.nickname)"
        ageLabel.text = "\(detail!/*.personalInfo*/.age)세"
        genderLabel.text = "\(detail!/*.personalInfo*/.gender)"
        dormitoryLabel.text = "동국대학교 \( detail!/*.personalInfo*/.dormitory)학사 \( detail!/*.personalInfo*/.number)인실"
        nationLabel.text = "\(detail!/*.personalInfo*/.nation)"
        gradeLabel.text = "\(detail!/*.personalInfo*/.grade)학년"
        majorLabel.text = "\(detail!/*.personalInfo*/.major)"
        introductionLabel.text = "\(detail!/*.personalInfo*/.introduction)"
        letterLabel.text = "\(detail!/*.personalInfo*/.letter)"
        openChatLabel.text = "\(detail!/*.personalInfo*/.openChat)"
        collegeLabel.text = "\(detail!/*.personalInfo*/.college)"
        sleepTimeLabel.text = "\(detail!/*.personalInfo*/.wakeAPM) \(detail!/*.personalInfo*/.wakeTime) ~ \(detail!/*.personalInfo*/.sleepAPM) \(detail!/*.personalInfo*/.sleepTime)"
        timeLabel.text = "\(detail!/*.personalInfo*/.year)년 \(detail!/*.personalInfo*/.semester)학기 \(detail!/*.personalInfo*/.month)개월"
        
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
    
    @IBAction func AlertMatching(_ sender: Any) {
        let alertController = UIAlertController(title: "매칭요청DLSRKDY", message: "우와", preferredStyle: .alert)
//        alertController.addTextField(configurationHandler: matchingField)
//        alertController.addAction(title: "ok", style: .default, handler: nil)
//        present(alertController, animated: true)
        
//        let okAction = UIAlertAction(title: "ok", style: .default, handler: self.okHandler)
//        alertController.addAction(okAction)
        
        self.present(alertController, animated: true)
    }
    
    func matchingField(textField: UITextField) {
        matchingField = textField
    }

//    func okHandler(alert: UIAlertAction) {
//        let simpleVC = SimpleVC()
//        simpleVC.customInit(message: (matchingField?.text)!)
//        self.navigationController?.pushViewController(simpleVC, animated: true)
//    }
}
