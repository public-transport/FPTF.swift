public struct Operator: Item {
    public let type = "operator"

    public var id: String
    public var name: String

    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
