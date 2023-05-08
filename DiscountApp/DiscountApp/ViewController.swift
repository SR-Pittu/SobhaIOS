//
//  ViewController.swift
//  DiscountApp
//
//  Created by Pittu,Sobhareddy on 2/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input1Outlet: UITextField!
    
    
    @IBOutlet weak var input2Outlet: UITextField!
    
    @IBOutlet weak var outputOtlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        
        let input1 = Double(input1Outlet.text!)
        let input2 = Double(input2Outlet.text!)
        
        let amount = input1! - (input1! * input2!/100)
        
        outputOtlet.text = "Price after discount :$\(amount)"
        
    }
    
}

