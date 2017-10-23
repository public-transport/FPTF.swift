public struct Station: Item, Codable {
    public let id: String
    public let name: String
    public let coordinates: Coordinate?
    public let address: String?
    public let regions: [Ref<Region>]?
}
