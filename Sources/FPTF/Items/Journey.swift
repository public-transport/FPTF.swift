import Foundation

public struct Journey: Item, Codable {
    public let id: String
    public let legs: [Leg]
    public let price: Price?

    public struct Leg: Codable {
        public let origin: RefThree<Station, Stop, Location>
        public let destination: RefThree<Station, Stop, Location>
        public let departure: Date
        public let departureDelay: TimeInterval?
        public let departurePlatform: String
        public let arrival: Date
        public let arrivalDelay: TimeInterval?
        public let arrivalPlatform: String
        public let schedule: Ref<Schedule>
        public let mode: Mode
        public let isPublic: Bool
        public let `operator`: Ref<Station>
    }

    public struct Price: Codable {
        public let amount: Double
        public let currency: String
    }
}
