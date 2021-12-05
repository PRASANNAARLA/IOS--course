//
//  ResultViewController.swift
//  Arla_ConvertTemperature
//
//  Created by student on 11/5/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var fahreheitLabel: UILabel!
    
    @IBOutlet weak var kelvinLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    var temp : Double?
    var img = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        var tempInFahrenheit =  (temp! * 9/5) + 32
        tempInFahrenheit = tempInFahrenheit * 100
        tempInFahrenheit = (tempInFahrenheit.rounded())/100
        fahreheitLabel.text = "Temperature in Fahrenheit : \(tempInFahrenheit)"
        kelvinLabel.text = "Temperature in Kelvin : \(temp! + 273.15)"
        
        if tempInFahrenheit < 5{
            textLabel.text = "It is very freezing outside."
            img = 1
        }
        else if tempInFahrenheit >= 5 && tempInFahrenheit <= 59 {
            textLabel.text = "It is too cold outside."
            img = 2
        }
        else if tempInFahrenheit >= 60 && tempInFahrenheit <= 77{
            textLabel.text = "The weather is pleasant outside."
            img = 3
        }
        else if tempInFahrenheit >= 78 && tempInFahrenheit <= 95{
            textLabel.text = "It is hot outside."
            img = 4
        }
        else{
            textLabel.text = "It is burning outside."
            img = 5
        }
        updateImageView()
    }
    
    func updateImageView(){
        imageView.image = UIImage(named: "img\(img)")
        let original = imageView.frame
        let widthA: CGFloat = 10
        let heightB: CGFloat = 10
        let newFrame = CGRect(
        x: imageView.frame.origin.x + widthA,
        y: imageView.frame.origin.y + heightB,
        width: imageView.frame.width - widthA,
        height: imageView.frame.height - heightB)
        imageView.frame = newFrame
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 1.0,  animations: {
            self.imageView.frame = original
        })
    }
    

}
