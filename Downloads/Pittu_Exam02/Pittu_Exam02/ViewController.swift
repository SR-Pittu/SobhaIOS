//
//  ViewController.swift
//  Pittu_Exam02
//
//  Created by Pittu,Sobhareddy on 4/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Australia    Emu
//    United States    Bald Eagle
//    Canada    Canada Jay
//    New Zealand    Kiwi
//    South Korea    Korean Magpie

    let arrayCounty = ["Australia" ,"United States", "Canada", "New Zealand","South Korea"]
    let imageArray = ["emu","Bald_eagle","jay","kiwi","magpie"]
    var a = 0
    var img = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //ResultSegue
        displayBDDtn.isHidden = true
       // displayImage.isHidden = true
        animation.isHidden = true
    }

    @IBAction func TextField(_ sender: UITextField) {
        
       // let  a = txt.text!
    
        if(txt.text!.isEmpty){
            displayBDDtn.isHidden = true
        }
        else{
            displayBDDtn.isHidden = false
        }
    }
    
    @IBAction func displayBirdBtn(_ sender: UIButton) {
        let enteredText = txt.text!.trimmingCharacters(in: .whitespaces)
        for arr in arrayCounty{
            if( arr == enteredText){
                img = imageArray[a]
                displayImage.isHidden = false
               
                displayImage.image = UIImage(named: img)
                animation.isHidden = false
            }
            a+=1
        }
        a = 0
        txt.text = ""
    }
    
    @IBOutlet weak var displayBDDtn: UIButton!
    
    @IBOutlet weak var txt: UITextField!
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var animation: UIButton!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "ResultSegue"{
            let destination = segue.destination as! ResultViewController
            destination.destImg = img
        }
        
    }
    
}

