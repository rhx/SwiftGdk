import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf

// MARK: - DevicePad Interface

/// The `DevicePadProtocol` protocol exposes the methods and properties of an underlying `GdkDevicePad` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DevicePad`.
/// Alternatively, use `DevicePadRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkDevicePad` is an interface implemented by devices of type
/// `GDK_SOURCE_TABLET_PAD`, it allows querying the features provided
/// by the pad device.
/// 
/// Tablet pads may contain one or more groups, each containing a subset
/// of the buttons/rings/strips available. `gdk_device_pad_get_n_groups()`
/// can be used to obtain the number of groups, `gdk_device_pad_get_n_features()`
/// and `gdk_device_pad_get_feature_group()` can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map
/// each individual pad feature to multiple actions. Only one mode is
/// effective (current) for each given group, different groups may have
/// different current modes. The number of available modes in a group can
/// be found out through `gdk_device_pad_get_group_n_modes()`, and the current
/// mode for a given group will be notified through the `GdkEventPadGroupMode`
/// event.
public protocol DevicePadProtocol: DeviceProtocol {
        /// Untyped pointer to the underlying `GdkDevicePad` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDevicePad` instance.
    var device_pad_ptr: UnsafeMutablePointer<GdkDevicePad>! { get }

}

/// The `DevicePadRef` type acts as a lightweight Swift reference to an underlying `GdkDevicePad` instance.
/// It exposes methods that can operate on this data type through `DevicePadProtocol` conformance.
/// Use `DevicePadRef` only as an `unowned` reference to an existing `GdkDevicePad` instance.
///
/// `GdkDevicePad` is an interface implemented by devices of type
/// `GDK_SOURCE_TABLET_PAD`, it allows querying the features provided
/// by the pad device.
/// 
/// Tablet pads may contain one or more groups, each containing a subset
/// of the buttons/rings/strips available. `gdk_device_pad_get_n_groups()`
/// can be used to obtain the number of groups, `gdk_device_pad_get_n_features()`
/// and `gdk_device_pad_get_feature_group()` can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map
/// each individual pad feature to multiple actions. Only one mode is
/// effective (current) for each given group, different groups may have
/// different current modes. The number of available modes in a group can
/// be found out through `gdk_device_pad_get_group_n_modes()`, and the current
/// mode for a given group will be notified through the `GdkEventPadGroupMode`
/// event.
public struct DevicePadRef: DevicePadProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDevicePad` instance.
    /// For type-safe access, use the generated, typed pointer `device_pad_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DevicePadRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDevicePad>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDevicePad>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDevicePad>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDevicePad>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `DevicePadProtocol`
    @inlinable init<T: DevicePadProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DevicePadProtocol>(_ other: T) -> DevicePadRef { DevicePadRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DevicePad` type acts as a reference-counted owner of an underlying `GdkDevicePad` instance.
/// It provides the methods that can operate on this data type through `DevicePadProtocol` conformance.
/// Use `DevicePad` as a strong reference or owner of a `GdkDevicePad` instance.
///
/// `GdkDevicePad` is an interface implemented by devices of type
/// `GDK_SOURCE_TABLET_PAD`, it allows querying the features provided
/// by the pad device.
/// 
/// Tablet pads may contain one or more groups, each containing a subset
/// of the buttons/rings/strips available. `gdk_device_pad_get_n_groups()`
/// can be used to obtain the number of groups, `gdk_device_pad_get_n_features()`
/// and `gdk_device_pad_get_feature_group()` can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map
/// each individual pad feature to multiple actions. Only one mode is
/// effective (current) for each given group, different groups may have
/// different current modes. The number of available modes in a group can
/// be found out through `gdk_device_pad_get_group_n_modes()`, and the current
/// mode for a given group will be notified through the `GdkEventPadGroupMode`
/// event.
open class DevicePad: Device, DevicePadProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDevicePad>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDevicePad>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDevicePad>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDevicePad>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDevicePad`.
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDevicePad>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DevicePadProtocol`
    /// Will retain `GdkDevicePad`.
    /// - Parameter other: an instance of a related type that implements `DevicePadProtocol`
    @inlinable public init<T: DevicePadProtocol>(devicePad other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DevicePadPropertyName: String, PropertyNameProtocol {
    /// Associated pointer or keyboard with this device, if any. Devices of type `GDK_DEVICE_TYPE_MASTER`
    /// always come in keyboard/pointer pairs. Other device types will have a `nil` associated device.
    case associatedDevice = "associated-device"
    /// The axes currently available for this device.
    case axes = "axes"
    /// The `GdkDeviceManager` the `GdkDevice` pertains to.
    case deviceManager = "device-manager"
    /// The `GdkDisplay` the `GdkDevice` pertains to.
    case display = "display"
    /// Whether the device is represented by a cursor on the screen. Devices of type
    /// `GDK_DEVICE_TYPE_MASTER` will have `true` here.
    case hasCursor = "has-cursor"
    case inputMode = "input-mode"
    /// Source type for the device.
    case inputSource = "input-source"
    /// Number of axes in the device.
    case nAxes = "n-axes"
    /// The device name.
    case name = "name"
    /// The maximal number of concurrent touches on a touch device.
    /// Will be 0 if the device is not a touch device or if the number
    /// of touches is unknown.
    case numTouches = "num-touches"
    /// Product ID of this device, see `gdk_device_get_product_id()`.
    case productId = "product-id"
    /// `GdkSeat` of this device.
    case seat = "seat"
    case tool = "tool"
    /// Device role in the device manager.
    case type = "type"
    /// Vendor ID of this device, see `gdk_device_get_vendor_id()`.
    case vendorId = "vendor-id"
}

public extension DevicePadProtocol {
    /// Bind a `DevicePadPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DevicePadPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a DevicePad property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DevicePadPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DevicePad property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DevicePadPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: DevicePad has no signals// MARK: DevicePad Interface: DevicePadProtocol extension (methods and fields)
public extension DevicePadProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevicePad` instance.
    @inlinable var device_pad_ptr: UnsafeMutablePointer<GdkDevicePad>! { return ptr?.assumingMemoryBound(to: GdkDevicePad.self) }

    /// Returns the group the given `feature` and `idx` belong to,
    /// or -1 if feature/index do not exist in `pad`.
    @inlinable func getFeatureGroup(feature: GdkDevicePadFeature, featureIdx: Int) -> Int {
        let rv = Int(gdk_device_pad_get_feature_group(device_pad_ptr, feature, gint(featureIdx)))
        return rv
    }

    /// Returns the number of modes that `group` may have.
    @inlinable func getGroupNModes(groupIdx: Int) -> Int {
        let rv = Int(gdk_device_pad_get_group_n_modes(device_pad_ptr, gint(groupIdx)))
        return rv
    }

    /// Returns the number of features a tablet pad has.
    @inlinable func getNFeatures(feature: GdkDevicePadFeature) -> Int {
        let rv = Int(gdk_device_pad_get_n_features(device_pad_ptr, feature))
        return rv
    }

    /// Returns the number of groups this pad device has. Pads have
    /// at least one group. A pad group is a subcollection of
    /// buttons/strip/rings that is affected collectively by a same
    /// current mode.
    @inlinable func getNGroups() -> Int {
        let rv = Int(gdk_device_pad_get_n_groups(device_pad_ptr))
        return rv
    }
    /// Returns the number of groups this pad device has. Pads have
    /// at least one group. A pad group is a subcollection of
    /// buttons/strip/rings that is affected collectively by a same
    /// current mode.
    @inlinable var nGroups: Int {
        /// Returns the number of groups this pad device has. Pads have
        /// at least one group. A pad group is a subcollection of
        /// buttons/strip/rings that is affected collectively by a same
        /// current mode.
        get {
            let rv = Int(gdk_device_pad_get_n_groups(device_pad_ptr))
            return rv
        }
    }


}



