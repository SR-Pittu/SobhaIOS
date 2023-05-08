//
//  WishListViewController.swift
//  GroceryAppProject
//
//  Created by Nalluri, Srividya on 4/25/23.
//

import UIKit

class WishListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wLish.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
              var cell = wishListTableView.dequeueReusableCell(withIdentifier:  "wishListCell", for: indexPath)
              
              //populate a cell
        cell.textLabel?.text = wLish[indexPath.row].itemName
        cell.imageView?.image = UIImage(named:  wLish[indexPath.row].itemImage)
              
              //return a cell
              return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        wishListTableView.delegate = self
        wishListTableView.dataSource = self
    }
    var wLish = wishList
    @IBOutlet weak var wishListTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let addAction = UIContextualAction(style: .normal, title: "Add to Cart") { [self] (action, view, completionHandler) in
            // Retrieve the data associated with the selected row
            let selectedData = wLish[indexPath.row]
            
            // Remove the selected row from the wishListTableView
            wLish.remove(at: indexPath.row)
            wishList.remove(at: indexPath.row)
            wishListTableView.deleteRows(at: [indexPath], with: .fade)
            
            // Insert the retrieved data into the carTableView data source
            cartItems.append(selectedData)
            
            // Insert a new row into the carTableView
           let newIndexPath = IndexPath(row: cartItems.count - 1, section: 0)
            
            
            // Reload both table views to reflect the updated data
            wishListTableView.reloadData()
            let newData = selectedData // updated data
            NotificationCenter.default.post(name: Notification.Name("MyDataUpdatedNotification"), object: newData)

            
            completionHandler(true)
        }
        addAction.backgroundColor = .systemGreen
        
        let configuration = UISwipeActionsConfiguration(actions: [addAction])
        return configuration
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
