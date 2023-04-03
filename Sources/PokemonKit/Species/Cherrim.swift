//
//  Cherrim.swift
//  
//
//  Created by Lucca de Mello on 4/2/23.
//

extension PKMNForm {
    // Maybe move to Abilities/FlowerGift.swift?
    enum FlowerGift {
        static let overcast = PKMNForm(description: "Overcast")
        static let sunshine = PKMNForm(description: "Sunshine")
    }
}

extension PKMNSpecies {
    static let Cherrim = PKMNSpecies(
        id: "Cherrim",
        forms: [.FlowerGift.overcast, .FlowerGift.sunshine]
    )
}
