//
//  ViewController.swift
//  ProblemApp
//
//  Created by EMRE USTA on 6.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateWeight(_ sender: Any) {
        
        resultLabel.text = String(Int(weightText.text!)! * 10)
    }
    
}

