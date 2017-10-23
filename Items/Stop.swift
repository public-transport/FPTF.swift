public struct Stop: Item, Codable {
    public let id: String
    public let name: String
    public let station: Reference<Station>
    public let coordinates: Coordinate?
}
