//
//  LoginViewController.swift
//  OAOmates
//
//  Created by linc on 2020/01/31.
//  Copyright © 2020 linc. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

        @IBAction func unwindVC1 (segue : UIStoryboardSegue){}
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailText.placeholder = "이메일 입력"
        passwordText.placeholder = "비밀번호 입력"
        if Auth.auth().currentUser != nil{
        emailText.placeholder = "이미 로그인 된 상태입니다."
        passwordText.placeholder = "이미 로그인 된 상태입니다."
        LoginButton.setTitle("이미 로그인 된 상태입니다.", for: .normal)
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTouched(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailText.text!, link: passwordText.text!){
            (user,error) in
            if user != nil{
                print("login success")
                if let vc = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(identifier: "MainTab") as? UITabBarController {
                    self.present(vc, animated: true, completion: nil)
                }
                
            } else {
                print("login fail")
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
