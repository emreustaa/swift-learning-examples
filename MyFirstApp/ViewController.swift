//
//  ViewController.swift
//  MyFirstApp
//
//  Created by EMRE USTA on 17.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mySecondLabel: UILabel!
    
    @IBAction func changeButtonClicked(_ sender: Any) {
        
        imageView.image = UIImage(named: "seanpaul")
        
    }
}

