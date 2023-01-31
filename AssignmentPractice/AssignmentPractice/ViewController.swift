//
//  ViewController.swift
//  AssignmentPractice
//
//  Created by Pittu,Sobhareddy on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOutlet: UITextField!
    
    @IBOutlet weak var textDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonClicked(_ sender: Any) {
        //read the input from inputOutlet and store it in avariable
        var input = inputOutlet.text!
        //checking for vowels
        var s = ""
        if(input.contains("a")||input.contains("A")||input.contains("e")||input.contains("E")||input.contains("i")||input.contains("I")||input.contains("o")||input.contains("O")||input.contains("u")||input.contains("U")){
            s = "The \(input) contains vowel🙂"
            
        }
        else{
           s = "The \(input) has no vowels😕"
        }
        
        textDisplay.text = "\(s)"
    }
    
}

