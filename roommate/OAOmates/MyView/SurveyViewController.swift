//
//  SurveyViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/28.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {

    @IBOutlet weak var SleepingHabit: UISegmentedControl!
    @IBOutlet weak var Smoking: UISegmentedControl!
    @IBOutlet weak var drinking: UISegmentedControl!
    @IBOutlet weak var sleepOut: UISegmentedControl!
    @IBOutlet weak var closeness: UISegmentedControl!
    @IBOutlet weak var washing: UISegmentedControl!
    @IBOutlet weak var religion: UISegmentedControl!
    @IBOutlet weak var noise: UISlider!
    @IBOutlet weak var notSmoking: UISlider!
    @IBOutlet weak var notdrinking: UISlider!
    @IBOutlet weak var cleaning: UISlider!
    @IBOutlet weak var sameReligion: UISegmentedControl!
    
    @IBAction func Save(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
