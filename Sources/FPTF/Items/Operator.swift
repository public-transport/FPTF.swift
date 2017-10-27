public struct Operator: Item, Codable {
    private let type = "operator"
    public let id: String
    public let name: String

    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

extension Operator: Equatable {
    public static func ==(lhs: Operator, rhs: Operator) -> Bool {
        return lhs.id == rhs.id &&
            lhs.name == rhs.name
    }
}
