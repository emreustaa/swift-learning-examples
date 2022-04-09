//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by EMRE USTA on 8.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userBirthday: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "savedName")
        let storedBirthday = UserDefaults.standard.object(forKey: "savedBirthday")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }

    }
    
    @IBAction func saveButtonClick(_ sender: Any) {
        
        
        let name = userName.text
        let birthday = userBirthday.text
        
        UserDefaults.standard.set(name, forKey: "savedName")
        UserDefaults.standard.set(birthday, forKey: "savedBirthday")
        //UserDefaults.synchronize(<#T##self: UserDefaults##UserDefaults#>) -> kullanmaya gerek yok
        
        nameLabel.text = "Name: \(name!)"
        birthdayLabel.text = "Birthday: \(birthday!)"
        
    }
    @IBAction func deleteButtonClick(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "savedName")
        let storedBirthday = UserDefaults.standard.object(forKey: "savedBirthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "savedName")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "savedBirthday")
            birthdayLabel.text = "Birthday: "
        }
        
    }
    
}

