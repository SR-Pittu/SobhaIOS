//
//  ResultViewController.swift
//  MVCPractice
//
//  Created by Pittu,Sobhareddy on 4/3/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var dstImg = ""
    var dstTxt = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultImage.image = UIImage(named: dstImg)
        resultOt.text = dstTxt
    }
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var resultOt: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
