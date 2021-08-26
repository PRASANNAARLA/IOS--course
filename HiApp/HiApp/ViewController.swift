//
//  ViewController.swift
//  HiApp
//
//  Created by Arla,Prasanna on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myname: UITextField!
    @IBOutlet weak var mylabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        var myname = myname.text!
                //Assign it to DisplayLabel
                mylabel.text = "Hi, \(myname)!"
                
            }
            

        }
