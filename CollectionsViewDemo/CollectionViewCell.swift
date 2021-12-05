//
//  CollectionViewCell.swift
//  CollectionsViewDemo
//
//  Created by student on 11/11/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    
    
    func assignMovie(with movie: Movie){
        ImageViewOutlet.image = movie.image
        
        
    }
    
    
}
