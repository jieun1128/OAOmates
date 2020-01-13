//
//  TableViewCell.swift
//  OAOmate
//
//  Created by linc on 2020/01/13.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

struct Room {
    var age: Int
    var gender: String
    var nation: String
}

class TableViewCell {

    func tableView(_ tableView: UITableView, numberOfRowInSection section: Int) -> Int {
        return self.person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)        //personCell 이름 맞추세욧!!!!!!!!!!
        let rowData = self.person[indexPath.row]
        cell.detailTextLabel?.text = "\(rowData.age)살"
        cell.textLabel?.text = "성별: \(rowData.gender)"
        cell.textLabel?.text = rowData.nation
        return cell
        
    }
    
    let person:[Room] = [
        Room(age: 20, gender: "여", nation: "Korea"),
        Room(age: 20, gender: "남", nation: "Korea"),
        Room(age: 21, gender: "여", nation: "China"),
        Room(age: 22, gender: "남", nation: "India"),
        Room(age: 22, gender: "여", nation: "Korea"),
        Room(age: 23, gender: "남", nation: "Korea")
    ]

    @IBOutlet weak var Person: UITableView!
    // Configure the view for the selected state
    
     override func viewDidLoad() {
         super.viewDidLoad()
         self.tableView.dataSource = self
         self.tableView.delegate = self
         // Do any additional setup after loading the view.
     }
     
     
    

}
