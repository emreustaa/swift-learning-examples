//
//  ViewController.swift
//  InstaCloneFirebase
//
//  Created by EMRE USTA on 25.04.2022.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func signInButton(_ sender: Any) {
        
        if emailLabel.text != "" && passwordLabel.text != "" {
            Auth.auth().signIn(withEmail: emailLabel.text!, password: passwordLabel.text!) { authResult, error in
                if error != nil {
                    self.showAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                }
                else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        } else{
            showAlert(title: "Error", message: "Username / Password mustn't be empty!")
        }
        
        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if emailLabel.text != "" && passwordLabel.text != "" {
            Auth.auth().createUser(withEmail: emailLabel.text!, password: passwordLabel.text!) { authResult, error in
                
                if error != nil {
                    self.showAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                } else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        }
        else{
            showAlert(title: "Error", message: "Username / Password mustn't be empty!")
        }
        
    }
    
    func showAlert(title : String, message : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

