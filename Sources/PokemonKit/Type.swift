//
//  Type.swift
//
//
//  Created by Lucca de Mello on 4/1/23.
//

/// One of the 18 standard Pokémon Types, or a custom Type.
struct PKMNType: Identifiable, Hashable {
    /// The unique name identifying this Type.
    let id: String
    
    private let effectivenessAgainst: [ID: PKMNTypeEffectiveness]
    
    /// This field is only used by custom Types. It's useful, for example, to make a standard Type super effective against a custom Type.
    private let effectivenessOf: [ID: PKMNTypeEffectiveness]
    
    init(id: ID,
         effectivenessAgainst: [ID: PKMNTypeEffectiveness] = [:],
         effectivenessOf: [ID: PKMNTypeEffectiveness] = [:]
    ) {
        self.id = id
        self.effectivenessAgainst = effectivenessAgainst
        self.effectivenessOf = effectivenessOf
    }
    
    /// This initializer is more convenient than ``init(id:effectivenessAgainst:effectivenessOf)`` since it does not require getting the IDs of any Types. However, this initializer cannot be used to declare multiple Types that form a cycle. To do this, use ``init(id:effectivenessAgainst:effectivenessOf)`` instead.
    init(id: ID,
         effectivenessAgainstSelf: PKMNTypeEffectiveness = .notVeryEffective,
         effectivenessAgainstOtherTypes: [Self: PKMNTypeEffectiveness] = [:],
         effectivenessOfOtherTypes: [Self: PKMNTypeEffectiveness] = [:]
    ) {
        // Convert [PKMNType: PKMNTypeEffectiveness] to [ID: PKMNTypeEffectiveness]
        var effectivenessAgainst =
            Dictionary(uniqueKeysWithValues: effectivenessAgainstOtherTypes.map {(type, effectiveness) in (type.id, effectiveness)})
        
        effectivenessAgainst.updateValue(effectivenessAgainstSelf, forKey: id)
        
        let effectivenessOf =
            Dictionary(uniqueKeysWithValues: effectivenessOfOtherTypes.map {(type, effectiveness) in (type.id, effectiveness)})
        
        self.init(id: id, effectivenessAgainst: effectivenessAgainst, effectivenessOf: effectivenessOf)
    }
    
    func effectiveness(against defendingType: Self) -> PKMNTypeEffectiveness {
        switch (effectivenessAgainst[defendingType.id], defendingType.effectivenessOf[id]) {
            
        case (.some(let effectiveness), nil), (nil, .some(let effectiveness)):
            return effectiveness
            
        case (.some(let effectiveness1), .some(let effectiveness2)):
            precondition(effectiveness1 == effectiveness2, """
                         Type effectiveness conflict: Type "\(self.id)" declares \(effectiveness1.rawValue)x effectiveness against Type "\(defendingType.id)", but Type "\(defendingType.id) declares \(effectiveness2.rawValue)x effectiveness from Type \(self.id)."
                         """)
            return effectiveness1
            
        case (nil, nil):
            return .regular
        }
    }
}

fileprivate extension String {
    static let grassId = "Grass"
    static let fireId = "Fire"
    static let waterId = "Water"
    static let darkId = "Dark"
}

extension PKMNType {
    /// The Grass Type.
    static let grass = PKMNType(
        id: .grassId,
        effectivenessAgainst: [
            .grassId: .notVeryEffective,
            .fireId: .notVeryEffective,
            .waterId: .superEffective
        ]
    )
    
    /// The Fire Type.
    static let fire = PKMNType(
        id: .fireId,
        effectivenessAgainst: [
            .grassId: .superEffective,
            .fireId: .notVeryEffective,
            .waterId: .notVeryEffective
        ]
    )
    
    /// The Water Type.
    static let water = PKMNType(
        id: .waterId,
        effectivenessAgainst: [
            .grassId: .notVeryEffective,
            .fireId: .superEffective,
            .waterId: .notVeryEffective
        ]
    )
    
    /// The Dark Type.
    static let dark = PKMNType(id: .darkId)
    
    // Etc...
}

extension PKMNType: CaseIterable {
    /// All standard Types.
    static let allCases: [Self] = [.grass, .fire, .water, .dark]
}
