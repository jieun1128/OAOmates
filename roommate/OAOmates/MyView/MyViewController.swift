//
//  MyViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/28.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit




class MyViewController : UITableViewController {
 
    
    @IBAction func unwindVC1 (segue : UIStoryboardSegue){}

    @IBOutlet var myTableView: UITableView!

    fileprivate var  data:[Room] = [] {
               didSet {
                self.myTableView.reloadData()
               }
           }
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.myTableView.dataSource = self
//        self.myTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear (_ animated: Bool){
        API.shared.allUsers{(users) in
            self.data = users
        }
    }
}

//extension MyViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return 0
//    }
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return self.data.count
//    }
//
//
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//
//}
