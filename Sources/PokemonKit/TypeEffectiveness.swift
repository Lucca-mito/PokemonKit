//
//  TypeEffectiveness.swift
//
//
//  Created by Lucca de Mello on 4/1/23.
//

/// The effectiveness of a damaging move against a single ``PKMNType``.
public enum PKMNTypeEffectiveness: Double {
    case superEffective = 2
    case regular = 1
    case notVeryEffective = 0.5
    case noEffect = 0
    
    public var message: String? {
        switch self {
        case .superEffective:
            return "It's super effective!"
        case .regular:
            return nil
        case .notVeryEffective:
            return "It's not very effective."
        case .noEffect:
            return "It has no effect."
        }
    }
}
