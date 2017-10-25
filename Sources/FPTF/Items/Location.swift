public struct Location: Item, Codable {
    public let address: String?
    public let name: String?

    public let longitude: Double?
    public let latitude: Double?
    public let altitude: Double?

    public init(address: String?, name: String?, longitude: Double?, latitude: Double?, altitude: Double?) {
        self.address = address
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
        self.altitude = altitude
    }
}
