//
//  Room.swift
//  OAOmates
//
//  Created by linc on 2020/01/21.
//  Copyright © 2020 linc. All rights reserved.
//

import Foundation
import UIKit

struct Person : Codable{
   // var image : UIImage?
    var dormitory: String
    var name: String
    var number: String
    var nickname: String
    var age: String
    var gender: String
    var nation: String
    var major: String
    var grade: String
    var college: String
    var sleepTime: String
    var letter: String
    var introduction: String
    var openChat: String
}
struct Survey : Codable{
    var sleepingHabit : Int
    var smoking : Int
    var drinking : Int
    var sleepout : Int
    var closeness : Int
    var washing : Int
    var religion : Int
    var notSmoking : Int
    var notDrinking : Int
    var cleaning : Int
    var sameReligion : Int
    
    
}

struct Room : Codable{
    var personalInfo : Person
    var surveyResult : Survey
}

//    enum survey : String{
//        case sleepingHabit
//        case smoking
//        case drinking
//        case sleepout
//        case closeness
//        case washing
//        case religion
//
//        case
//    }
//    var time: String.  //으으으으으
//  notSmoking: UISlider!
//  @IBOutlet weak var notdrinking: UISlider!
//  @IBOutlet weak var cleaning: UISlider!
//  @IBOutlet weak var sameReligion: UI
//}
