public struct Location: Item, Codable {
    private let type = "location"

    public let name: String?
    public let address: String?

    public let longitude: Double?
    public let latitude: Double?
    public let altitude: Double?

    public init(name: String?, address: String?, longitude: Double?, latitude: Double?, altitude: Double?) {
        self.name = name
        self.address = address
        self.longitude = longitude
        self.latitude = latitude
        self.altitude = altitude
    }
}

extension Location: Equatable {
    public static func ==(lhs: Location, rhs: Location) -> Bool {
        return lhs.name == rhs.name &&
            lhs.address == rhs.address &&
            lhs.longitude == rhs.longitude &&
            lhs.latitude == rhs.latitude &&
            lhs.altitude == rhs.altitude
    }
}
