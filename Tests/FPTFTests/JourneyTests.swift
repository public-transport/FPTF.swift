import XCTest
import FPTF

class JourneyTests: XCTestCase {
    func testDecoding() {
        let journey: Journey = try! JSON.decode(json: "journey")

        XCTAssertEqual(journey.id, "12345")

        let leg = journey.legs.first!
        XCTAssertEqual(leg.origin, .reference("12345678"))
        XCTAssertEqual(leg.destination, .reference("87654321"))
        XCTAssertEqual(leg.departure.timeIntervalSince1970, 1489690800)
        XCTAssertEqual(leg.departureDelay, 120)
        XCTAssertEqual(leg.departurePlatform, "4-1")
        XCTAssertEqual(leg.arrival.timeIntervalSince1970, 1489755600)
        XCTAssertEqual(leg.arrivalDelay, -45)
        XCTAssertEqual(leg.arrivalPlatform, "9")
        XCTAssertEqual(leg.schedule, .reference("1234"))
        XCTAssertEqual(leg.mode, .walking)
        XCTAssertEqual(leg.public, true)
        XCTAssertEqual(leg.operator, .reference("sncf"))

        let price = journey.price!
        XCTAssertEqual(price.amount, 19.95)
        XCTAssertEqual(price.currency, "EUR")
    }
}
