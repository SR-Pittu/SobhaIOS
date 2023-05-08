//
//  ItemViewController.swift
//  GroceryAppProject
//
//  Created by Donthireddy, Lokeshreddy on 4/25/23.
//

import UIKit

class ItemViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (destCategory?.items.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = itemCollection.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCollectionViewCell
        //populate the cell we created
        myCell.assignMovies(item: ((destCategory?.items[indexPath.row])!))
    
        //return cell
        return myCell
    }
    var a  = 0
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
       
        a = indexPath.row
        display.text = "Item Name: \((destCategory?.items[indexPath.row].itemName)!)\n\nItem Quantity : \((destCategory?.items[indexPath.row].itemQuantity)!)\n\nItem Details: \((destCategory?.items[indexPath.row].itemdetails)!)\n\nItem Price: $\((destCategory?.items[indexPath.row].price)!)"
        
    }

    @IBOutlet weak var display: UITextView!
    
    var destCategory:Grocery?
   
    
    @IBOutlet weak var itemCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        itemCollection.delegate = self
        itemCollection.dataSource = self
    }
    
    @IBAction func AddToWishList(_ sender: UIButton) {
        wishList.append((destCategory?.items[a])!)
    }
    
    @IBAction func AddCart(_ sender: UIButton) {
        cartItems.append((destCategory?.items[a])!)
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
