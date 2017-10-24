public protocol Item { }

public typealias CodeItem = Item & Codable

public enum Ref<T: CodeItem>: Codable {
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
        var container = encoder.singleValueContainer()
        switch self {
        case .reference(let ref):
            try container.encode(ref)
        case .inline(let inline):
            try container.encode(inline)
        }
    }
}

public enum RefTwo<A: CodeItem, B: CodeItem>: Codable {
    case reference(String)
    case inlineA(A)
    case inlineB(B)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let ref = try? container.decode(String.self) {
            self = .reference(ref)
        } else if let a = try? container.decode(A.self) {
            self = .inlineA(a)
        } else {
            let b = try container.decode(B.self)
            self = .inlineB(b)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .reference(let ref):
            try container.encode(ref)
        case .inlineA(let a):
            try container.encode(a)
        case .inlineB(let b):
            try container.encode(b)
        }
    }
}

public enum RefThree<A: CodeItem, B: CodeItem, C: CodeItem>: Codable {
    case reference(String)
    case inlineA(A)
    case inlineB(B)
    case inlineC(C)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let ref = try? container.decode(String.self) {
            self = .reference(ref)
        } else if let a = try? container.decode(A.self) {
            self = .inlineA(a)
        } else if let b = try? container.decode(B.self) {
            self = .inlineB(b)
        } else {
            let c = try container.decode(C.self)
            self = .inlineC(c)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .reference(let ref):
            try container.encode(ref)
        case .inlineA(let a):
            try container.encode(a)
        case .inlineB(let b):
            try container.encode(b)
        case .inlineC(let c):
            try container.encode(c)
        }
    }
}
