import XCTest
import FPTF

class OperatorTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "operator",
            "id": "sncf",
            "name": "Société nationale des chemins de fer français"
        }
        """.data(using: .utf8)!

        do {
            let `operator` = try JSONDecoder().decode(Operator.self, from: json)
            XCTAssertEqual(`operator`.id, "sncf")
        } catch {
            XCTFail(String(describing: error))
        }
    }
}

