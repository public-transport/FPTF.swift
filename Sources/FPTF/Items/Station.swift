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
