import Foundation

/// A computed set of directions to get from A to B at a specific time. Typically the result
/// of a route planning algorithm.
public struct Journey: Item {
    public let type = "journey"
    
    public let id: String
    public let legs: [Leg]
    public let price: Price?

    public struct Leg: Codable, Equatable {
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
        public let `public`: Bool
        public let `operator`: Ref<Operator>
    }

    public struct Price: Codable, Equatable {
        public let amount: Double
        public let currency: String
    }
}
