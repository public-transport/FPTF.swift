import XCTest
import FPTF

class JourneyTests: XCTestCase {
    func testDecoding() {
        let journey: Journey = try! JSON.decode(json: "journey")

        XCTAssertEqual(journey.type, "journey")
        XCTAssertEqual(journey.id, "12345")

        let leg = journey.legs.first!
        XCTAssertEqual(leg.origin, "12345678")
        XCTAssertEqual(leg.destination, "87654321")
        XCTAssertEqual(leg.departure.timeIntervalSince1970, 1489690800)
        XCTAssertEqual(leg.departureDelay, 120)
        XCTAssertEqual(leg.departurePlatform, "4-1")
        XCTAssertEqual(leg.arrival.timeIntervalSince1970, 1489755600)
        XCTAssertEqual(leg.arrivalDelay, -45)
        XCTAssertEqual(leg.arrivalPlatform, "9")
        XCTAssertEqual(leg.schedule, "1234")
        XCTAssertEqual(leg.mode, .walking)
        XCTAssertEqual(leg.public, true)
        XCTAssertEqual(leg.operator, "sncf")

        let price = journey.price!
        XCTAssertEqual(price.amount, 19.95)
        XCTAssertEqual(price.currency, "EUR")
        
        let stopover = leg.stopovers!.first!
        XCTAssertEqual(stopover.arrival?.timeIntervalSince1970, 1489690800)
        XCTAssertEqual(stopover.arrivalDelay, 120)
        XCTAssertEqual(stopover.arrivalPlatform, "9a")
        XCTAssertEqual(stopover.departure?.timeIntervalSince1970, 1489690800)
        XCTAssertEqual(stopover.departureDelay, 180)
        XCTAssertEqual(stopover.departurePlatform, "9a")
    }
}
