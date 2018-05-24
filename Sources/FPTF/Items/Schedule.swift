public struct Schedule: Item {
    public let type = "schedule"

    public var id: String
    public var route: Ref<Route>
    public var mode: Mode
    public var sequence: [Element]
    public var starts: [Int]

    /// - Warning: All but the last sequence element's `departure` may not be nil. The last
    ///            sequence element's `arrival` may also not be nil. This behavior is checked in
    ///            debug builds.
    public init(id: String, route: Ref<Route>, mode: Mode, sequence: [Element], starts: [Int]) {
        if let element = sequence.last {
            assert(element.arrival != nil, "Arrival is not optional for the last sequence element.")
        }

        for element in sequence[..<(sequence.count - 1)] {
            assert(element.departure != nil, "Departure is not optional for all but the last sequence element.")
        }

        self.id = id
        self.route = route
        self.mode = mode
        self.sequence = sequence
        self.starts = starts
    }

    public struct Element: Codable, Equatable {
        public let arrival: Int? // required for last stop
        public let departure: Int? // required for all but last stop
    }
}
