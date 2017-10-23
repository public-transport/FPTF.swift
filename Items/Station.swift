struct Station: Item, Codable {
    let id: String
    let name: String
    let coordinates: Coordinate?
    let address: String?
    let regions: [Reference<Region>]?
}
