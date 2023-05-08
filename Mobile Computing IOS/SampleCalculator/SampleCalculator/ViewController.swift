//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Pittu,Sobhareddy on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textDisplay: UILabel!
    
    var operand1 = -1.1
    var _operator = " "
    var operand2 = -1.1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BtnEqualsClicked(_ sender: Any) {
        // Display =
        textDisplay.text = textDisplay.text! + "="
        if(_operator == "+"){
            textDisplay.text = textDisplay.text! + "\(operand1+operand2)"
        }
    }
    @IBAction func Btn5Clicked(_ sender: Any) {
        // Display 5
        textDisplay.text = textDisplay.text! + "5"
        if (operand1 == -1.1){
            operand1=5
        }
        else{
            operand2 = 5
        }
    }
    @IBAction func BtnPlusClicked(_ sender: Any) {
        // Display +
        textDisplay.text = textDisplay.text! + "+"
        if(_operator == " "){
            _operator="+"
        }
    }
    @IBAction func Btn8Clicked(_ sender: Any) {
        // Display 8
        textDisplay.text = textDisplay.text! +  "8"
        if (operand2 == -1.1){
            operand2 = 8
        }
        else{
            operand1 = 8
        }
    }
    
}

