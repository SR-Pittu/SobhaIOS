//
//  ResultViewController.swift
//  MVCDiscountApp
//
//  Created by Pittu,Sobhareddy on 3/30/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    //place to store the values
    
    var destinationAmount = ""
    
    var destinationDiscount = ""
    
    var destinationResult = ""


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        DisplayAmountOutlet.text! += "$"+destinationAmount
        
        DisplayDiscountOutlet.text! += "$"+destinationDiscount
        
        ResutOutlet.text! += "$"+destinationResult
    }
    
    
    @IBOutlet weak var DisplayAmountOutlet: UILabel!
    
    @IBOutlet weak var DisplayDiscountOutlet: UILabel!
    
    @IBOutlet weak var ResutOutlet: UILabel!
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
