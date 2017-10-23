public enum Reference<T: Item & Codable>: Codable {
    case reference(String)
    case inline(T)

    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
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
