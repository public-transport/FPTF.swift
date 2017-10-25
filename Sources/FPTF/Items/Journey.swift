import Foundation

public struct Journey: Item, Codable {
    public let id: String
    public let legs: [Leg]
    public let price: Price?

    public init(id: String, legs: [Leg], price: Price?) {
        self.id = id
        self.legs = legs
        self.price = price
    }

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
        public let `public`: Bool
        public let `operator`: Ref<Operator>

        public init(origin: RefThree<Station, Stop, Location>,
                    destination: RefThree<Station, Stop, Location>,
                    departure: Date,
                    departureDelay: TimeInterval?,
                    departurePlatform: String,
                    arrival: Date,
                    arrivalDelay: TimeInterval?,
                    arrivalPlatform: String,
                    schedule: Ref<Schedule>,
                    mode: Mode,
                    `public`: Bool,
                    `operator`: Ref<Operator>) {
            self.origin = origin
            self.destination = destination
            self.departure = departure
            self.departureDelay = departureDelay
            self.departurePlatform = departurePlatform
            self.arrival = arrival
            self.arrivalDelay = arrivalDelay
            self.arrivalPlatform = arrivalPlatform
            self.schedule = schedule
            self.mode = mode
            self.`public` = `public`
            self.`operator` = `operator`
        }
    }

    public struct Price: Codable {
        public let amount: Double
        public let currency: String

        public init(amount: Double, currency: String) {
            self.amount = amount
            self.currency = currency
        }
    }
}

extension Journey: Equatable {
    public static func ==(lhs: Journey, rhs: Journey) -> Bool {
        return lhs.id == rhs.id &&
            lhs.legs == rhs.legs &&
            lhs.price == rhs.price
    }
}

extension Journey.Leg: Equatable {
    public static func ==(lhs: Journey.Leg, rhs: Journey.Leg) -> Bool {
        return lhs.origin == rhs.origin &&
            lhs.destination == rhs.destination &&
            lhs.departure == rhs.departure &&
            lhs.departureDelay == rhs.departureDelay &&
            lhs.departurePlatform == rhs.departurePlatform &&
            lhs.arrival == rhs.arrival &&
            lhs.arrivalDelay == rhs.arrivalDelay &&
            lhs.arrivalPlatform == rhs.departurePlatform &&
            lhs.schedule == rhs.schedule &&
            lhs.mode == rhs.mode &&
            lhs.public == rhs.public &&
            lhs.operator == rhs.operator
    }
}

extension Journey.Price: Equatable {
    public static func ==(lhs: Journey.Price, rhs: Journey.Price) -> Bool {
        return lhs.amount == rhs.amount &&
            lhs.currency == rhs.currency
    }
}
