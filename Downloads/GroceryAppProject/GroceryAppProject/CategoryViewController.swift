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
        cell.imageView?.image = UIImage(named: "bg")
             
             //return a cell
             return cell
    }

    var cgArray = grooceriesArray

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categoryTableView.dataSource = self
        categoryTableView.delegate = self
        self.title = ""
    }


    @IBOutlet weak var categoryTableView: UITableView!
    
    @IBOutlet weak var Search: UITextField!
    
    
    @IBAction func searchBTN(_ sender: UIButton) {
    }
    
    
}

