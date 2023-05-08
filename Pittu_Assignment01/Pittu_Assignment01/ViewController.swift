//
//  ViewController.swift
//  Pittu_Assignment01
//
//  Created by Pittu,Sobhareddy on 1/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firsNameOutlet: UITextField!
    
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    
    @IBOutlet weak var birthYearOutlet: UITextField!
    
    
    
    @IBOutlet weak var textDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonClicked(_ sender: UIButton) {
        
        //Read the input from firstNameOutlet and store it in a variable
        
        var fName = firsNameOutlet.text!
        
        //Read the input from lastNameOutlet and store it in a variable
        
        var lName = lastNameOutlet.text!
        
        //Read the input from birthYearOutlet and store it in a variable
        
        var birthYear = birthYearOutlet.text!
        
        // calculate the system current year
        //https://www.zerotoappstore.com/get-year-month-day-from-date-swift.html got the year format from this site.
        
        
        let dt = Date()
        let dtFormatter = DateFormatter()
        dtFormatter.dateFormat = "yyyy"
        let currentYear = dtFormatter.string(from: dt)
        
        //convert theese string into integers
        
        var yr = Int(currentYear) ?? 0
        var yer = Int(birthYear) ?? 0
        
        //calculating the age currentYear - birthYear
        
        var age = yr - yer
        
        // Displaying the output
        
        textDisplay.text = "Details\r\rFull Name : \(lName) \(fName)\r\rInitials : \(lName.first!) \(fName.first!)\r\rAge : \(age)"
        
        
        
    }
    
    @IBAction func resetButtonClicked(_ sender: UIButton) {
    
        textDisplay.text = ""
        firsNameOutlet.text = ""
        lastNameOutlet.text = ""
        birthYearOutlet.text = ""
    
    }
    
    
    
    
    
}

