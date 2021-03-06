//
//  Concordination.swift
//  OAOmates
//
//  Created by linc on 2020/01/30.
//  Copyright © 2020 linc. All rights reserved.
//

import Foundation

func Concordination(myResult : Survey, yourResult : Survey) -> Double{
    var degree : Double = 0
    if myResult.sleepingHabit == yourResult.sleepingHabit {
        degree += 0.125
    }
    if myResult.smoking == yourResult.sleepingHabit {
        degree += 0.125
    }
    if myResult.drinking == yourResult.drinking {
        degree += 0.125
    }
    if myResult.sleepout == yourResult.sleepout {
        degree += 0.125
    }
    if myResult.closeness == yourResult.closeness {
        degree += 0.125
    }
    if myResult.washing == yourResult.washing{
        degree += 0.125
    }
    if myResult.religion == yourResult.religion{
        degree += 0.125
    }
    if myResult.sameReligion == yourResult.sameReligion{
        degree += 0.125
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



