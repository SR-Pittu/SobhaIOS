//
//  ViewController.swift
//  HelloApp
//
//  Created by Pittu,Sobhareddy on 1/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputNameOutlet: UITextField!
    
    
    @IBOutlet weak var displayOutlet: UILabel!
    
    @IBOutlet weak var inputLastNameOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        //read the input name and store it
        // assigning it  to the variable
        
        var input = inputNameOutlet.text!
        
        var lastName = inputLastNameOutlet.text!
        
        //perform string interpolation
        // (Hello, John!) and assign it to the display label.
        
        displayOutlet.text = "Hello, \(lastName) \(input) 😊!"
        
    }
    
}

