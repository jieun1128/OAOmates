//
//  personViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/14.
//  Copyright © 2020 linc. All rights reserved.
//
struct Room {
    var age: Int
    var gender: String
    var nation: String
}

import UIKit


class personViewController: UIViewController,  UITableViewDelegate {

    @IBOutlet weak var personTableView: UITableView!
    
    let person:[Room] = [
        Room(age: 20, gender: "여", nation: "Korea"),
        Room(age: 20, gender: "남", nation: "Korea"),
        Room(age: 21, gender: "여", nation: "China"),
        Room(age: 22, gender: "남", nation: "India"),
        Room(age: 22, gender: "여", nation: "Korea"),
        Room(age: 23, gender: "남", nation: "Korea")
    ]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.personTableView.dataSource = self
        self.personTableView.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension personViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personTableViewCell", for: indexPath) as! personTableViewCell
        let rowData = self.person[indexPath.row]
        cell.ageLabel.text = "\(rowData.age)살"
        cell.genderLabel.text = "성별: \(rowData.gender)"
        cell.nationLabel.text = rowData.nation
        return cell
        
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


