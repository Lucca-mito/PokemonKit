import XCTest
import PokemonKit

final class PokemonKitTests: XCTestCase {
    
    func testExample() throws {
        let avatar = PKMNType(
            id: "Avatar",
            effectivenessAgainstSelf: .regular,
            effectivenessAgainstOtherTypes: [
                .fire: .superEffective,
                .water: .superEffective
            ],
            effectivenessOfOtherTypes: [
                .fire: .notVeryEffective,
                .water: .notVeryEffective,
                .dark: .superEffective
            ]
        )
        
        XCTAssert(PKMNType.fire.effectiveness(against: avatar) == .notVeryEffective)
    }
}
