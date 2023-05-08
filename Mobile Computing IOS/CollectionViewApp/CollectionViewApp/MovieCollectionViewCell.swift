//
//  MovieCollectionViewCell.swift
//  CollectionViewApp
//
//  Created by Pittu,Sobhareddy on 4/20/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    func assignMovies(movie: Movie){
        imageOL.image = movie.image
    }
    
    
    
}
