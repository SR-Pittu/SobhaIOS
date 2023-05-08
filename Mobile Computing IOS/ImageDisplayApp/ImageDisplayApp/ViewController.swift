//
//  ViewController.swift
//  ImageDisplayApp
//
//  Created by Pittu,Sobhareddy on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var discriptionLabelOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        discriptionLabelOL.text = ""
        
    }

    @IBAction func displayImage(_ sender: Any) {
        //Display the image
        
        imageViewOL.image = UIImage(named: "dhoni copy")
        // and display the text in label
        
        discriptionLabelOL.text = "The Coolest Captain of India"
        
    }
    
    
}

