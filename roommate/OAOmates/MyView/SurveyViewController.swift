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
    @IBOutlet weak var Drinking: UISegmentedControl!
    @IBOutlet weak var SleepOut: UISegmentedControl!
    @IBOutlet weak var Closeness: UISegmentedControl!
    @IBOutlet weak var Washing: UISegmentedControl!
    @IBOutlet weak var Religion: UISegmentedControl!
    @IBOutlet weak var Noise: UISlider!
    @IBOutlet weak var NotSmoking: UISlider!
    @IBOutlet weak var NotDrinking: UISlider!
    @IBOutlet weak var Cleaning: UISlider!
    @IBOutlet weak var SameReligion: UISegmentedControl!
    
    
    
    
//    func convertString (button : UISegmentedControl)-> String{
//        if button.selectedSegmentIndex == 0{
//            return "코콜이"
//        }else if
//    }
    
    @IBAction func noiseSet(_ sender: UISlider) {
        Noise.value = round(Noise.value)
    }
    
    
    
    @IBAction func Save(_ sender: Any) {

        let user = Survey(sleepingHabit: Int(), smoking: Int(), drinking: Int(), sleepout: Int(), closeness: Int(), washing: Int(), religion: Int(), noise: Int(), notSmoking: Int(), notDrinking: Int(), cleaning: Int(), sameReligion: Int())
//        let user = Survey(sleepingHabit: SleepingHabit.selectedSegmentIndex ?? 0, smoking: Smoking.selectedSegmentIndex ?? 0, drinking: Drinking.selectedSegmentIndex ?? 0, sleepout: SleepOut?.selectedSegmentIndex ?? 0, closeness: Closeness.selectedSegmentIndex ?? 0, washing: Washing.selectedSegmentIndex ?? 0, religion: Religion.selectedSegmentIndex ?? 0, noise: Int(), notSmoking: Int(), notDrinking: Int(), cleaning: Int(), sameReligion: SameReligion.selectedSegmentIndex ?? 0)

        API.shared.addSurveyResult(name: "", user: user)
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

//        switch SleepingHabit.selectedSegmentIndex {
//        case 0: textLabel.text = "코골이";
//        case 1: textLabel.text = "이갈이";
//        case 2: textLabel.text = "크게 숨쉬기";
//        case 3: textLabel.text = "없음";
//        default: break;
//        }
