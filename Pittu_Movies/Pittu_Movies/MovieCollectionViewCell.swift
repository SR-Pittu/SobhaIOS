//
//  MovieCollectionViewCell.swift
//  Pittu_Movies
//
//  Created by Pittu,Sobhareddy on 4/28/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var movieImg: UIImageView!
    
    func assignMovies(movie: Movie){
        movieImg.image = movie.image
    }
    
}
