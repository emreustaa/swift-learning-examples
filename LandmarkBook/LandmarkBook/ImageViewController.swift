//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by EMRE USTA on 14.04.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    
    var selectedLandmarkName = ""
    var selecredLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        labelText.text = selectedLandmarkName
        imageView.image = selecredLandmarkImage
    }
    
    
}
