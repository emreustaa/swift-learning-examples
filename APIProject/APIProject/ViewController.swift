//
//  ViewController.swift
//  APIProject
//
//  Created by EMRE USTA on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cadText: UILabel!
    @IBOutlet weak var chfText: UILabel!
    @IBOutlet weak var gbpText: UILabel!
    @IBOutlet weak var jpyText: UILabel!
    @IBOutlet weak var tryText: UILabel!
    @IBOutlet weak var usdText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getRatesButton(_ sender: Any) {
        
        // 1) Request & Response
        // 2) Response & Data
        // 3) Parsing & JSON Serialization
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=4541d154a68abe4825d3f4a3d327e098")
        
        let session = URLSession.shared
        
        // Closure
        
        let task = session.dataTask(with: url!) { (data, response, error )in
            if error != nil{
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }else{
                if data != nil{
                    
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,Any>
                        
                        // ASYNC
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String: Any]{
                                
                                if let cad = rates["CAD"] as? Double{
                                    self.cadText.text = "CAD: \(cad)"
                                }
                                
                                if let chf = rates["CHF"] as? Double{
                                    self.chfText.text = "CHF: \(chf)"
                                }
                                
                                if let gbp = rates["GBP"] as? Double{
                                    self.gbpText.text = "GBP: \(gbp)"
                                }
                                
                                if let jpy = rates["JPY"] as? Double{
                                    self.jpyText.text = "JPY: \(jpy)"
                                }
                                
                                if let usd = rates["USD"] as? Double{
                                    self.usdText.text = "USD: \(usd)"
                                }
                                
                                if let turkish = rates["TRY"] as? Double{
                                    self.tryText.text = "TRY: \(turkish)"
                                }
                            }
                        }
                        
                    }
                    catch{
                        print("error")
                    }
                }
            }
        }
        task.resume()
    }
}
