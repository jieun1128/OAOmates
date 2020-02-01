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
        
        API.shared.addSurveyResult(user: userSurvey)
    }

    
    var userId:String {
            return UserDefaults.standard.string(forKey: "userId") ?? ""
        }

        
        override func viewDidLoad() {
        super.viewDidLoad()
            API.shared.getSurveyInfo(userId: userId){ user in
//                if user.dormitory == "남산"{self.dormitory.selectedSegmentIndex = 0}
//                           else{ self.dormitory.selectedSegmentIndex = 1 }
                if user.sleepingHabit == "코골이" {self.SleepingHabit.selectedSegmentIndex = 0}
                else if user.sleepingHabit == "이갈이" {self.SleepingHabit.selectedSegmentIndex = 1}
                else if user.sleepingHabit == "크게숨쉬기" {self.SleepingHabit.selectedSegmentIndex = 2}else{
                    self.SleepingHabit.selectedSegmentIndex = 3
                }
                
                if user.smoking == "예" {self.Smoking.selectedSegmentIndex = 0 }
                else{self.Smoking.selectedSegmentIndex = 1}
                
                if user.drinking == "전혀" {self.Drinking.selectedSegmentIndex = 0 }
                else if user.drinking == "달 1~3회"{self.Drinking.selectedSegmentIndex = 1}
                else if user.drinking == "주 1~2회"{self.Drinking.selectedSegmentIndex = 2}
                else if user.drinking == "주 3~4회"{self.Drinking.selectedSegmentIndex = 3}
                else{self.Drinking.selectedSegmentIndex = 4}
                
                if user.sleepout == "안함"{self.SleepOut.selectedSegmentIndex = 0}
                else if user.sleepout == "드물게"{self.SleepOut.selectedSegmentIndex = 1}
                else if user.sleepout == "가끔"{self.SleepOut.selectedSegmentIndex = 2}
                else if user.sleepout == "종종"{self.SleepOut.selectedSegmentIndex = 3}
                else{self.SleepOut.selectedSegmentIndex = 4}
                
                if user.closeness == "0"{self.Closeness.selectedSegmentIndex = 0}
                else if user.closeness == "25%"{self.Closeness.selectedSegmentIndex = 1}
                else if user.closeness == "50%"{self.Closeness.selectedSegmentIndex = 2}
                else if user.closeness == "75%"{self.Closeness.selectedSegmentIndex = 3}
                else{self.Closeness.selectedSegmentIndex = 4}
                
                if user.washing == "0~1번"{self.Washing.selectedSegmentIndex = 0}
                else if user.washing == "2~3번"{self.Washing.selectedSegmentIndex = 1}
                else if user.washing == "4~5번"{self.Washing.selectedSegmentIndex = 2}
                else {self.Washing.selectedSegmentIndex = 3}
                
                if user.religion == "불교"{self.Religion.selectedSegmentIndex = 0}
                else if user.religion == "천주교"{self.Religion.selectedSegmentIndex = 1}
                else if user.religion == "기독교"{self.Religion.selectedSegmentIndex = 2}
                else if user.religion == "무교"{self.Religion.selectedSegmentIndex = 3}
                else{self.Religion.selectedSegmentIndex = 4}
                
                
                self.Noise.value = Float(user.noise)
                self.NotSmoking.value = Float(user.notSmoking)
                self.NotDrinking.value = Float(user.notDrinking)
                self.Cleaning.value = Float(user.cleaning)
                
                if user.sameReligion == "예"{self.SameReligion.selectedSegmentIndex = 0}
                else{self.SameReligion.selectedSegmentIndex = 1}
    
                
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

}
