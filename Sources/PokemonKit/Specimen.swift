//
//  Specimen.swift
//  
//
//  Created by Lucca de Mello on 4/2/23.
//

struct PKMNSpecimen {
    var species: PKMNSpecies
    var nickname: String
    var form: PKMNForm?
}

let myBurmy = PKMNSpecimen(species: .Burmy, nickname: "Bruh", form: .Cloak.plant)
