//
//  ItemCollectionViewCell.swift
//  GroceryAppProject
//
//  Created by Pittu,Sobhareddy on 5/3/23.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
    func assignMovies(item: Items){
        itemImage.image = UIImage(named: item.itemImage)
        
    }
    
}
