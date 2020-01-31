//
//  NewPersonViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/31.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit
import Firebase

class NewPersonViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailText.placeholder = "이메일 입력"
        passwordText.placeholder = "비밀번호 입력"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonTouched(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!){(user, error)in
            if user != nil{
                print("register success")
            } else{
                print("register failed")
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

}
