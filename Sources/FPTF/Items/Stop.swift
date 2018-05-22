/// A single small point or structure at which vehicles stop. A `Stop` always belongs to a
/// `Station`. It may for example be a sign, a basic shelter or a railway platform.
/// - Note: If the underlying data source does not allow such a fine-grained distinction,
///         use `Station`s instead.
public struct Stop: Item {
    public let type = "stop"

    public let id: String
    public let name: String
    public let station: Ref<Station>
    public let location: Location?
}
