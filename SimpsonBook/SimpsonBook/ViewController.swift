//
//  ViewController.swift
//  SimpsonBook
//
//  Created by EMRE USTA on 15.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var mySimpson = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Simpsons Object
        
        let hommer = Simpson(nameInit: "Hommer Simpson", jobInit: "Nuclear Safety", imageInit: UIImage(named: "homer")!)
        let marge = Simpson(nameInit: "Marge Simpson", jobInit: "Housewife", imageInit: UIImage(named: "marge")!)
        let bart = Simpson(nameInit: "Bart Simpson", jobInit: "Student", imageInit: UIImage(named: "bart")!)
        let lisa = Simpson(nameInit: "Lisa Simpson", jobInit: "Student", imageInit: UIImage(named: "lisa")!)
        let maggie = Simpson(nameInit: "Maggie Simpson", jobInit: "Baby", imageInit: UIImage(named: "maggie")!)
        
        mySimpson.append(hommer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
}

