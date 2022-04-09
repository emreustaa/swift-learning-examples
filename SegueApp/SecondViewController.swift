//
//  SecondViewController.swift
//  SegueApp
//
//  Created by EMRE USTA on 8.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
            
        nameLabel.text = myName
        
        // Do any additional setup after loading the view.
    }
    

}
