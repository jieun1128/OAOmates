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

    //slider가 정수값을 가지고, 스무스하게 움직이지 않도록
    @IBAction func SliderIntValue(_ sender: UISlider) {
        Noise.value = roundf(Noise.value)
        NotSmoking.value = roundf(NotSmoking.value)
        NotDrinking.value = roundf(NotDrinking.value)
        Cleaning.value = roundf(Cleaning.value)
    }
    
//    @IBAction func noiseSet(_ sender: UISlider) { //이게 모야??
////        noise.value = round(noise.value)
//    }
    
    func convertStringSleepingHabit (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "코골이"
        }else if button.selectedSegmentIndex == 1{
            return "이갈이"
        }else if button.selectedSegmentIndex == 2{
            return "크게숨쉬기"
        }else{
            return "없음"
        }
    }
    func convertStringSmoking (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "예"
        }else{
            return "아니요"
        }
    }
    func convertStringDrinking (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "전혀"
        }else if button.selectedSegmentIndex == 1{
            return "달 1~3회"
        }else if button.selectedSegmentIndex == 2{
            return "주 1~2회"
        }else if button.selectedSegmentIndex == 3{
            return "주 3~4회"
        }else{
            return "주 5~7회"
        }
    }
    func convertStringSleepOut (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "안함"
        }else if button.selectedSegmentIndex == 1{
            return "드물게"
        }else if button.selectedSegmentIndex == 2{
            return "가끔"
        }else if button.selectedSegmentIndex == 3{
            return "종종"
        }else{
            return "자주"
        }
    }
    func convertStringCloseness (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "0%"
        }else if button.selectedSegmentIndex == 1{
            return "25%"
        }else if button.selectedSegmentIndex == 2{
            return "50%"
        }else if button.selectedSegmentIndex == 3{
            return "75%"
        }else{
            return "100%"
        }
    }
    func convertStringWashing (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "0~1번"
        }else if button.selectedSegmentIndex == 1{
            return "2~3번"
        }else if button.selectedSegmentIndex == 2{
            return "4~5번"
        }else{
            return "6~7번"
        }
    }
    func convertStringReligion (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "불교"
        }else if button.selectedSegmentIndex == 1{
            return "천주교"
        }else if button.selectedSegmentIndex == 2{
            return "기독교"
        }else if button.selectedSegmentIndex == 3{
            return "무교"
        }else{
            return "기타"
        }
    }
    func convertStringSameReligion (button : UISegmentedControl)-> String{
        if button.selectedSegmentIndex == 0{
            return "예"
        }else{
            return "상관없음"
        }
    }
    
    @IBAction func Save(_ sender: Any) {

        let userSurvey = Survey(sleepingHabit: convertStringSleepingHabit(button: SleepingHabit), smoking: convertStringSmoking(button: Smoking), drinking: convertStringDrinking(button: Drinking), sleepout: convertStringSleepOut(button: SleepOut), closeness: convertStringSleepOut(button: SleepOut), washing: convertStringWashing(button: Washing), religion: convertStringReligion(button: Religion), noise: Int(self.Noise.value), notSmoking: Int(self.NotSmoking.value), notDrinking: Int(self.NotDrinking.value), cleaning: Int(self.Cleaning.value), sameReligion: convertStringSameReligion(button: SameReligion))
        
        API.shared.addSurveyResult(name: "", user: userSurvey)
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

