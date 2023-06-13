//
//  Burmy.swift
//  
//
//  Created by Lucca de Mello on 4/2/23.
//

extension PKMNForm {
    public enum Cloak {
        public static let plant = PKMNForm(description: "Plant Cloak")
        public static let sandy = PKMNForm(description: "Sandy Cloak")
        public static let trash = PKMNForm(description: "Trash Cloak")
    }
}

extension PKMNSpecies {
    public static let Burmy = PKMNSpecies(
        id: "Burmy",
        forms: [.Cloak.plant, .Cloak.sandy, .Cloak.trash]
    )
}
