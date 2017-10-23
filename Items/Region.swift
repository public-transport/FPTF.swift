public struct Region: Item, Codable {
    public let id: String
    public let name: String
    public let stations: [Reference<Station>]
}
