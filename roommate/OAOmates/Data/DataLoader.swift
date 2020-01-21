//
//  DataLoader.swift
//  OAOmates
//
//  Created by linc on 2020/01/21.
//  Copyright © 2020 linc. All rights reserved.
//

import Foundation

public class DataLoader {
    var userData = [Room]()
    
    init(){
        load()
    }
    func load(){
        if let fileLocation = Bundle.main.url(forResource: "personalData", withExtension: "json"){
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Room].self, from: data)
                
                self.userData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
}
