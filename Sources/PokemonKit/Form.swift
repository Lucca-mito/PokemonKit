//
//  Form.swift
//  
//
//  Created by Lucca de Mello on 4/2/23.
//

struct PKMNForm: CustomStringConvertible {
    let description: String
}

// Standard Forms.
extension PKMNForm {
    /// Represents the regular form of a Pokémon with form differences, such as a non-Alolan Raichu. Also represents the only form of a Pokémon with no form differences (other than gender and shininess), such as a Bulbasaur.
    static let regular = PKMNForm(description: "")
    
    /// For Pokémon with a single Mega Evolution.
    static let mega = PKMNForm(description: "Mega Evolution")
    
    /// For Pokémon with two Mega Evolutions.
    enum Mega {
        static let x = PKMNForm(description: "Mega Evolution X")
        static let y = PKMNForm(description: "Mega Evolution Y")
    }
    
    static let gigantamax = PKMNForm(description: "Gigantamax")
    
    enum Regional {
        static let alolan = PKMNForm(description: "Alolan")
        static let galarian = PKMNForm(description: "Galarian")
        static let hisuian = PKMNForm(description: "Hisuian")
        static let paldean = PKMNForm(description: "Paldean")
    }
}
