//
//  ViewController.swift
//  Pittu_Assignment01
//
//  Created by Pittu,Sobhareddy on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameOutlet: UITextField!
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBTN(_ sender: UIButton) {
        //Read the input from firstNameOutlet and store it in a variable
        
        var fName = firstNameOutlet.text!
        
        //Read the input from lastNameOutlet and store it in a variable
        
        var lName = lastNameOutlet.text!
        
        //Read the input from yearOutlet and store it in a variable
        
        var birthYear = yearOutlet.text!
        
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
        
        // Display the output
        detailsLabel.text = "Details"
        fullNameLabel.text = "Full Name : \(lName) \(fName)"
        initialsLabel.text = "Initials : \(lName.first!) \(fName.first!)"
        ageLabel.text = "Age : \(age)"
        
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        //assigning the lbels with empty strings
        detailsLabel.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        ageLabel.text  = ""
        firstNameOutlet.text = ""
        lastNameOutlet.text = ""
        yearOutlet.text = ""
    }
}

