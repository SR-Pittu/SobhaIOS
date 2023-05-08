//
//  ViewController.swift
//  Pittu_Movies
//
//  Created by Pittu,Sobhareddy on 4/28/23.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genreArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = genreTableView.dequeueReusableCell(withIdentifier:  "sectionCell", for: indexPath)
                
                //populate a cell
        cell.textLabel?.text = genreArray[indexPath.row].category
                
                //return a cell
                return cell
    }
    

    var genreArray = gArray
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.dataSource = self
        genreTableView.delegate = self
        self.title = "Movies App"
    }

    @IBOutlet weak var genreTableView: UITableView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if(transition=="movieSegue"){
            let destination = segue.destination as! MoviesViewController
            destination.desMovies = genreArray[(genreTableView.indexPathForSelectedRow?.row)!]
            
        }
    }
    
}

