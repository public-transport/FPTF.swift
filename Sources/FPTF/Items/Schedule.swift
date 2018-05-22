public struct Schedule: Item, Codable {
    private let type = "schedule"
    public let id: String
    public let route: Ref<Route>
    public let mode: Mode
    public let sequence: [Element]
    public let starts: [Int]

    /// - Warning: All but the last sequence element's `departure` may not be nil. The last
    ///            sequence element's `arrival` may also not be nil.
    public init(id: String, route: Ref<Route>, mode: Mode, sequence: [Element], starts: [Int]) {
        self.id = id
        self.route = route
        self.mode = mode
        self.sequence = sequence
        self.starts = starts

        if let last = sequence.last {
            // is failing here the best option? Maybe an optional or throwing initializer?
            assert(last.arrival != nil, "Arrival is not optional for the last sequence element.")
        }

        for element in sequence[..<(sequence.count - 1)] {
            assert(element.departure != nil, "Departure is not optional for all but the last sequence element.")
        }
    }

    public struct Element: Codable, Equatable {
        public let arrival: Int? // required for last stop
        public let departure: Int? // required for all but last stop
    }
}
