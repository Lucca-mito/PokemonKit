//
//  Form.swift
//  
//
//  Created by Lucca de Mello on 4/2/23.
//

public struct PKMNForm: CustomStringConvertible {
    public let description: String
}

// Standard Forms.
extension PKMNForm {
    /// Represents the regular form of a Pokémon with form differences, such as a non-Alolan Raichu. Also represents the only form of a Pokémon with no form differences (other than gender and shininess), such as a Bulbasaur.
    public static let regular = PKMNForm(description: "")
    
    /// For Pokémon with a single Mega Evolution.
    public static let mega = PKMNForm(description: "Mega Evolution")
    
    /// For Pokémon with two Mega Evolutions.
    public enum Mega {
        public static let x = PKMNForm(description: "Mega Evolution X")
        public static let y = PKMNForm(description: "Mega Evolution Y")
    }
    
    public static let gigantamax = PKMNForm(description: "Gigantamax")
    
    public enum Regional {
        public static let alolan = PKMNForm(description: "Alolan")
        public static let galarian = PKMNForm(description: "Galarian")
        public static let hisuian = PKMNForm(description: "Hisuian")
        public static let paldean = PKMNForm(description: "Paldean")
    }
}
