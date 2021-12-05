//
//  ViewController.swift
//  CollectionsViewDemo
//
//  Created by student on 11/11/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell; -CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: movie, for: <#T##IndexPath#>)as! MovieCollectionViewCell
        cell.assignMovie(with:movies[indexPath.row])
        return cell
        
    }
    
    
    func fucn func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        assignMovieDetails(index:IndexPath)
    }
    
    
    func assignMovieDetails(index:IndexPath){
        titleOutlet.text = "Movie
        title: \(movies[index.row].title)"
        
    }
    
    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    @IBOutlet weak var titleOutlet: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }


}

