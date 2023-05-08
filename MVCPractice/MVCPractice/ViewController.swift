//
//  ViewController.swift
//  MVCPractice
//
//  Created by Pittu,Sobhareddy on 4/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var textFld: UITextField!
    
  
    
    @IBAction func TextField(_ sender: UITextField) {
        
     
        let txt = textFld.text!.trimmingCharacters(in: .whitespaces)
        if txt.isEmpty{
            TempBtn.isHidden = true
        }
        else{
            TempBtn.isHidden = false
        }
    }
    
    var img = ""
    var text = ""
    
    @IBAction func EvaluateTemp(_ sender: UIButton) {
        let a = Double(textFld.text!) ?? 0.0
       
        if( a >= 40.0){
            img =  "hot"
            text = "It is too 🥵 Hot ☀️ OutSide"
        }
        else if( a >= 15.0 && a < 40.0){
            img = "Normal"
            text = "The weather is Nice"
        }
        else if( a < 15.0 && a > -4.0){
            img = "cold"
            text = "It is cold OutSide"
        }
        else if( a < -4.0 && a >= -10.0){
            img = "snow"
            text = "❄️ Snowing ❄️"
        }
        else{
            img = "freezing"
            text = "Do not go outside. It is freezing❄️"
        }
        textFld.text = ""
        TempBtn.isHidden = true
        
    }
    
    @IBOutlet weak var TempBtn: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "ResultSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.dstTxt = text
            destination.dstImg = img
        }
        
        
    }
    
}

