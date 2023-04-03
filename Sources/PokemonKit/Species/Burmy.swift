//
//  Burmy.swift
//  
//
//  Created by Lucca de Mello on 4/2/23.
//

extension PKMNForm {
    enum Cloak {
        static let plant = PKMNForm(description: "Plant Cloak")
        static let sandy = PKMNForm(description: "Sandy Cloak")
        static let trash = PKMNForm(description: "Trash Cloak")
    }
}

extension PKMNSpecies {
    static let Burmy = PKMNSpecies(
        id: "Burmy",
        forms: [.Cloak.plant, .Cloak.sandy, .Cloak.trash]
    )
}
