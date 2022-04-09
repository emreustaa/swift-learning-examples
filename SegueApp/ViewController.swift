//
//  ViewController.swift
//  SegueApp
//
//  Created by EMRE USTA on 8.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad çağrıldı")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear çağrıldı.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çağrıldı.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear çağrıldı")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear çağrıldı.")
    }
    @IBAction func nextButtonClick(_ sender: Any) {
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

