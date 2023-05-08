//
//  ViewController.swift
//  AnimationsDemo
//
//  Created by Pittu,Sobhareddy on 3/28/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakeMeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    @IBOutlet weak var imageOutlet: UIImageView!

    override func viewDidAppear(_ animated: Bool) {
        imageOutlet.frame.origin.x = view.frame.maxX
        
        happyOutlet.frame.origin.x = view.frame.width
        
        sadOutlet.frame.origin.x = view.frame.width
        
        angryOutlet.frame.origin.x = view.frame.width
        
        shakeMeOutlet.frame.origin.x = view.frame.width
        
    }
    
    func updateAndAnimate(_ imageName: String){
        UIView.animate(withDuration: 1, animations: {self.imageOutlet.alpha = 0})
        
        UIView.animate(withDuration: 1, delay: 0.5, animations: {self.imageOutlet.alpha = 1
            self.imageOutlet.image = UIImage(named: imageName)
        })
    }
    
    @IBAction func happyBTN(_ sender: UIButton) {
        updateAndAnimate("happy")
    }
    
    @IBAction func sadBTN(_ sender: Any) {
        updateAndAnimate("sad")
    }
    
    @IBAction func shakeMeBTN(_ sender: Any) {
        
        let w = imageOutlet.frame.width + 60
        
        let h = imageOutlet.frame.height + 60
        
        let x = imageOutlet.frame.origin.x - 40
        
        let y = imageOutlet.frame.origin.y - 40
        
        
        let frame1 = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 50, animations: {
            self.imageOutlet.frame = frame1
        })
        
        
        
        
    }
    
    @IBAction func angryBTN(_ sender: Any) {
        updateAndAnimate("angry")
    }
    
    @IBAction func showBTN(_ sender: Any) {
        UIView.animate(withDuration: 3, animations: {
            self.imageOutlet.center.x = self.view.frame.maxX
            
            self.happyOutlet.center.x = self.view.frame.minX
            
            self.sadOutlet.center.x = self.view.frame.maxX
            
            self.angryOutlet.center.x = self.view.frame.minX
            
            self.shakeMeOutlet.center.x = self.view.frame.maxX
           // self.shakeMeOutlet.center.x = self.view.
        })
        
        showOutlet.isEnabled = false
        
    }
    
    
    
}

