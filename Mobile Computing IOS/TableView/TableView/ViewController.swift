//
//  ViewController.swift
//  TableView
//
//  Created by Pittu,Sobhareddy on 4/13/23.
//

import UIKit

class Product{
    
    var name: String?
    var category: String?
    
    init(name: String, category: String ) {
        self.name = name
        self.category = category
    }
    
}//product class ended

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //expects to return number of products
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a cell
        let myCell = tableViewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //populate the cell we created
        myCell.textLabel?.text = products[indexPath.row].name
    
        //return cell
        return myCell
    }
    
    
    //empty array of type Product
    var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let p1 = Product(name: "McBookAir", category: "Laptop")
        products.append(p1)
        
        let p2 = Product(name: "iPhone", category: "Phone")
        products.append(p2)
        
        let p3 = Product(name: "iPad", category: "Tablet")
        products.append(p3)
        
        let p4 = Product(name: "AirPods", category: "Accessories")
        products.append(p4)
        
        let p5 = Product(name: "iMac", category: "Computer")
        products.append(p5)
        
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if(transition=="detailsSegue"){
            let destination = segue.destination as! ResultViewController
            //Ensure to send the product of selected row
            destination.product = products[(tableViewOutlet.indexPathForSelectedRow?.row)!]
            
        }
    }
    
}

