//
//  DetailViewController.swift
//  SimpsonBook
//
//  Created by EMRE USTA on 15.04.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        detailImageView.image = selectedSimpson?.image
    }
    
}
