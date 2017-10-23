import Foundation

struct Journey: Item, Codable {
    let id: String
    let legs: [Leg]
    let price: Price?

    struct Leg: Codable {
        let origin: Reference<Station> // FIXME: Can also be Ref<Stop> or Ref<Location> - what's a location?
        let destination: Reference<Station> // FIXME: see above
        let departure: Date
        let departureDelay: TimeInterval?
        let departurePlatform: String
        let arrival: Date
        let arrivalDelay: TimeInterval?
        let arrivalPlatform: String
        let schedule: Reference<Schedule>
        let mode: Mode
        let isPublic: Bool
        let `operator`: Reference<Station>
    }

    struct Price: Codable {
        let amount: Double
        let currency: String
    }
}
