//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by EMRE USTA on 6.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        result = 0
    }
    
    
    
    
    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber + secondNumber
                
                resultLabel.text = String(result)
            }
        }
        
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber - secondNumber
                
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multiplyClick(_ sender: Any) {
        
        
        if let firstNumber = Int(firstText.text!){
            
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber * secondNumber
                
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func devideClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber / secondNumber
                
                resultLabel.text = String(result)
            }
        }
    }
    
}

