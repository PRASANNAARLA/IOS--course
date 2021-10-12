//
//  ViewController.swift
//  coordinatesdemo
//
//  Created by student on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageOutletView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = ImageOutletView.frame.minX
        let miny = ImageOutletView.frame.minY
        print(minx, miny)
        
        let maxx = ImageOutletView.frame.maxX
        let maxy = ImageOutletView.frame.maxY
        print(maxx, maxy)
        

        let midx = ImageOutletView.frame.midX
        let midy = ImageOutletView.frame.midY
        print(midx, midy)
        
        let w = ImageOutletView.frame.width
        let h = ImageOutletView.frame.height
        print(w, ",",h)
        
        
        //change the location of the imageview to the bottom right corner
        
        ImageOutletView.frame.origin.x = 314
        ImageOutletView.frame.origin.y = 796
        
        //change the location of the imageview to the bottom left  corner
        
        ImageOutletView.frame.origin.x = 0
        ImageOutletView.frame.origin.y = 796
        
        //change the location of the imageview to the top left  corner
        ImageOutletView.frame.origin.x = 0
        ImageOutletView.frame.origin.y = 0
        //change the location of the imageview to the top right  corner
        ImageOutletView.frame.origin.x = 314
        ImageOutletView.frame.origin.y = 0
        
        //change the location of the imageview to the center of screen
        
        // 2x+100 =414
        //x = 157
        //2y+100=896
        //y=398
        
        
        ImageOutletView.frame.origin.x = 157
        ImageOutletView.frame.origin.y = 398
        
        
        
            
//
//
//
//
//
//        }
        
        
        
        
    }
    

    @IBAction func submitbutton(_ sender: UIButton) {
        
        //when the submit button is clicked //the width and height should be increased by 100
        var w = ImageOutletView.frame.width
        w += 100

        var h = ImageOutletView.frame.height
        h += 100


        //image view must be in the center of the screen
                var x = ImageOutletView.frame.origin.x-50
                var y = ImageOutletView.frame.origin.y-50
            var imageframe = CGRect(x: x, y: y, width: w, height: h)
        //ImageOutletView.frame = imageframe
        
        
        //UIView.animate(withDuration: 1,
                      // animations:{
                       // self.ImageOutletView.frame = imageframe
                        //self.ImageOutletView.alpha = 1
                       //}
                       
                      // )
        
        //for springwithdampimg value starts with 0
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 35,  animations: {
            
            self.ImageOutletView.frame = imageframe
        })
            
            }
            
            
        }
        
    
    


