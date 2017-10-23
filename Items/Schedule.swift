struct Schedule: Item, Codable {
    let id: String
    let route: Reference<Route>
    let mode: Mode
    let sequence: [Element]
    let starts: [Int]

    struct Element: Codable {
        let arrival: Int? // required for last stop
        let departure: Int? // required for all but last stop
    }
}
