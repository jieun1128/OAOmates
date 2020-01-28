//
//  JjimTableViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/22.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

class JjimTableViewController: UITableViewController {
//    let data = DataLoader().userData
    fileprivate var  data:[Room] = [] {
        didSet{
            reloadInputViews()
        }
    }
           
       override func viewDidLoad() {
               super.viewDidLoad()
              
               // Do any additional setup after loading the view.
           }
    override func viewWillAppear(_ animated: Bool) {
        API.shared.allUsers{(users) in
            self.data = users
    }
    }
       

      
          override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               return data.count
           }
           
          override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "jjimCell", for: indexPath) as! jjimTableViewCell
               cell.dormitoryLabel.text = data[indexPath.row].dormitory
               cell.numberLabel.text = "\(data[indexPath.row].number)인실"
               cell.ageLabel.text = "\(data[indexPath.row].age)살"
               cell.genderLabel.text = "성별: \(data[indexPath.row].gender)"
//               cell.nationLabel.text = data[indexPath.row].nation
               return cell
               
           }
//         override  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//                  performSegue(withIdentifier: "MoreInfo", sender: data[indexPath.row])
//              }
           
//           override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//               if segue.identifier == "MoreInfo"{
//                   let detailVC = segue.destination as? MoreInfoViewController
//                   detailVC?.detail = data[(jjimTableView.indexPathForSelectedRow?.row)!]
//                   
//               }
//           }
       }

