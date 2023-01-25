//
//  ViewController.swift
//  PracticeApp
//
//  Created by Pittu,Sobhareddy on 1/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var textDisolay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        //read the firstName and store it
        //assign it to a variable
        
       var fName = firstName.text!
        
        var lName = lastName.text!
        
        textDisolay.text = "Hello, \(fName) \(lName)🤗!"
        
        
        
    }
    
}

