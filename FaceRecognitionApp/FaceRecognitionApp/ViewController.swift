//
//  ViewController.swift
//  FaceRecognitionApp
//
//  Created by EMRE USTA on 22.04.2022.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    @IBOutlet weak var resultText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signinButton(_ sender: Any) {
        
        let authContext = LAContext()
        
        var error : NSError?
        
        if authContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            authContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it you?") { success, error in
                DispatchQueue.main.async {
                    if success == true {
                        // success full auth
                        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
                    }
                    else{
                        self.resultText.text = "Error!"
                    }
                }
                
            }
        }
    }
    
}

