struct Stop: Item, Codable {
    let id: String
    let name: String
    let station: Reference<Station>
    let coordinates: Coordinate?
}
