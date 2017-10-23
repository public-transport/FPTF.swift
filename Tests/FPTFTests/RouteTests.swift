import XCTest
import FPTF

class RouteTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "route",
            "id": "1234",
            "line": "123",
            "mode": "bus",
            "stops": [
                "12345678",
                "87654321"
            ]
        }
        """.data(using: .utf8)!

        do {
            let route = try JSONDecoder().decode(Route.self, from: json)
            XCTAssertEqual(route.id, "1234")
        } catch {
            XCTFail(String(describing: error))
        }
    }
}

