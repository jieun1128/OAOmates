//
//  MatchingRequest.swift
//  OAOmates
//
//  Created by linc on 2020/02/01.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit

class MatchingRequest: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        messageLabel.text = message
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func customInit(message: String) {
        self.message = message
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
