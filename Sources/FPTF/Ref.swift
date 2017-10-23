public enum Ref<T: Item & Codable>: Codable {
    case reference(String)
    case inline(T)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let ref = try? container.decode(String.self) {
            self = .reference(ref)
        } else {
            let inline = try container.decode(T.self)
            self = .inline(inline)
        }
    }

    public func encode(to encoder: Encoder) throws {

    }
}

public protocol Item {
    var id: String { get }
}
