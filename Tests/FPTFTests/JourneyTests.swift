import XCTest
import FPTF

class JourneyTests: XCTestCase {
    func testDecoding() {
        let journey: Journey = try! JSON.decode(json: "journey")

        XCTAssertEqual(journey.id, "12345")
    }
}
