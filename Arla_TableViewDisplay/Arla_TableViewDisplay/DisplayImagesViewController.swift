//
//  DisplayImagesViewController.swift
//  Arla_TableViewDisplay
//
//  Created by Arla on 11/19/21.
//

import UIKit

class DisplayImagesViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var img = ""
    var item = ""
    var desc = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(img)
        imageView.image = UIImage(named: "\(img)")
        
    }
    
    @IBAction func getInfo(_ sender: Any) {
        displayLabel.text = desc
        
    }
    
    

}
