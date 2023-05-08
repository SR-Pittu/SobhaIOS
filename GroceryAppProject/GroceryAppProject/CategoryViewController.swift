//
//  ViewController.swift
//  GroceryAppProject
//
//  Created by Pittu,Sobhareddy on 4/19/23.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cgArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = categoryTableView.dequeueReusableCell(withIdentifier:  "categoryCell", for: indexPath)
             
             //populate a cell
        cell.textLabel?.text = cgArray[indexPath.row].category
       cell.imageView?.image = UIImage(named: "\(cgArray[indexPath.row].img)")
//        let imageView = UIImageView(image: UIImage(named: (cgArray[indexPath.row].img)))
//           cell.accessoryView = imageView
             //return a cell
             return cell
    }

    var cgArray = grooceriesArray

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categoryTableView.dataSource = self
        categoryTableView.delegate = self
        self.title = "Grocery"
        //srchBTN.isEnabled = false
    }
  


    @IBOutlet weak var categoryTableView: UITableView!
    
//    @IBOutlet weak var Search: UITextField!
//
//
//    @IBAction func searchBTN(_ sender: UIButton) {
//    }
//
//    @IBAction func searchBarChanged(_ sender: UITextField) {
//          //Read the data from the text field
//          var textEnterd = Search.text!;
//          //Consider only the last character by calling textEntered.last and trimming the white spaces.
//          textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
//        Search.text = textEnterd
//
//          //Check whether the entered text is empty or not to enable check button.
//          if textEnterd.isEmpty{
//              srchBTN.isEnabled = false
//          }
//          else{
//              srchBTN.isEnabled = true
//          }
//
//      }
//
//    @IBOutlet weak var srchBTN: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if(transition=="collectionSeague"){
            let destination = segue.destination as! ItemViewController
            destination.destCategory = cgArray[(categoryTableView.indexPathForSelectedRow?.row)!]
            
        }
    }
}

