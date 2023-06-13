//
//  Cherrim.swift
//  
//
//  Created by Lucca de Mello on 4/2/23.
//

extension PKMNForm {
    // Maybe move to Abilities/FlowerGift.swift?
    public enum FlowerGift {
        public static let overcast = PKMNForm(description: "Overcast")
        public static let sunshine = PKMNForm(description: "Sunshine")
    }
}

extension PKMNSpecies {
    public static let Cherrim = PKMNSpecies(
        id: "Cherrim",
        forms: [.FlowerGift.overcast, .FlowerGift.sunshine]
    )
}
