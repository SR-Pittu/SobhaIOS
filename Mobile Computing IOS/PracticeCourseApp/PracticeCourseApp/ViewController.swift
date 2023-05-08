//
//  ViewController.swift
//  PracticeCourseApp
//
//  Created by Pittu,Sobhareddy on 1/26/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputCourse: UITextField!
    
    @IBOutlet weak var inputCourse2: UITextField!
    
    @IBOutlet weak var courseDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        
        //read the input from both the text flieds and store them in variables
        
        var crs1 = inputCourse.text!
        
        var crs2 = inputCourse2.text!
        
        //Perform String interpolation
        //Display the output as "java - webapps"
        
        courseDisplay.text = "\(crs1) - \(crs2)"
        
    }
    
}

