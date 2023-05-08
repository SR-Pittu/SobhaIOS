//
//  ViewController.swift
//  PrasadamListApp
//
//  Created by Prasadam,Udayasri on 3/3/23.
//

import UIKit

class ListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    var ct = 0
    var grocery = [String: String]()
    var display = "List of grocery items:\n"

    @IBOutlet weak var listTV: UITextView!
    
    @IBOutlet weak var itemTF: UITextField!
    
    
    @IBOutlet weak var itemQuantityTF: UITextField!
    
    
    @IBOutlet weak var itemNumTF: UITextField!
    
    @IBAction func addToList(_ sender: UIButton) {
        var cr = 0
        ct+=1
        grocery["\(itemTF.text!)"] = "\(itemQuantityTF.text!)"
        listTV.text = "\(display)"
        for (key,value) in grocery{
            cr+=1
            listTV.text+="\(cr). \(key) - \(value)\n"
        }
    }
    
    @IBOutlet weak var addBTN: UIButton!
    
    
    @IBAction func clear(_ sender: UIButton) {
        self.itemTF.text = ""
        self.itemQuantityTF.text = ""
        self.itemNumTF.text = ""
        self.listTV.text = "Please enter the item name and quantity, and click on the plus sign to add the item to the grocery list."
    }
  
    @IBOutlet weak var clearBTN: UIButton!
    
    @IBAction func deleteFromList(_ sender: UIButton) {
        var c = 0
        var cs = 0
        listTV.text = "\(display)"
        for (key,values) in grocery
         {
            c+=1
            cs+=1
            if(c == Int(itemNumTF.text!)){
                grocery.removeValue(forKey: key)
                cs-=1
            }
            else {
                listTV.text += "\(cs). \(key) - \(values)"
            }
            
        
           }
        
    }
    
    
    @IBOutlet weak var deleteBTN: UIButton!
    
    
    
}

