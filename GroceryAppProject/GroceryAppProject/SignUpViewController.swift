//
//  SignUpViewController.swift
//  GroceryAppProject
//
//  Created by Krishnamaneni, Divya on 4/25/23.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signup.isHidden = true
         
        
    }
    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var NameOT: UITextField!
    
    @IBOutlet weak var mailID: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func signUp(_ sender: Any) {
      
        var a = mailID.text!
        var acc = Account(email: a, password: password2.text!,flag : true)
        Acnt.append(acc)
        
        NameOT.text = ""
        mailID.text = ""
        password.text = ""
        password2.text = ""
        act = acc
    }
//    @IBAction func checkPassword(_ sender: Any) {
       
 //   }

    
    @IBAction func checkPasswod(_ sender: UITextField) {
        let pass1 = password.text!
        let pass2 = password2.text!
        if(pass1==pass2){
            signup.isHidden = false
           // b = true
        }
        else{
            signup.isHidden = true
        }
    }
    
    @IBOutlet weak var password2: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
