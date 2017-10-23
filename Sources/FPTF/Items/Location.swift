public struct Location: Item, Codable {
    public let address: String?
    public let name: String?

    public let longitude: Double?
    public let latitude: Double?
    public let altitude: Double?
}
