//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by Pittu,Sobhareddy on 4/20/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionOL.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        //populate the cell we created
        myCell.assignMovies(movie: movies[indexPath.row])
    
        //return cell
        return myCell
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
        collectionOL.delegate = self
        collectionOL.dataSource = self
        
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOL.text = "Movie Name: \(movies[indexPath.row].title)"
        yearOL.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOL.text = "Rating: \(movies[indexPath.row].movieRating)"
        boxOfficeOL.text = "Box Office: \(movies[indexPath.row].boxOffice)"
        
    }

    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearOL: UILabel!
    
    @IBOutlet weak var ratingOL: UILabel!
    
    
    @IBOutlet weak var boxOfficeOL: UILabel!
    
    
    @IBOutlet weak var collectionOL: UICollectionView!
    
}

