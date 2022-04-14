//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by EMRE USTA on 14.04.2022.
//

import Foundation

class SuperMusician : Musicians {
    
    func sing2(){
        print("enter night")
    }
    
    override func sing() {
        super.sing()
        print("exit light")
    }

}
