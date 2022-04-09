//
//  ViewController.swift
//  AlertProject
//
//  Created by EMRE USTA on 9.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordSignUp: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        /*
         
         
         let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert
         )
         
         let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.default) { UIAlertAction in
         // when button clicked
         
         print("button clicked")
         }
         alert.addAction(okButton)
         
         self.present(alert, animated: true,completion: nil)
         
         */
        
        if usernameText.text == ""{
            showAlert(message: "Username not found")
        }else if passwordSignUp.text == ""{
            showAlert(message: "Password not found")
        }else if passwordSignUp.text != passwordAgainText.text{
            showAlert(message: "Passwords do not match")
        }else{
            showAlert(title: "Success",message: "User Ok")
        }
    }
    
    func showAlert(title : String = "Error",message : String){
        let alert = UIAlertController(title : title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

