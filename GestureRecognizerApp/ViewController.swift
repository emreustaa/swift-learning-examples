//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by EMRE USTA on 10.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelIstanbul: UILabel!
    @IBOutlet weak var imageIstanbul: UIImageView!
    var isIstanbul = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageIstanbul.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageIstanbul.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic(){
        
        
        if(isIstanbul){
            imageIstanbul.image = UIImage(named: "galata.jpg")
            labelIstanbul.text = "Galata"
            isIstanbul = false
        }else{
            imageIstanbul.image = UIImage(named: "istanbul.jpg")
            labelIstanbul.text = "İstanbul"
            isIstanbul = true
        }
        
    }
    
}

