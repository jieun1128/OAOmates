//
//  personViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/14.
//  Copyright © 2020 linc. All rights reserved.
//




import UIKit
import Firebase


class personViewController: UIViewController, UITableViewDelegate{
//    let data = DataLoader().userData
    @IBAction func LogoutButton(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do{
            try firebaseAuth.signOut()
        } catch let signOutError as NSError{
            print("Error signing out : %@", signOutError)
        }
    }
    
    @IBOutlet weak var personTableView: UITableView!
     var  data:[Person] = [] {
        didSet {
            self.personTableView.reloadData()
        }
    }
//    let db = Firestore.firestore()
//    var ref : DocumentReference? = nil
//    ref = db.collection("Room").document("name")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.personTableView.dataSource = self
        self.personTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
//    var handle : Any
    override func viewWillAppear(_ animated: Bool) {
        var handle = Auth.auth().addStateDidChangeListener { (auth, user) in
          // [START_EXCLUDE]
          self.personTableView.reloadData()
          // [END_EXCLUDE]
        }
        Auth.auth().removeStateDidChangeListener(handle)
        API.shared.allUsers{(users) in
            self.data = users
        }
        
    }
//    override func viewWillDisappear(_ animated: Bool) {
//        Auth.auth().removeStateDidChangeListener(handle)
//    }

}

extension personViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personTableViewCell", for: indexPath) as! personTableViewCell
        cell.dormitoryLabel.text = data[indexPath.row]/*.personalInfo*/.dormitory
        cell.numberLabel.text = "\(data[indexPath.row]/*.personalInfo*/.number)인실"
        cell.ageLabel.text = "\(data[indexPath.row]/*.personalInfo*/.age)살"
        cell.genderLabel.text = "성별: \(data[indexPath.row]/*.personalInfo*/.gender)"
        cell.nationLabel.text = data[indexPath.row]/*.personalInfo*/.nation
        
        
//        cell.profileImageView.image = data[indexPath.row].image
        return cell
        
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//           performSegue(withIdentifier: "MoreInfo", sender: data[indexPath.row])
//       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MoreInfo"{
            let detailVC = segue.destination as? MoreInfoViewController
            detailVC?.detail = data[(personTableView.indexPathForSelectedRow?.row)!]
            
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


