public struct Stop: Item, Codable {
    public let id: String
    public let name: String
    public let station: Ref<Station>
    public let location: Location?

    public init(id: String, name: String, station: Ref<Station>, location: Location?) {
        self.id = id
        self.name = name
        self.station = station
        self.location = location
    }
}

extension Stop: Equatable {
    public static func ==(lhs: Stop, rhs: Stop) -> Bool {
        return lhs.id == rhs.id &&
            lhs.name == rhs.name &&
            lhs.station == rhs.station &&
            lhs.location == rhs.location
    }
}
