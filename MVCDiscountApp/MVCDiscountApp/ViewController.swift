//
//  ViewController.swift
//  MVCDiscountApp
//
//  Created by Pittu,Sobhareddy on 3/30/23.
//

import UIKit

class ViewController: UIViewController {

    var priceAfterDiscount = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountOutlet: UITextField!
    
    
    @IBAction func DiscountCalculation(_ sender: UIButton) {
        
        //read the text from both amoun and discount and change to double
        
        let amount = Double(AmountOutlet.text!)
        
       // print(amount!)
        
        let discount = Double(DiscountOutlet.text!)
        
        //print(discount!)
        
        priceAfterDiscount = (amount! - (amount!*discount!)/100)
        
       // print(priceAfterDiscount)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //create a transistion
        
        let transistion = segue.identifier
        
        //create destination
        
        if transistion == "ResultSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.destinationAmount = AmountOutlet.text!
            
            destination.destinationDiscount = DiscountOutlet.text!
            
            destination.destinationResult = String(priceAfterDiscount)
        }
    }
    
    
}

