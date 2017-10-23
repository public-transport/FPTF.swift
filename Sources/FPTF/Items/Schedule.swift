public struct Schedule: Item, Codable {
    public let id: String
    public let route: Ref<Route>
    public let mode: Mode
    public let sequence: [Element]
    public let starts: [Int]

    public struct Element: Codable {
        public let arrival: Int? // required for last stop
        public let departure: Int? // required for all but last stop
    }
}
