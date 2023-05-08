//
//  CartViewController.swift
//  GroceryAppProject
//
//  Created by Nalluri, Srividya on 4/25/23.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
              var cell = cartTableView.dequeueReusableCell(withIdentifier:  "cartCell", for: indexPath)
              
              //populate a cell
        cell.textLabel?.text = cartList[indexPath.row].itemName
        cell.imageView?.image = UIImage(named:  cartList[indexPath.row].itemImage)
              
              //return a cell
              return cell
    }
    func updateTableView() {
            // reload table view data using dataSource.wishListData
            cartTableView.reloadData()
        }
    
var cartList = cartItems
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cartTableView.delegate = self
        cartTableView.dataSource = self
       self.cartTableView.reloadData()
    
    }
    
    @IBOutlet weak var cartTableView: UITableView!
    
    


    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Remove the item from the data source
            cartList.remove(at: indexPath.row)
            cartItems.remove(at: indexPath.row)
            // Update the table view
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
