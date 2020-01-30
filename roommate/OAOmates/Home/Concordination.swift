//
//  Concordination.swift
//  OAOmates
//
//  Created by linc on 2020/01/30.
//  Copyright © 2020 linc. All rights reserved.
//

import Foundation

func Concordination(myResult : Room, yourResult : Room) -> Double{
    var degree : Double = 0
    if myResult.surveyResult.sleepingHabit == yourResult.surveyResult.sleepingHabit {
        degree += 12.5
    }
    if myResult.surveyResult.smoking == yourResult.surveyResult.sleepingHabit {
        degree += 12.5
    }
    if myResult.surveyResult.drinking == yourResult.surveyResult.drinking {
        degree += 12.5
    }
    if myResult.surveyResult.sleepout == yourResult.surveyResult.sleepout {
        degree += 12.5
    }
    if myResult.surveyResult.closeness == yourResult.surveyResult.closeness {
        degree += 12.5
    }
    if myResult.surveyResult.washing == yourResult.surveyResult.washing{
        degree += 12.5
    }
    if myResult.surveyResult.religion == yourResult.surveyResult.religion{
        degree += 12.5
    }
    if myResult.surveyResult.sameReligion == yourResult.surveyResult.sameReligion{
        degree += 12.5
    }
    return degree
//    struct Survey : Codable{
//    var sleepingHabit : String
//    var smoking : String
//    var drinking : String
//    var sleepout : String
//    var closeness : String
//    var washing : String
//    var religion : String
//    var notSmoking : Int
//    var notDrinking : Int
//    var cleaning : Int
//    var sameReligion : Int

    
    
}



