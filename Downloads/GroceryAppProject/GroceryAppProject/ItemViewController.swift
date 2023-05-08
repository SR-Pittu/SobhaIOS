//
//  ItemViewController.swift
//  GroceryAppProject
//
//  Created by Donthireddy, Lokeshreddy on 4/25/23.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var display: UITextView!
    
    
    @IBOutlet weak var itemCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddToWishList(_ sender: UIButton) {
    }
    
    @IBAction func AddCart(_ sender: UIButton) {
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
