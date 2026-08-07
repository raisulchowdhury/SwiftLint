import TestHelpers
import Testing

@testable import SwiftLintBuiltInRules

@Suite(.rulesRegistered)
struct UnusedParameterBindingTests {
    @Test
    func projectedBindingParameterCountsWrappedValueReferenceAsUsage() {
        let description = UnusedParameterRule.description
            .with(nonTriggeringExamples: #examples([
                """
                List($history) { $historyItem in
                    Foo(url: historyItem.url)
                }
                """,
            ]))
            .with(triggeringExamples: [])
            .with(corrections: [:])

        verifyRule(description)
    }
}
