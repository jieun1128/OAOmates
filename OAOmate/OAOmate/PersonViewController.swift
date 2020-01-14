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


class PersonViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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

    @IBOutlet weak var personTableView: UITableView!
    // Configure the view for the selected state
    
     override func viewDidLoad() {
         super.viewDidLoad()
         self.personTableView.dataSource = self
         self.personTableView.delegate = self
//          Do any additional setup after loading the view.
     }
     
    @IBOutlet weak var ageCell: UILabel!
    @IBOutlet weak var genderCell: UILabel!
    @IBOutlet weak var nationCell: UILabel! //tableView의 Label들 각각 연결했는데 이게 맞게 한건지는 모르겠다..ㅜㅜ
    
}
