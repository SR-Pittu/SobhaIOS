//
//  ResultViewController.swift
//  Pittu_Exam02
//
//  Created by Pittu,Sobhareddy on 4/11/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var destImg = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        reslutImg.image = UIImage(named: destImg)
    }
    
    @IBOutlet weak var reslutImg: UIImageView!
    
    @IBAction func BottomRightCorner(_ sender: UIButton) {
        
        
        reslutImg.frame.origin.x = 414-300
        reslutImg.frame.origin.y = 896-300
        
    }
    
    
 
    @IBAction func TopLeftCorner(_ sender: UIButton) {
        reslutImg.frame.origin.x = 0
        reslutImg.frame.origin.y = 0
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
