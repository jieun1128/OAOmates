//
//  personViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/14.
//  Copyright © 2020 linc. All rights reserved.
//




import UIKit


class personViewController: UIViewController, UITableViewDelegate{
    let data = DataLoader().userData

    @IBOutlet weak var personTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.personTableView.dataSource = self
        self.personTableView.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension personViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personTableViewCell", for: indexPath) as! personTableViewCell
        cell.dormitoryLabel.text = data[indexPath.row].dormitory
        cell.numberLabel.text = "\(data[indexPath.row].number)인실"
        cell.ageLabel.text = "\(data[indexPath.row].age)살"
        cell.genderLabel.text = "성별: \(data[indexPath.row].gender)"
        cell.nationLabel.text = data[indexPath.row].nation
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           performSegue(withIdentifier: "MoreInfo", sender: data[indexPath.row])
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MoreInfo"{
            let detailController = segue.destination as? MoreInfoViewController
//            let list = sender as? Room
//            if list != nil{
//                let detailController = segue.destination as? MoreInfoViewController
//                if detailController != nil{
//                    detailController!.personDetail = list
//                }
//            }
        }
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

