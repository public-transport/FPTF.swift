public struct Station: Item, Codable {
    public let id: String
    public let name: String
    public let location: Location?
    public let address: String?
    public let regions: [Ref<Region>]?

    public init(id: String, name: String, location: Location?, address: String?, regions: [Ref<Region>]?) {
        self.id = id
        self.name = name
        self.location = location
        self.address = address
        self.regions = regions
    }
}

extension Station: Equatable {
    public static func ==(lhs: Station, rhs: Station) -> Bool {
        let base = lhs.id == rhs.id &&
            lhs.name == rhs.name &&
            lhs.location == rhs.location &&
            lhs.address == rhs.address

        if let lhsRegions = lhs.regions, let rhsRegions = rhs.regions {
            return base && lhsRegions == rhsRegions
        }

        return base
    }
}
