//
//  LogingInViewController.swift
//  GroceryAppProject
//
//  Created by Pittu,Sobhareddy on 5/3/23.
//

import UIKit

class LogingInViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loginBTN.isEnabled = false
       // flag = true
    }
    
    @IBOutlet weak var emailOT: UITextField!
    
    @IBOutlet weak var PasswordOT: UITextField!
    
    
    @IBAction func login(_ sender: UITextField) {
        let enteredID = emailOT.text!
        let pw = PasswordOT.text!
     //   flag = true
              //Loop the array to find the student
              for a in Acnt {
                  if enteredID == a.email && pw == a.password{
                      loginBTN.isEnabled = true
                      act?.email = enteredID
                      act?.password = pw
                      act?.flag = true
                  }
              }
        print(act?.flag)
    
    }
    

    @IBAction func loginAction(_ sender: UIButton) {
        emailOT.text = ""
        PasswordOT.text = ""
        let enteredID = emailOT.text!
        let pw = PasswordOT.text!
        for a in Acnt {
            if enteredID == a.email && pw == a.password{
                loginBTN.isEnabled = true
                act?.email = enteredID
                act?.password = pw
                act?.flag = true
                print("ssss")
            }
        }
        self.dismiss(animated: true)
    }
    
    @IBOutlet weak var loginBTN: UIButton!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
