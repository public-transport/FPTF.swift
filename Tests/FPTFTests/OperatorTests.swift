import XCTest
import FPTF

class OperatorTests: XCTestCase {
    func testDecoding() {
        let `operator`: Operator = try! JSON.decode(json: "operator")

        XCTAssertEqual(`operator`.id, "sncf")
        XCTAssertEqual(`operator`.name, "Société nationale des chemins de fer français")
    }
}

