//
//  ViewController.swift
//  MultipleControllersDemo
//
//  Created by student on 10/19/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var AmountOutlet: UITextField!
    @IBOutlet weak var DiscRate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateButton(_ sender: Any) {
        
        //Read the data from teh etxtboxes
        let amount = Double(AmountOutlet.text!)
        print(amount!)
        let discRate = Double(DiscRate.text!)
        print(discRate!)
        
        var priceAfterDiscount = amount! - (amount!*discRate!)/100
        print( priceAfterDiscount)
        
        
    }
    
   // override func prepare(for segue:UIStoryboard, sender:Any?){
     //let transition == "ResultSegue"
    //{
    //assign
    
    }
//        
        
        
    
    
    
    



