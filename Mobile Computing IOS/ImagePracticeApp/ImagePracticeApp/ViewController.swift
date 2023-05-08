//
//  ViewController.swift
//  ImagePracticeApp
//
//  Created by Pittu,Sobhareddy on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var discriptionDisplayOL: UILabel!
    
    
    @IBOutlet weak var temperatureInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        discriptionDisplayOL.text = ""
    }

    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBAction func imageButton(_ sender: Any) {
        
        let a = Double(temperatureInput.text!) ?? 0.0
        
        if( a >= 40.0){
            imageDisplay.image = UIImage(named: "hot")
            discriptionDisplayOL.text = "It is too Hot OutSide"
        }
        else if( a >= 15.0 && a < 40.0){
            imageDisplay.image = UIImage(named: "Normal")
            discriptionDisplayOL.text = "The weather is Nice"
        }
        else if( a < 15.0 && a > -4.0){
            imageDisplay.image = UIImage(named: "cold")
            discriptionDisplayOL.text = "It is cold OutSide"
        }
        else if( a < -4.0 && a >= -10.0){
            imageDisplay.image = UIImage(named: "snow")
            discriptionDisplayOL.text = "❄️ Snowing ❄️"
        }
        else{
            imageDisplay.image = UIImage(named: "freezing")
            discriptionDisplayOL.text = "Do not go outside. It is freezing"
        }
        
    }
    
}

