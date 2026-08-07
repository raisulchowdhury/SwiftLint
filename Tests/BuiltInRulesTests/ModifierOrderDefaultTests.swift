import SourceKittenFramework
import Testing

@testable import SwiftLintBuiltInRules

struct ModifierOrderDefaultTests {
    @Test
    func isolationFollowsMutatorsByDefault() {
        let order = ModifierOrderConfiguration().preferredModifierOrder.map(\.rawValue)
        let mutators = order.firstIndex(of: "mutators")
        let isolation = order.firstIndex(of: "isolation")

        #expect(mutators != nil)
        #expect(isolation != nil)
        #expect(mutators! < isolation!)
    }
}
