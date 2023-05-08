//
//  ViewController.swift
//  Pittu_CalculatorApp
//
//  Created by Pittu,Sobhareddy on 2/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultOutlet: UILabel!
    
    var _operator = " "
    var n1 = 0.0
    var n2 = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultOutlet.text = ""
    }

    @IBAction func buttonAC(_ sender: UIButton) {
        resultOutlet.text = ""
        _operator = " "
        n1 = 0
        n2 = 0.0
    }
    @IBAction func buttonC(_ sender: UIButton) {
        var a = String(resultOutlet.text!)
        if(!a.isEmpty ){
        a.removeLast()
        }
        resultOutlet.text = a
    }
    
    @IBAction func buttonPlusOrMinus(_ sender: UIButton) {
        let a = resultOutlet.text!
        if(_operator=="+"){
            _operator = "-"
           resultOutlet.text = "-" + a
           }else{
               _operator = "+"
            resultOutlet.text = "-" + a
           }
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        _operator = "/"
        n1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""
    }
    @IBAction func buttonMultiply(_ sender: UIButton) {
        _operator = "*"
        n1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""
    }
    @IBAction func buttonPlus(_ sender: UIButton) {
        _operator = "+"
        n1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""
    }
    @IBAction func buttonMinus(_ sender: UIButton) {
        _operator = "-"
        n1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        if(resultOutlet.text!.contains("-")){
            resultOutlet.text!.removeFirst()
        }
        n2 = Double(resultOutlet.text!) ?? 0.0
        var result :Double = 0
        resultOutlet.text = resultOutlet.text! + "="
        let a = _operator
        if(a.contains("+")){
            result = Double(n1) + n2
            resultOutlet.text = "\(Int(result))"
        }
        if(a.contains("-")){
            result = Double(n1) - n2
            resultOutlet.text = "\(Int(result))"
        }
        if(a.contains("*")){
            result = Double(n1) * n2
            resultOutlet.text = "\(Int(result))"
        }
        if(a.contains("/")){
            if(n2==0){
                resultOutlet.text = "Not a number"
            }
            else{
                result = Double(n1) / n2
                resultOutlet.text = "\(round(result * 100000)/100000.0)"
            }
        }
        if(a.contains("%")){
            if(String(n1).contains(".") || String(n2).contains(".")){
                result = Double(n1).truncatingRemainder(dividingBy: Double(n2))
                resultOutlet.text = "\(round(result * 100) / 100.0 )"
            }
            else {
            result = Double(Int(n1) % Int(n2))
            resultOutlet.text = "\(Int(result))"
            }
    }
    }
    
    @IBAction func buttonModulus(_ sender: UIButton) {
        _operator = "%"
        n1 = Double(resultOutlet.text!) ?? 0.0
        //resultOutlet.text = resultOutlet.text! + "%"
        resultOutlet.text = ""
       
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "1"
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "2"
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "3"
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "4"
        }
    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "5"
        }
    @IBAction func buttonSix(_ sender: UIButton) {
            resultOutlet.text = resultOutlet.text! + "6"
    }
    @IBAction func buttonSeven(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "7"
    }
    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "8"
    }
    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "9"
    }
    @IBAction func buttonZero(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "0"
    }
    
    @IBAction func buttonPoint(_ sender: UIButton) {
        let a  = resultOutlet.text!
        if(!(a.contains(".")))
            {
            resultOutlet.text = resultOutlet.text! + "."
                    return
        }

}
}
