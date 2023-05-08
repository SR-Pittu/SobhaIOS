//
//  UniversityInfoViewController.swift
//  Pittu_UniversityApp
//
//  Created by Pittu,Sobhareddy on 4/18/23.
//

import UIKit

class UniversityInfoViewController: UIViewController {
    
    var destUniArray = UniversityList()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title =  "\(destUniArray.collegeName)"
        imageOT.image = UIImage(named: destUniArray.collegeImage)
        textOT.isHidden = true
        
    }
    
    @IBOutlet weak var imageOT: UIImageView!
    
    @IBAction func clickMeBTN(_ sender: UIButton) {
        textOT.isHidden = false
        textOT.text = "\(destUniArray.collegeInfo)"
        
    }
    
    
    @IBOutlet weak var textOT: UITextView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
