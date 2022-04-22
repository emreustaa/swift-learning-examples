//
//  ViewController.swift
//  DarkModeApp
//
//  Created by EMRE USTA on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.topItem?.title = "Dark Mode App"
        
        //overrideUserInterfaceStyle = .light
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle =  traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }
        else{
            changeButton.tintColor = UIColor.blue
        }
    }

    @IBAction func changeButtonClick(_ sender: Any) {
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle =  traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }
        else{
            changeButton.tintColor = UIColor.blue
        }
    }
}

