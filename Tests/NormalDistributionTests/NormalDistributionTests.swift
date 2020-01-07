import XCTest
@testable import NormalDistribution

final class NormalDistributionTests: XCTestCase {
    func testProbabilityOfZero() {
        do {
            XCTAssertEqual(try NormalDistribution().cumulativeProbability(0.0), 0.5, accuracy: 0.01)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    static var allTests = [
        ("testProbabilityOfZero", testProbabilityOfZero),
    ]
}
