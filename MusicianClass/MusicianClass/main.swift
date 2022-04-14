//
//  main.swift
//  MusicianClass
//
//  Created by EMRE USTA on 14.04.2022.
//

import Foundation

let james = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar", typeInit: MusicianType.Vocalist)

james.sing()

let kirk = SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Guitar", typeInit: MusicianType.LeadGuitar)

kirk.sing()
