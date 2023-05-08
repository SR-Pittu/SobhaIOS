//
//  PhotosViewController.swift
//  Pittu_Exam03
//
//  Created by Pittu,Sobhareddy on 4/27/23.
//

import UIKit

class PhotosViewController: UIViewController {

    var destSinger :Singers?
    @IBOutlet weak var display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "\((destSinger?.singerName)!)"
        // Do any additional setup after loading the view.
        singerImage.image = UIImage(named: "\((destSinger?.image)!)")
        let a = (destSinger?.description)!
        display.text = "\(a)"
        name.text = "\((destSinger?.singerName)!)"
        
    }
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var singerImage: UIImageView!
    
    @IBAction func AnimateBTN(_ sender: Any) {
        let w = singerImage.frame.width + 100
        
        let h = singerImage.frame.height + 100
        
        let x = singerImage.frame.origin.x - 60
        
        let y = singerImage.frame.origin.y - 60
        
        
        let frame1 = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 50, animations: {
            self.singerImage.frame = frame1
        })
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
