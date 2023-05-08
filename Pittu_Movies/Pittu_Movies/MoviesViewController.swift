//
//  MoviesViewController.swift
//  Pittu_Movies
//
//  Created by Pittu,Sobhareddy on 4/28/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let a = (desMovies?.movies.count)!
        return a
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        //populate the cell we created
        myCell.assignMovies(movie: ((desMovies?.movies[indexPath.row])!))
    
        //return cell
        return myCell
    }
    
    
    var desMovies : Genre?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "\((desMovies?.category)!)"

        // Do any additional setup after loading the view.
        movieCollectionView.dataSource=self
        movieCollectionView.delegate=self
        movieNameLabel.text = "Movie Name: "
        movieCastLabel.text = "Cast: "
        moviePlotLabel.text = "Plot: "
        movieYearLabel.text = "Movie Year Released: "
        movieRatingLabel.text = "Movie Rating: "
        movieBoxOfficeLabel.text = "Box Office Collection:"
    }
    

    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text = "Movie Name: \((desMovies?.movies[indexPath.row].title)!)"
        movieYearLabel.text = "Movie Year Released: \((desMovies?.movies[indexPath.row].releasedYear)!)"
        movieRatingLabel.text = "Movie Rating: \((desMovies?.movies[indexPath.row].movieRating)!)"
        movieBoxOfficeLabel.text = "Box Office Collection: \((desMovies?.movies[indexPath.row].boxOffice)!)"
        moviePlotLabel.text = "Plot: \n\((desMovies?.movies[indexPath.row].moviePlot)!)"
        movieCastLabel.text = "Cast: \n\((desMovies?.movies[indexPath.row].cast.joined(separator:", "))!)"
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
