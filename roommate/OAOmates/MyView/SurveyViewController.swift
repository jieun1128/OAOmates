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
    
//    func convertString (button : UISegmentedControl)-> String{
//        if button.selectedSegmentIndex == 0{
//            return "코콜이"
//        }else if
//    }
    
    @IBAction func noiseSet(_ sender: UISlider) {
        noise.value = round(noise.value)
    }
    
    
    
    @IBAction func Save(_ sender: Any) {

        let user = Survey(sleepingHabit: SleepingHabit.selectedSegmentIndex ?? 0, smoking: Smoking.selectedSegmentIndex ?? 0, drinking: drinking.selectedSegmentIndex ?? 0, sleepout: sleepOut?.selectedSegmentIndex ?? 0, closeness: closeness.selectedSegmentIndex ?? 0, washing: washing.selectedSegmentIndex ?? 0, religion: religion.selectedSegmentIndex ?? 0, notSmoking: Int, notDrinking: Int, cleaning: Int, sameReligion: sameReligion.selectedSegmentIndex ?? 0)


        API.shared.addUser(user: user , completion: { self.navigationController?.popViewController(animated: true)})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noise.minimumValue = 0
        noise.maximumValue = 10
        notSmoking.minimumValue = 0
        notSmoking.maximumValue = 10
        notdrinking.minimumValue = 0
        notdrinking.maximumValue = 10
        cleaning.minimumValue = 0
        cleaning.maximumValue = 10

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
