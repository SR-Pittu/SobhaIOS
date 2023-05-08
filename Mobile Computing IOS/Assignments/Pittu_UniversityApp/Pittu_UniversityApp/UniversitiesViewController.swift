//
//  ViewController.swift
//  Pittu_UniversityApp
//
//  Created by Pittu,Sobhareddy on 4/18/23.
//

import UIKit


class UniversitiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var universities = universityArray

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return universities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UniversityTableView.dequeueReusableCell(withIdentifier: "domainCell", for: indexPath)
        
        //populate the cell we created
        myCell.textLabel?.text = universities[indexPath.row].domain
    
        //return cell
        return myCell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       


       // let universities = [u1]

        UniversityTableView.dataSource = self
        UniversityTableView.delegate = self
        
    }

    
    @IBOutlet weak var UniversityTableView: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "listsSegue"{
            let destination =  segue.destination as! UniversityListViewController
            
            destination.destUniverity = universities[(UniversityTableView.indexPathForSelectedRow?.row)!]
        }
    }
    
}

