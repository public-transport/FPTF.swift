/// Larger building or area that can be identified by a name. Usually represented by a single
/// node on a public transport map. Whereas a `Stop` usually specifies a location, a `Station`
/// often is a broader area that may span across multiple levels or buildings.
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
