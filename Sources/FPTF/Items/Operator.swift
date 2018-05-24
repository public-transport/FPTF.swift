public struct Operator: Item {
    public let type = "operator"
    
    public let id: String
    public let name: String

    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
