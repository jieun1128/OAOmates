//
//  API.swift
//  OAOmates
//
//  Created by linc on 2020/01/27.
//  Copyright © 2020 linc. All rights reserved.
//

import Foundation

class API {
    static let shared = API()
    
    var userId:String {
        return UserDefaults.standard.string(forKey: "userId") ?? ""
    }
}
