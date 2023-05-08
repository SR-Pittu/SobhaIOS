//
//  PaymentViewController.swift
//  GroceryAppProject
//
//  Created by Duppati, Sudheer on 4/25/23.
//

import UIKit

class PaymentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cvv.text = ""
        cardNumber.text = ""
        name.text = ""
        var a = 0.0
        for item in cartItems {
            let b = Double(item.price)!
            a = a + b
        }
        display.text = "Your grand total is $\(a)"
    }
    override func viewWillAppear(_ animated: Bool) {
        payment.isHidden = true
        lgn.isHidden = true
        sgn.isHidden = true
    }
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var cardNumber: UITextField!
    
    @IBOutlet weak var cvv: UITextField!
    
    @IBAction func chckPay(_ sender: Any) {
        let cn = cardNumber.text!
        let cv = cvv.text!
        print(act?.flag)
        if( !cn.isEmpty && !cv.isEmpty && act?.flag == true){
            payment.isHidden = false
            payment.isEnabled = true
            lgn.isHidden = true
            sgn.isHidden = true
        }
        else{
            payment.isHidden = true
            lgn.isHidden = false
            sgn.isHidden = false
        }
    }
    
    @IBOutlet weak var sgn: UIButton!
    @IBOutlet weak var lgn: UIButton!
    @IBOutlet weak var payment: UIButton!
    
    @IBAction func PaymentDone(_ sender: UIButton) {
        cvv.text = ""
        cardNumber.text = ""
        name.text = ""
        
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        cvv.text = ""
        cardNumber.text = ""
        name.text = ""
        payment.isHidden = true
        lgn.isHidden = true
        sgn.isHidden = true
    }
    
    @IBAction func signupClicked(_ sender: UIButton) {
        cvv.text = ""
        cardNumber.text = ""
        name.text = ""
        payment.isHidden = true
        lgn.isHidden = true
        sgn.isHidden = true
    }
    
    
    @IBOutlet weak var display: UITextView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
