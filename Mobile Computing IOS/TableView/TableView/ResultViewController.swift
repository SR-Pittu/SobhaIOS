//
//  ResultViewController.swift
//  TableView
//
//  Created by Pittu,Sobhareddy on 4/13/23.
//

import UIKit

class ResultViewController: UIViewController {
 
    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displyLbl.text = ""
        displyLbl.text = "The \((product?.name)!) is of \((product?.category)!) category."
        navigationItem.backBarButtonItem?.title = "hohoho"

    }
    
    @IBOutlet weak var displyLbl: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
