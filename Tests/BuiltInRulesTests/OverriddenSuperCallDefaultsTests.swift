import Testing

@testable import SwiftLintBuiltInRules

struct OverriddenSuperCallDefaultsTests {
    @Test
    func updateTrackingAreasRequiresSuperByDefault() {
        #expect(
            OverriddenSuperCallConfiguration()
                .resolvedMethodNames
                .contains("updateTrackingAreas()")
        )
    }
}
