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

// MARK: - DeleteEvent Class

/// The `DeleteEventProtocol` protocol exposes the methods and properties of an underlying `GdkDeleteEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DeleteEvent`.
/// Alternatively, use `DeleteEventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An event related to closing a top-level surface.
public protocol DeleteEventProtocol: EventProtocol {
        /// Untyped pointer to the underlying `GdkDeleteEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDeleteEvent` instance.
    var delete_event_ptr: UnsafeMutablePointer<GdkDeleteEvent>! { get }

    /// Required Initialiser for types conforming to `DeleteEventProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DeleteEventRef` type acts as a lightweight Swift reference to an underlying `GdkDeleteEvent` instance.
/// It exposes methods that can operate on this data type through `DeleteEventProtocol` conformance.
/// Use `DeleteEventRef` only as an `unowned` reference to an existing `GdkDeleteEvent` instance.
///
/// An event related to closing a top-level surface.
public struct DeleteEventRef: DeleteEventProtocol {
        /// Untyped pointer to the underlying `GdkDeleteEvent` instance.
    /// For type-safe access, use the generated, typed pointer `delete_event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DeleteEventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDeleteEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDeleteEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDeleteEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDeleteEvent>?) {
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

    /// Reference intialiser for a related type that implements `DeleteEventProtocol`
    @inlinable init<T: DeleteEventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DeleteEvent` type acts as a reference-counted owner of an underlying `GdkDeleteEvent` instance.
/// It provides the methods that can operate on this data type through `DeleteEventProtocol` conformance.
/// Use `DeleteEvent` as a strong reference or owner of a `GdkDeleteEvent` instance.
///
/// An event related to closing a top-level surface.
open class DeleteEvent: Event, DeleteEventProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeleteEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDeleteEvent>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeleteEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDeleteEvent>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeleteEvent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeleteEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeleteEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDeleteEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeleteEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDeleteEvent>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDeleteEvent`.
    /// i.e., ownership is transferred to the `DeleteEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDeleteEvent>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DeleteEventProtocol`
    /// Will retain `GdkDeleteEvent`.
    /// - Parameter other: an instance of a related type that implements `DeleteEventProtocol`
    @inlinable public init<T: DeleteEventProtocol>(deleteEvent other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeleteEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no DeleteEvent properties

// MARK: no DeleteEvent signals

// MARK: DeleteEvent has no signals
// MARK: DeleteEvent Class: DeleteEventProtocol extension (methods and fields)
public extension DeleteEventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDeleteEvent` instance.
    @inlinable var delete_event_ptr: UnsafeMutablePointer<GdkDeleteEvent>! { return ptr?.assumingMemoryBound(to: GdkDeleteEvent.self) }



}



// MARK: - Device Class

/// The `DeviceProtocol` protocol exposes the methods and properties of an underlying `GdkDevice` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Device`.
/// Alternatively, use `DeviceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkDevice` object represents an input device, such
/// as a keyboard, a mouse, or a touchpad.
/// 
/// See the [class`Gdk.Seat`] documentation for more information
/// about the various kinds of devices, and their relationships.
public protocol DeviceProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDevice` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDevice` instance.
    var device_ptr: UnsafeMutablePointer<GdkDevice>! { get }

    /// Required Initialiser for types conforming to `DeviceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DeviceRef` type acts as a lightweight Swift reference to an underlying `GdkDevice` instance.
/// It exposes methods that can operate on this data type through `DeviceProtocol` conformance.
/// Use `DeviceRef` only as an `unowned` reference to an existing `GdkDevice` instance.
///
/// The `GdkDevice` object represents an input device, such
/// as a keyboard, a mouse, or a touchpad.
/// 
/// See the [class`Gdk.Seat`] documentation for more information
/// about the various kinds of devices, and their relationships.
public struct DeviceRef: DeviceProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDevice` instance.
    /// For type-safe access, use the generated, typed pointer `device_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DeviceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDevice>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDevice>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDevice>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDevice>?) {
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

    /// Reference intialiser for a related type that implements `DeviceProtocol`
    @inlinable init<T: DeviceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DeviceProtocol>(_ other: T) -> DeviceRef { DeviceRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Device` type acts as a reference-counted owner of an underlying `GdkDevice` instance.
/// It provides the methods that can operate on this data type through `DeviceProtocol` conformance.
/// Use `Device` as a strong reference or owner of a `GdkDevice` instance.
///
/// The `GdkDevice` object represents an input device, such
/// as a keyboard, a mouse, or a touchpad.
/// 
/// See the [class`Gdk.Seat`] documentation for more information
/// about the various kinds of devices, and their relationships.
open class Device: GLibObject.Object, DeviceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDevice>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDevice>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDevice>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDevice>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDevice`.
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDevice>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DeviceProtocol`
    /// Will retain `GdkDevice`.
    /// - Parameter other: an instance of a related type that implements `DeviceProtocol`
    @inlinable public init<T: DeviceProtocol>(device other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DevicePropertyName: String, PropertyNameProtocol {
    /// Whether Caps Lock is on.
    /// 
    /// This is only relevant for keyboard devices.
    case capsLockState = "caps-lock-state"
    /// The direction of the current layout.
    /// 
    /// This is only relevant for keyboard devices.
    case direction = "direction"
    /// The `GdkDisplay` the `GdkDevice` pertains to.
    case display = "display"
    /// Whether the device has both right-to-left and left-to-right layouts.
    /// 
    /// This is only relevant for keyboard devices.
    case hasBidiLayouts = "has-bidi-layouts"
    /// Whether the device is represented by a cursor on the screen.
    case hasCursor = "has-cursor"
    /// The current modifier state of the device.
    /// 
    /// This is only relevant for keyboard devices.
    case modifierState = "modifier-state"
    /// Number of axes in the device.
    case nAxes = "n-axes"
    /// The device name.
    case name = "name"
    /// Whether Num Lock is on.
    /// 
    /// This is only relevant for keyboard devices.
    case numLockState = "num-lock-state"
    /// The maximal number of concurrent touches on a touch device.
    /// 
    /// Will be 0 if the device is not a touch device or if the number
    /// of touches is unknown.
    case numTouches = "num-touches"
    /// Product ID of this device.
    /// 
    /// See [method`Gdk.Device.get_product_id`].
    case productId = "product-id"
    /// Whether Scroll Lock is on.
    /// 
    /// This is only relevant for keyboard devices.
    case scrollLockState = "scroll-lock-state"
    /// `GdkSeat` of this device.
    case seat = "seat"
    /// Source type for the device.
    case source = "source"
    /// The `GdkDeviceTool` that is currently used with this device.
    case tool = "tool"
    /// Vendor ID of this device.
    /// 
    /// See [method`Gdk.Device.get_vendor_id`].
    case vendorId = "vendor-id"
}

public extension DeviceProtocol {
    /// Bind a `DevicePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DevicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Device property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DevicePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Device property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DevicePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DeviceSignalName: String, SignalNameProtocol {
    /// Emitted either when the the number of either axes or keys changes.
    /// 
    /// On X11 this will normally happen when the physical device
    /// routing events through the logical device changes (for
    /// example, user switches from the USB mouse to a tablet); in
    /// that case the logical device will change to reflect the axes
    /// and keys on the new physical device.
    case changed = "changed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted on pen/eraser devices whenever tools enter or leave proximity.
    case toolChanged = "tool-changed"
    /// Whether Caps Lock is on.
    /// 
    /// This is only relevant for keyboard devices.
    case notifyCapsLockState = "notify::caps-lock-state"
    /// The direction of the current layout.
    /// 
    /// This is only relevant for keyboard devices.
    case notifyDirection = "notify::direction"
    /// The `GdkDisplay` the `GdkDevice` pertains to.
    case notifyDisplay = "notify::display"
    /// Whether the device has both right-to-left and left-to-right layouts.
    /// 
    /// This is only relevant for keyboard devices.
    case notifyHasBidiLayouts = "notify::has-bidi-layouts"
    /// Whether the device is represented by a cursor on the screen.
    case notifyHasCursor = "notify::has-cursor"
    /// The current modifier state of the device.
    /// 
    /// This is only relevant for keyboard devices.
    case notifyModifierState = "notify::modifier-state"
    /// Number of axes in the device.
    case notifyNAxes = "notify::n-axes"
    /// The device name.
    case notifyName = "notify::name"
    /// Whether Num Lock is on.
    /// 
    /// This is only relevant for keyboard devices.
    case notifyNumLockState = "notify::num-lock-state"
    /// The maximal number of concurrent touches on a touch device.
    /// 
    /// Will be 0 if the device is not a touch device or if the number
    /// of touches is unknown.
    case notifyNumTouches = "notify::num-touches"
    /// Product ID of this device.
    /// 
    /// See [method`Gdk.Device.get_product_id`].
    case notifyProductId = "notify::product-id"
    /// Whether Scroll Lock is on.
    /// 
    /// This is only relevant for keyboard devices.
    case notifyScrollLockState = "notify::scroll-lock-state"
    /// `GdkSeat` of this device.
    case notifySeat = "notify::seat"
    /// Source type for the device.
    case notifySource = "notify::source"
    /// The `GdkDeviceTool` that is currently used with this device.
    case notifyTool = "notify::tool"
    /// Vendor ID of this device.
    /// 
    /// See [method`Gdk.Device.get_vendor_id`].
    case notifyVendorId = "notify::vendor-id"
}

// MARK: Device signals
public extension DeviceProtocol {
    /// Connect a Swift signal handler to the given, typed `DeviceSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DeviceSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DeviceSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DeviceSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted either when the the number of either axes or keys changes.
    /// 
    /// On X11 this will normally happen when the physical device
    /// routing events through the logical device changes (for
    /// example, user switches from the USB mouse to a tablet); in
    /// that case the logical device will change to reflect the axes
    /// and keys on the new physical device.
    /// - Note: This represents the underlying `changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changed` signal is emitted
    @discardableResult @inlinable func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DeviceRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .changed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `changed` signal for using the `connect(signal:)` methods
    static var changedSignal: DeviceSignalName { .changed }
    
    /// Emitted on pen/eraser devices whenever tools enter or leave proximity.
    /// - Note: This represents the underlying `tool-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter tool: The new current tool
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `toolChanged` signal is emitted
    @discardableResult @inlinable func onToolChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ tool: DeviceToolRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, DeviceToolRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), DeviceToolRef(raw: arg1))
            return output
        }
        return connect(
            signal: .toolChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `tool-changed` signal for using the `connect(signal:)` methods
    static var toolChangedSignal: DeviceSignalName { .toolChanged }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::caps-lock-state` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCapsLockState` signal is emitted
    @discardableResult @inlinable func onNotifyCapsLockState(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCapsLockState,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::caps-lock-state` signal for using the `connect(signal:)` methods
    static var notifyCapsLockStateSignal: DeviceSignalName { .notifyCapsLockState }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::direction` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDirection` signal is emitted
    @discardableResult @inlinable func onNotifyDirection(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDirection,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::direction` signal for using the `connect(signal:)` methods
    static var notifyDirectionSignal: DeviceSignalName { .notifyDirection }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::display` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDisplay` signal is emitted
    @discardableResult @inlinable func onNotifyDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDisplay,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::display` signal for using the `connect(signal:)` methods
    static var notifyDisplaySignal: DeviceSignalName { .notifyDisplay }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::has-bidi-layouts` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHasBidiLayouts` signal is emitted
    @discardableResult @inlinable func onNotifyHasBidiLayouts(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHasBidiLayouts,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::has-bidi-layouts` signal for using the `connect(signal:)` methods
    static var notifyHasBidiLayoutsSignal: DeviceSignalName { .notifyHasBidiLayouts }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::has-cursor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHasCursor` signal is emitted
    @discardableResult @inlinable func onNotifyHasCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHasCursor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::has-cursor` signal for using the `connect(signal:)` methods
    static var notifyHasCursorSignal: DeviceSignalName { .notifyHasCursor }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::modifier-state` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModifierState` signal is emitted
    @discardableResult @inlinable func onNotifyModifierState(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModifierState,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::modifier-state` signal for using the `connect(signal:)` methods
    static var notifyModifierStateSignal: DeviceSignalName { .notifyModifierState }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::n-axes` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyNAxes` signal is emitted
    @discardableResult @inlinable func onNotifyNAxes(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyNAxes,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::n-axes` signal for using the `connect(signal:)` methods
    static var notifyNAxesSignal: DeviceSignalName { .notifyNAxes }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::name` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyName` signal is emitted
    @discardableResult @inlinable func onNotifyName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyName,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::name` signal for using the `connect(signal:)` methods
    static var notifyNameSignal: DeviceSignalName { .notifyName }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::num-lock-state` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyNumLockState` signal is emitted
    @discardableResult @inlinable func onNotifyNumLockState(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyNumLockState,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::num-lock-state` signal for using the `connect(signal:)` methods
    static var notifyNumLockStateSignal: DeviceSignalName { .notifyNumLockState }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::num-touches` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyNumTouches` signal is emitted
    @discardableResult @inlinable func onNotifyNumTouches(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyNumTouches,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::num-touches` signal for using the `connect(signal:)` methods
    static var notifyNumTouchesSignal: DeviceSignalName { .notifyNumTouches }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::product-id` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyProductId` signal is emitted
    @discardableResult @inlinable func onNotifyProductId(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyProductId,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::product-id` signal for using the `connect(signal:)` methods
    static var notifyProductIdSignal: DeviceSignalName { .notifyProductId }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::scroll-lock-state` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyScrollLockState` signal is emitted
    @discardableResult @inlinable func onNotifyScrollLockState(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyScrollLockState,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::scroll-lock-state` signal for using the `connect(signal:)` methods
    static var notifyScrollLockStateSignal: DeviceSignalName { .notifyScrollLockState }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::seat` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySeat` signal is emitted
    @discardableResult @inlinable func onNotifySeat(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySeat,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::seat` signal for using the `connect(signal:)` methods
    static var notifySeatSignal: DeviceSignalName { .notifySeat }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::source` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySource` signal is emitted
    @discardableResult @inlinable func onNotifySource(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySource,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::source` signal for using the `connect(signal:)` methods
    static var notifySourceSignal: DeviceSignalName { .notifySource }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::tool` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTool` signal is emitted
    @discardableResult @inlinable func onNotifyTool(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTool,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::tool` signal for using the `connect(signal:)` methods
    static var notifyToolSignal: DeviceSignalName { .notifyTool }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::vendor-id` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyVendorId` signal is emitted
    @discardableResult @inlinable func onNotifyVendorId(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DeviceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DeviceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DeviceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyVendorId,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::vendor-id` signal for using the `connect(signal:)` methods
    static var notifyVendorIdSignal: DeviceSignalName { .notifyVendorId }
    
}

// MARK: Device Class: DeviceProtocol extension (methods and fields)
public extension DeviceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevice` instance.
    @inlinable var device_ptr: UnsafeMutablePointer<GdkDevice>! { return ptr?.assumingMemoryBound(to: GdkDevice.self) }

    /// Retrieves whether the Caps Lock modifier of the keyboard is locked.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable func getCapsLockState() -> Bool {
        let rv = ((gdk_device_get_caps_lock_state(device_ptr)) != 0)
        return rv
    }

    /// Retrieves the current tool for `device`.
    @inlinable func getDeviceTool() -> DeviceToolRef! {
        let rv = DeviceToolRef(gconstpointer: gconstpointer(gdk_device_get_device_tool(device_ptr)))
        return rv
    }

    /// Returns the direction of effective layout of the keyboard.
    /// 
    /// This is only relevant for keyboard devices.
    /// 
    /// The direction of a layout is the direction of the majority
    /// of its symbols. See [func`Pango.unichar_direction`].
    @inlinable func getDirection() -> PangoDirection {
        let rv = gdk_device_get_direction(device_ptr)
        return rv
    }

    /// Returns the `GdkDisplay` to which `device` pertains.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_device_get_display(device_ptr)))
        return rv
    }

    /// Determines whether the pointer follows device motion.
    /// 
    /// This is not meaningful for keyboard devices, which
    /// don't have a pointer.
    @inlinable func getHasCursor() -> Bool {
        let rv = ((gdk_device_get_has_cursor(device_ptr)) != 0)
        return rv
    }

    /// Retrieves the current modifier state of the keyboard.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable func getModifierState() -> ModifierType {
        let rv = ModifierType(gdk_device_get_modifier_state(device_ptr))
        return rv
    }

    /// The name of the device, suitable for showing in a user interface.
    @inlinable func getName() -> String! {
        let rv = gdk_device_get_name(device_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves whether the Num Lock modifier of the keyboard is locked.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable func getNumLockState() -> Bool {
        let rv = ((gdk_device_get_num_lock_state(device_ptr)) != 0)
        return rv
    }

    /// Retrieves the number of touch points associated to `device`.
    @inlinable func getNumTouches() -> Int {
        let rv = Int(gdk_device_get_num_touches(device_ptr))
        return rv
    }

    /// Returns the product ID of this device.
    /// 
    /// This ID is retrieved from the device, and does not change.
    /// See [method`Gdk.Device.get_vendor_id`] for more information.
    @inlinable func getProductId() -> String! {
        let rv = gdk_device_get_product_id(device_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves whether the Scroll Lock modifier of the keyboard is locked.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable func getScrollLockState() -> Bool {
        let rv = ((gdk_device_get_scroll_lock_state(device_ptr)) != 0)
        return rv
    }

    /// Returns the `GdkSeat` the device belongs to.
    @inlinable func getSeat() -> SeatRef! {
        let rv = SeatRef(gconstpointer: gconstpointer(gdk_device_get_seat(device_ptr)))
        return rv
    }

    /// Determines the type of the device.
    @inlinable func getSource() -> GdkInputSource {
        let rv = gdk_device_get_source(device_ptr)
        return rv
    }

    /// Obtains the surface underneath `device`, returning the location of the
    /// device in `win_x` and `win_y`
    /// 
    /// Returns `nil` if the surface tree under `device` is not known to GDK
    /// (for example, belongs to another application).
    @inlinable func getSurfaceAtPosition(winX: UnsafeMutablePointer<CDouble>! = nil, winY: UnsafeMutablePointer<CDouble>! = nil) -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_device_get_surface_at_position(device_ptr, winX, winY)))
        return rv
    }

    /// Returns the timestamp of the last activity for this device.
    /// 
    /// In practice, this means the timestamp of the last event that was
    /// received from the OS for this device. (GTK may occasionally produce
    /// events for a device that are not received from the OS, and will not
    /// update the timestamp).
    @inlinable func getTimestamp() -> guint32 {
        let rv = gdk_device_get_timestamp(device_ptr)
        return rv
    }

    /// Returns the vendor ID of this device.
    /// 
    /// This ID is retrieved from the device, and does not change.
    /// 
    /// This function, together with [method`Gdk.Device.get_product_id`],
    /// can be used to eg. compose `GSettings` paths to store settings
    /// for this device.
    /// 
    /// ```c
    ///  static GSettings *
    ///  get_device_settings (GdkDevice *device)
    ///  {
    ///    const char *vendor, *product;
    ///    GSettings *settings;
    ///    GdkDevice *device;
    ///    char *path;
    /// 
    ///    vendor = gdk_device_get_vendor_id (device);
    ///    product = gdk_device_get_product_id (device);
    /// 
    ///    path = g_strdup_printf ("/org/example/app/devices/`s:``s`/", vendor, product);
    ///    settings = g_settings_new_with_path (DEVICE_SCHEMA, path);
    ///    g_free (path);
    /// 
    ///    return settings;
    ///  }
    /// ```
    @inlinable func getVendorId() -> String! {
        let rv = gdk_device_get_vendor_id(device_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Determines if layouts for both right-to-left and
    /// left-to-right languages are in use on the keyboard.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable func hasBidiLayouts() -> Bool {
        let rv = ((gdk_device_has_bidi_layouts(device_ptr)) != 0)
        return rv
    }
    /// Retrieves whether the Caps Lock modifier of the keyboard is locked.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable var capsLockState: Bool {
        /// Retrieves whether the Caps Lock modifier of the keyboard is locked.
        /// 
        /// This is only relevant for keyboard devices.
        get {
            let rv = ((gdk_device_get_caps_lock_state(device_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the current tool for `device`.
    @inlinable var deviceTool: DeviceToolRef! {
        /// Retrieves the current tool for `device`.
        get {
            let rv = DeviceToolRef(gconstpointer: gconstpointer(gdk_device_get_device_tool(device_ptr)))
            return rv
        }
    }

    /// The direction of the current layout.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable var direction: PangoDirection {
        /// Returns the direction of effective layout of the keyboard.
        /// 
        /// This is only relevant for keyboard devices.
        /// 
        /// The direction of a layout is the direction of the majority
        /// of its symbols. See [func`Pango.unichar_direction`].
        get {
            let rv = gdk_device_get_direction(device_ptr)
            return rv
        }
    }

    /// The `GdkDisplay` the `GdkDevice` pertains to.
    @inlinable var display: DisplayRef! {
        /// Returns the `GdkDisplay` to which `device` pertains.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_device_get_display(device_ptr)))
            return rv
        }
    }

    /// Determines whether the pointer follows device motion.
    /// 
    /// This is not meaningful for keyboard devices, which
    /// don't have a pointer.
    @inlinable var hasCursor: Bool {
        /// Determines whether the pointer follows device motion.
        /// 
        /// This is not meaningful for keyboard devices, which
        /// don't have a pointer.
        get {
            let rv = ((gdk_device_get_has_cursor(device_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the current modifier state of the keyboard.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable var modifierState: ModifierType {
        /// Retrieves the current modifier state of the keyboard.
        /// 
        /// This is only relevant for keyboard devices.
        get {
            let rv = ModifierType(gdk_device_get_modifier_state(device_ptr))
            return rv
        }
    }

    /// The device name.
    @inlinable var name: String! {
        /// The name of the device, suitable for showing in a user interface.
        get {
            let rv = gdk_device_get_name(device_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves whether the Num Lock modifier of the keyboard is locked.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable var numLockState: Bool {
        /// Retrieves whether the Num Lock modifier of the keyboard is locked.
        /// 
        /// This is only relevant for keyboard devices.
        get {
            let rv = ((gdk_device_get_num_lock_state(device_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the number of touch points associated to `device`.
    @inlinable var numTouches: Int {
        /// Retrieves the number of touch points associated to `device`.
        get {
            let rv = Int(gdk_device_get_num_touches(device_ptr))
            return rv
        }
    }

    /// Returns the product ID of this device.
    /// 
    /// This ID is retrieved from the device, and does not change.
    /// See [method`Gdk.Device.get_vendor_id`] for more information.
    @inlinable var productId: String! {
        /// Returns the product ID of this device.
        /// 
        /// This ID is retrieved from the device, and does not change.
        /// See [method`Gdk.Device.get_vendor_id`] for more information.
        get {
            let rv = gdk_device_get_product_id(device_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves whether the Scroll Lock modifier of the keyboard is locked.
    /// 
    /// This is only relevant for keyboard devices.
    @inlinable var scrollLockState: Bool {
        /// Retrieves whether the Scroll Lock modifier of the keyboard is locked.
        /// 
        /// This is only relevant for keyboard devices.
        get {
            let rv = ((gdk_device_get_scroll_lock_state(device_ptr)) != 0)
            return rv
        }
    }

    /// `GdkSeat` of this device.
    @inlinable var seat: SeatRef! {
        /// Returns the `GdkSeat` the device belongs to.
        get {
            let rv = SeatRef(gconstpointer: gconstpointer(gdk_device_get_seat(device_ptr)))
            return rv
        }
    }

    /// Source type for the device.
    @inlinable var source: GdkInputSource {
        /// Determines the type of the device.
        get {
            let rv = gdk_device_get_source(device_ptr)
            return rv
        }
    }

    /// Returns the timestamp of the last activity for this device.
    /// 
    /// In practice, this means the timestamp of the last event that was
    /// received from the OS for this device. (GTK may occasionally produce
    /// events for a device that are not received from the OS, and will not
    /// update the timestamp).
    @inlinable var timestamp: guint32 {
        /// Returns the timestamp of the last activity for this device.
        /// 
        /// In practice, this means the timestamp of the last event that was
        /// received from the OS for this device. (GTK may occasionally produce
        /// events for a device that are not received from the OS, and will not
        /// update the timestamp).
        get {
            let rv = gdk_device_get_timestamp(device_ptr)
            return rv
        }
    }

    /// Returns the vendor ID of this device.
    /// 
    /// This ID is retrieved from the device, and does not change.
    /// 
    /// This function, together with [method`Gdk.Device.get_product_id`],
    /// can be used to eg. compose `GSettings` paths to store settings
    /// for this device.
    /// 
    /// ```c
    ///  static GSettings *
    ///  get_device_settings (GdkDevice *device)
    ///  {
    ///    const char *vendor, *product;
    ///    GSettings *settings;
    ///    GdkDevice *device;
    ///    char *path;
    /// 
    ///    vendor = gdk_device_get_vendor_id (device);
    ///    product = gdk_device_get_product_id (device);
    /// 
    ///    path = g_strdup_printf ("/org/example/app/devices/`s:``s`/", vendor, product);
    ///    settings = g_settings_new_with_path (DEVICE_SCHEMA, path);
    ///    g_free (path);
    /// 
    ///    return settings;
    ///  }
    /// ```
    @inlinable var vendorId: String! {
        /// Returns the vendor ID of this device.
        /// 
        /// This ID is retrieved from the device, and does not change.
        /// 
        /// This function, together with [method`Gdk.Device.get_product_id`],
        /// can be used to eg. compose `GSettings` paths to store settings
        /// for this device.
        /// 
        /// ```c
        ///  static GSettings *
        ///  get_device_settings (GdkDevice *device)
        ///  {
        ///    const char *vendor, *product;
        ///    GSettings *settings;
        ///    GdkDevice *device;
        ///    char *path;
        /// 
        ///    vendor = gdk_device_get_vendor_id (device);
        ///    product = gdk_device_get_product_id (device);
        /// 
        ///    path = g_strdup_printf ("/org/example/app/devices/`s:``s`/", vendor, product);
        ///    settings = g_settings_new_with_path (DEVICE_SCHEMA, path);
        ///    g_free (path);
        /// 
        ///    return settings;
        ///  }
        /// ```
        get {
            let rv = gdk_device_get_vendor_id(device_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - DeviceTool Class

/// The `DeviceToolProtocol` protocol exposes the methods and properties of an underlying `GdkDeviceTool` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DeviceTool`.
/// Alternatively, use `DeviceToolRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A physical tool associated to a `GdkDevice`.
public protocol DeviceToolProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDeviceTool` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDeviceTool` instance.
    var device_tool_ptr: UnsafeMutablePointer<GdkDeviceTool>! { get }

    /// Required Initialiser for types conforming to `DeviceToolProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DeviceToolRef` type acts as a lightweight Swift reference to an underlying `GdkDeviceTool` instance.
/// It exposes methods that can operate on this data type through `DeviceToolProtocol` conformance.
/// Use `DeviceToolRef` only as an `unowned` reference to an existing `GdkDeviceTool` instance.
///
/// A physical tool associated to a `GdkDevice`.
public struct DeviceToolRef: DeviceToolProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDeviceTool` instance.
    /// For type-safe access, use the generated, typed pointer `device_tool_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DeviceToolRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDeviceTool>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDeviceTool>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDeviceTool>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDeviceTool>?) {
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

    /// Reference intialiser for a related type that implements `DeviceToolProtocol`
    @inlinable init<T: DeviceToolProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DeviceToolProtocol>(_ other: T) -> DeviceToolRef { DeviceToolRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DeviceTool` type acts as a reference-counted owner of an underlying `GdkDeviceTool` instance.
/// It provides the methods that can operate on this data type through `DeviceToolProtocol` conformance.
/// Use `DeviceTool` as a strong reference or owner of a `GdkDeviceTool` instance.
///
/// A physical tool associated to a `GdkDevice`.
open class DeviceTool: GLibObject.Object, DeviceToolProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDeviceTool>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDeviceTool>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDeviceTool>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDeviceTool>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDeviceTool`.
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDeviceTool>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DeviceToolProtocol`
    /// Will retain `GdkDeviceTool`.
    /// - Parameter other: an instance of a related type that implements `DeviceToolProtocol`
    @inlinable public init<T: DeviceToolProtocol>(deviceTool other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DeviceToolPropertyName: String, PropertyNameProtocol {
    /// The axes of the tool.
    case axes = "axes"
    /// The hardware ID of the tool.
    case hardwareId = "hardware-id"
    /// The serial number of the tool.
    case serial = "serial"
    /// The type of the tool.
    case toolType = "tool-type"
}

public extension DeviceToolProtocol {
    /// Bind a `DeviceToolPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DeviceToolPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DeviceTool property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DeviceToolPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DeviceTool property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DeviceToolPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DeviceToolSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The axes of the tool.
    case notifyAxes = "notify::axes"
    /// The hardware ID of the tool.
    case notifyHardwareId = "notify::hardware-id"
    /// The serial number of the tool.
    case notifySerial = "notify::serial"
    /// The type of the tool.
    case notifyToolType = "notify::tool-type"
}

// MARK: DeviceTool has no signals
// MARK: DeviceTool Class: DeviceToolProtocol extension (methods and fields)
public extension DeviceToolProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDeviceTool` instance.
    @inlinable var device_tool_ptr: UnsafeMutablePointer<GdkDeviceTool>! { return ptr?.assumingMemoryBound(to: GdkDeviceTool.self) }

    /// Gets the axes of the tool.
    @inlinable func getAxes() -> AxisFlags {
        let rv = AxisFlags(gdk_device_tool_get_axes(device_tool_ptr))
        return rv
    }

    /// Gets the hardware ID of this tool, or 0 if it's not known.
    /// 
    /// When non-zero, the identificator is unique for the given tool model,
    /// meaning that two identical tools will share the same `hardware_id`,
    /// but will have different serial numbers (see
    /// [method`Gdk.DeviceTool.get_serial`]).
    /// 
    /// This is a more concrete (and device specific) method to identify
    /// a `GdkDeviceTool` than [method`Gdk.DeviceTool.get_tool_type`],
    /// as a tablet may support multiple devices with the same
    /// `GdkDeviceToolType`, but different hardware identificators.
    @inlinable func getHardwareId() -> guint64 {
        let rv = gdk_device_tool_get_hardware_id(device_tool_ptr)
        return rv
    }

    /// Gets the serial number of this tool.
    /// 
    /// This value can be used to identify a physical tool
    /// (eg. a tablet pen) across program executions.
    @inlinable func getSerial() -> guint64 {
        let rv = gdk_device_tool_get_serial(device_tool_ptr)
        return rv
    }

    /// Gets the `GdkDeviceToolType` of the tool.
    @inlinable func getToolType() -> GdkDeviceToolType {
        let rv = gdk_device_tool_get_tool_type(device_tool_ptr)
        return rv
    }
    /// The axes of the tool.
    @inlinable var axes: AxisFlags {
        /// Gets the axes of the tool.
        get {
            let rv = AxisFlags(gdk_device_tool_get_axes(device_tool_ptr))
            return rv
        }
    }

    /// Gets the hardware ID of this tool, or 0 if it's not known.
    /// 
    /// When non-zero, the identificator is unique for the given tool model,
    /// meaning that two identical tools will share the same `hardware_id`,
    /// but will have different serial numbers (see
    /// [method`Gdk.DeviceTool.get_serial`]).
    /// 
    /// This is a more concrete (and device specific) method to identify
    /// a `GdkDeviceTool` than [method`Gdk.DeviceTool.get_tool_type`],
    /// as a tablet may support multiple devices with the same
    /// `GdkDeviceToolType`, but different hardware identificators.
    @inlinable var hardwareId: guint64 {
        /// Gets the hardware ID of this tool, or 0 if it's not known.
        /// 
        /// When non-zero, the identificator is unique for the given tool model,
        /// meaning that two identical tools will share the same `hardware_id`,
        /// but will have different serial numbers (see
        /// [method`Gdk.DeviceTool.get_serial`]).
        /// 
        /// This is a more concrete (and device specific) method to identify
        /// a `GdkDeviceTool` than [method`Gdk.DeviceTool.get_tool_type`],
        /// as a tablet may support multiple devices with the same
        /// `GdkDeviceToolType`, but different hardware identificators.
        get {
            let rv = gdk_device_tool_get_hardware_id(device_tool_ptr)
            return rv
        }
    }

    /// The serial number of the tool.
    @inlinable var serial: guint64 {
        /// Gets the serial number of this tool.
        /// 
        /// This value can be used to identify a physical tool
        /// (eg. a tablet pen) across program executions.
        get {
            let rv = gdk_device_tool_get_serial(device_tool_ptr)
            return rv
        }
    }

    /// Gets the `GdkDeviceToolType` of the tool.
    @inlinable var toolType: GdkDeviceToolType {
        /// Gets the `GdkDeviceToolType` of the tool.
        get {
            let rv = gdk_device_tool_get_tool_type(device_tool_ptr)
            return rv
        }
    }


}



// MARK: - Display Class

/// The `DisplayProtocol` protocol exposes the methods and properties of an underlying `GdkDisplay` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Display`.
/// Alternatively, use `DisplayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkDisplay` objects are the GDK representation of a workstation.
/// 
/// Their purpose are two-fold:
/// 
/// - To manage and provide information about input devices (pointers, keyboards, etc)
/// - To manage and provide information about output devices (monitors, projectors, etc)
/// 
/// Most of the input device handling has been factored out into separate
/// [class`Gdk.Seat`] objects. Every display has a one or more seats, which
/// can be accessed with [method`Gdk.Display.get_default_seat`] and
/// [method`Gdk.Display.list_seats`].
/// 
/// Output devices are represented by [class`Gdk.Monitor`] objects, which can
/// be accessed with [method`Gdk.Display.get_monitor_at_surface`] and similar APIs.
public protocol DisplayProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDisplay` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDisplay` instance.
    var display_ptr: UnsafeMutablePointer<GdkDisplay>! { get }

    /// Required Initialiser for types conforming to `DisplayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DisplayRef` type acts as a lightweight Swift reference to an underlying `GdkDisplay` instance.
/// It exposes methods that can operate on this data type through `DisplayProtocol` conformance.
/// Use `DisplayRef` only as an `unowned` reference to an existing `GdkDisplay` instance.
///
/// `GdkDisplay` objects are the GDK representation of a workstation.
/// 
/// Their purpose are two-fold:
/// 
/// - To manage and provide information about input devices (pointers, keyboards, etc)
/// - To manage and provide information about output devices (monitors, projectors, etc)
/// 
/// Most of the input device handling has been factored out into separate
/// [class`Gdk.Seat`] objects. Every display has a one or more seats, which
/// can be accessed with [method`Gdk.Display.get_default_seat`] and
/// [method`Gdk.Display.list_seats`].
/// 
/// Output devices are represented by [class`Gdk.Monitor`] objects, which can
/// be accessed with [method`Gdk.Display.get_monitor_at_surface`] and similar APIs.
public struct DisplayRef: DisplayProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDisplay` instance.
    /// For type-safe access, use the generated, typed pointer `display_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DisplayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDisplay>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDisplay>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDisplay>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDisplay>?) {
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

    /// Reference intialiser for a related type that implements `DisplayProtocol`
    @inlinable init<T: DisplayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DisplayProtocol>(_ other: T) -> DisplayRef { DisplayRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GdkDisplay`.
    /// 
    /// This is a convenience function for:
    /// `gdk_display_manager_get_default_display (gdk_display_manager_get ())`.
    @inlinable static func getDefault() -> DisplayRef! {
        guard let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_get_default())) else { return nil }
        return rv
    }

    /// Opens a display.
    @inlinable static func open(displayName: UnsafePointer<CChar>!) -> DisplayRef! {
        guard let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_open(displayName))) else { return nil }
        return rv
    }
}

/// The `Display` type acts as a reference-counted owner of an underlying `GdkDisplay` instance.
/// It provides the methods that can operate on this data type through `DisplayProtocol` conformance.
/// Use `Display` as a strong reference or owner of a `GdkDisplay` instance.
///
/// `GdkDisplay` objects are the GDK representation of a workstation.
/// 
/// Their purpose are two-fold:
/// 
/// - To manage and provide information about input devices (pointers, keyboards, etc)
/// - To manage and provide information about output devices (monitors, projectors, etc)
/// 
/// Most of the input device handling has been factored out into separate
/// [class`Gdk.Seat`] objects. Every display has a one or more seats, which
/// can be accessed with [method`Gdk.Display.get_default_seat`] and
/// [method`Gdk.Display.list_seats`].
/// 
/// Output devices are represented by [class`Gdk.Monitor`] objects, which can
/// be accessed with [method`Gdk.Display.get_monitor_at_surface`] and similar APIs.
open class Display: GLibObject.Object, DisplayProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDisplay>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDisplay>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDisplay>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDisplay>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDisplay`.
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDisplay>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DisplayProtocol`
    /// Will retain `GdkDisplay`.
    /// - Parameter other: an instance of a related type that implements `DisplayProtocol`
    @inlinable public init<T: DisplayProtocol>(display other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the default `GdkDisplay`.
    /// 
    /// This is a convenience function for:
    /// `gdk_display_manager_get_default_display (gdk_display_manager_get ())`.
    @inlinable public static func getDefault() -> Display! {
        guard let rv = Display(gconstpointer: gconstpointer(gdk_display_get_default())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Opens a display.
    @inlinable public static func open(displayName: UnsafePointer<CChar>!) -> Display! {
        guard let rv = Display(gconstpointer: gconstpointer(gdk_display_open(displayName))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum DisplayPropertyName: String, PropertyNameProtocol {
    /// `true` if the display properly composites the alpha channel.
    case composited = "composited"
    /// `true` if the display supports input shapes.
    case inputShapes = "input-shapes"
    /// `true` if the display supports an alpha channel.
    case rgba = "rgba"
}

public extension DisplayProtocol {
    /// Bind a `DisplayPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DisplayPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Display property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DisplayPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Display property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DisplayPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DisplaySignalName: String, SignalNameProtocol {
    /// Emitted when the connection to the windowing system for `display` is closed.
    case closed = "closed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the connection to the windowing system for `display` is opened.
    case opened = "opened"
    /// Emitted whenever a new seat is made known to the windowing system.
    case seatAdded = "seat-added"
    /// Emitted whenever a seat is removed by the windowing system.
    case seatRemoved = "seat-removed"
    /// Emitted whenever a setting changes its value.
    case settingChanged = "setting-changed"
    /// `true` if the display properly composites the alpha channel.
    case notifyComposited = "notify::composited"
    /// `true` if the display supports input shapes.
    case notifyInputShapes = "notify::input-shapes"
    /// `true` if the display supports an alpha channel.
    case notifyRgba = "notify::rgba"
}

// MARK: Display signals
public extension DisplayProtocol {
    /// Connect a Swift signal handler to the given, typed `DisplaySignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DisplaySignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DisplaySignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DisplaySignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the connection to the windowing system for `display` is closed.
    /// - Note: This represents the underlying `closed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter isError: `true` if the display was closed due to an error
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `closed` signal is emitted
    @discardableResult @inlinable func onClosed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef, _ isError: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayRef, Bool, Void>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf), ((arg1) != 0))
            return output
        }
        return connect(
            signal: .closed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `closed` signal for using the `connect(signal:)` methods
    static var closedSignal: DisplaySignalName { .closed }
    
    /// Emitted when the connection to the windowing system for `display` is opened.
    /// - Note: This represents the underlying `opened` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `opened` signal is emitted
    @discardableResult @inlinable func onOpened(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DisplayRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .opened,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `opened` signal for using the `connect(signal:)` methods
    static var openedSignal: DisplaySignalName { .opened }
    
    /// Emitted whenever a new seat is made known to the windowing system.
    /// - Note: This represents the underlying `seat-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter seat: the seat that was just added
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `seatAdded` signal is emitted
    @discardableResult @inlinable func onSeatAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef, _ seat: SeatRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayRef, SeatRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf), SeatRef(raw: arg1))
            return output
        }
        return connect(
            signal: .seatAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `seat-added` signal for using the `connect(signal:)` methods
    static var seatAddedSignal: DisplaySignalName { .seatAdded }
    
    /// Emitted whenever a seat is removed by the windowing system.
    /// - Note: This represents the underlying `seat-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter seat: the seat that was just removed
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `seatRemoved` signal is emitted
    @discardableResult @inlinable func onSeatRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef, _ seat: SeatRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayRef, SeatRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf), SeatRef(raw: arg1))
            return output
        }
        return connect(
            signal: .seatRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `seat-removed` signal for using the `connect(signal:)` methods
    static var seatRemovedSignal: DisplaySignalName { .seatRemoved }
    
    /// Emitted whenever a setting changes its value.
    /// - Note: This represents the underlying `setting-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter setting: the name of the setting that changed
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `settingChanged` signal is emitted
    @discardableResult @inlinable func onSettingChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef, _ setting: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return connect(
            signal: .settingChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `setting-changed` signal for using the `connect(signal:)` methods
    static var settingChangedSignal: DisplaySignalName { .settingChanged }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::composited` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyComposited` signal is emitted
    @discardableResult @inlinable func onNotifyComposited(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyComposited,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::composited` signal for using the `connect(signal:)` methods
    static var notifyCompositedSignal: DisplaySignalName { .notifyComposited }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::input-shapes` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyInputShapes` signal is emitted
    @discardableResult @inlinable func onNotifyInputShapes(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyInputShapes,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::input-shapes` signal for using the `connect(signal:)` methods
    static var notifyInputShapesSignal: DisplaySignalName { .notifyInputShapes }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::rgba` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRgba` signal is emitted
    @discardableResult @inlinable func onNotifyRgba(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRgba,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::rgba` signal for using the `connect(signal:)` methods
    static var notifyRgbaSignal: DisplaySignalName { .notifyRgba }
    
}

// MARK: Display Class: DisplayProtocol extension (methods and fields)
public extension DisplayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDisplay` instance.
    @inlinable var display_ptr: UnsafeMutablePointer<GdkDisplay>! { return ptr?.assumingMemoryBound(to: GdkDisplay.self) }

    /// Emits a short beep on `display`
    @inlinable func beep() {
        gdk_display_beep(display_ptr)
    
    }

    /// Closes the connection to the windowing system for the given display.
    /// 
    /// This cleans up associated resources.
    @inlinable func close() {
        gdk_display_close(display_ptr)
    
    }

    /// Returns `true` if there is an ongoing grab on `device` for `display`.
    @inlinable func deviceIsGrabbed<DeviceT: DeviceProtocol>(device: DeviceT) -> Bool {
        let rv = ((gdk_display_device_is_grabbed(display_ptr, device.device_ptr)) != 0)
        return rv
    }

    /// Flushes any requests queued for the windowing system.
    /// 
    /// This happens automatically when the main loop blocks waiting for new events,
    /// but if your application is drawing without returning control to the main loop,
    /// you may need to call this function explicitly. A common case where this function
    /// needs to be called is when an application is executing drawing commands
    /// from a thread other than the thread where the main loop is running.
    /// 
    /// This is most useful for X11. On windowing systems where requests are
    /// handled synchronously, this function will do nothing.
    @inlinable func flush() {
        gdk_display_flush(display_ptr)
    
    }

    /// Returns a `GdkAppLaunchContext` suitable for launching
    /// applications on the given display.
    @inlinable func getAppLaunchContext() -> AppLaunchContextRef! {
        let rv = AppLaunchContextRef(gconstpointer: gconstpointer(gdk_display_get_app_launch_context(display_ptr)))
        return rv
    }

    /// Gets the clipboard used for copy/paste operations.
    @inlinable func getClipboard() -> ClipboardRef! {
        let rv = ClipboardRef(gconstpointer: gconstpointer(gdk_display_get_clipboard(display_ptr)))
        return rv
    }

    /// Returns the default `GdkSeat` for this display.
    /// 
    /// Note that a display may not have a seat. In this case,
    /// this function will return `nil`.
    @inlinable func getDefaultSeat() -> SeatRef! {
        let rv = SeatRef(gconstpointer: gconstpointer(gdk_display_get_default_seat(display_ptr)))
        return rv
    }

    /// Gets the monitor in which the largest area of `surface`
    /// resides.
    /// 
    /// Returns a monitor close to `surface` if it is outside
    /// of all monitors.
    @inlinable func getMonitorAt<SurfaceT: SurfaceProtocol>(surface: SurfaceT) -> MonitorRef! {
        let rv = MonitorRef(gconstpointer: gconstpointer(gdk_display_get_monitor_at_surface(display_ptr, surface.surface_ptr)))
        return rv
    }

    /// Gets the list of monitors associated with this display.
    /// 
    /// Subsequent calls to this function will always return the
    /// same list for the same display.
    /// 
    /// You can listen to the GListModel`items-changed` signal on
    /// this list to monitor changes to the monitor of this display.
    @inlinable func getMonitors() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gdk_display_get_monitors(display_ptr))
        return rv
    }

    /// Gets the name of the display.
    @inlinable func getName() -> String! {
        let rv = gdk_display_get_name(display_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the clipboard used for the primary selection.
    /// 
    /// On backends where the primary clipboard is not supported natively,
    /// GDK emulates this clipboard locally.
    @inlinable func getPrimaryClipboard() -> ClipboardRef! {
        let rv = ClipboardRef(gconstpointer: gconstpointer(gdk_display_get_primary_clipboard(display_ptr)))
        return rv
    }

    /// Retrieves a desktop-wide setting such as double-click time
    /// for the `display`.
    @inlinable func getSetting<ValueT: GLibObject.ValueProtocol>(name: UnsafePointer<CChar>!, value: ValueT) -> Bool {
        let rv = ((gdk_display_get_setting(display_ptr, name, value.value_ptr)) != 0)
        return rv
    }

    /// Gets the startup notification ID for a Wayland display, or `nil`
    /// if no ID has been defined.
    @inlinable func getStartupNotificationId() -> String! {
        let rv = gdk_display_get_startup_notification_id(display_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the list of seats known to `display`.
    @inlinable func listSeats() -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_display_list_seats(display_ptr))
        return rv
    }

    /// Returns the keyvals bound to `keycode`.
    /// 
    /// The Nth `GdkKeymapKey` in `keys` is bound to the Nth keyval in `keyvals`.
    /// 
    /// When a keycode is pressed by the user, the keyval from
    /// this list of entries is selected by considering the effective
    /// keyboard group and level.
    /// 
    /// Free the returned arrays with `g_free()`.
    @inlinable func map(keycode: Int, keys: UnsafeMutablePointer<UnsafeMutablePointer<GdkKeymapKey>?>! = nil, keyvals: UnsafeMutablePointer<UnsafeMutablePointer<guint>?>! = nil, nEntries: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gdk_display_map_keycode(display_ptr, guint(keycode), keys, keyvals, nEntries)) != 0)
        return rv
    }

    /// Obtains a list of keycode/group/level combinations that will
    /// generate `keyval`.
    /// 
    /// Groups and levels are two kinds of keyboard mode; in general, the level
    /// determines whether the top or bottom symbol on a key is used, and the
    /// group determines whether the left or right symbol is used.
    /// 
    /// On US keyboards, the shift key changes the keyboard level, and there
    /// are no groups. A group switch key might convert a keyboard between
    /// Hebrew to English modes, for example.
    /// 
    /// `GdkEventKey` contains a `group` field that indicates the active
    /// keyboard group. The level is computed from the modifier mask.
    /// 
    /// The returned array should be freed with `g_free()`.
    @inlinable func map(keyval: Int, keys: UnsafeMutablePointer<UnsafeMutablePointer<GdkKeymapKey>?>!, nKeys: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gdk_display_map_keyval(display_ptr, guint(keyval), keys, nKeys)) != 0)
        return rv
    }

    /// Indicates to the GUI environment that the application has
    /// finished loading, using a given identifier.
    /// 
    /// GTK will call this function automatically for [class`Gtk.Window`]
    /// with custom startup-notification identifier unless
    /// [method`Gtk.Window.set_auto_startup_notification`]
    /// is called to disable that feature.
    @inlinable func notifyStartupComplete(startupId: UnsafePointer<CChar>!) {
        gdk_display_notify_startup_complete(display_ptr, startupId)
    
    }

    /// Appends the given event onto the front of the event
    /// queue for `display`.
    /// 
    /// This function is only useful in very special situations
    /// and should not be used by applications.
    @inlinable func put<EventT: EventProtocol>(event: EventT) {
        gdk_display_put_event(display_ptr, event.event_ptr)
    
    }

    /// Returns `true` if the display supports input shapes.
    /// 
    /// This means that [method`Gdk.Surface.set_input_region`] can
    /// be used to modify the input shape of surfaces on `display`.
    /// 
    /// On modern displays, this value is always `true`.
    @inlinable func supportsInputShapes() -> Bool {
        let rv = ((gdk_display_supports_input_shapes(display_ptr)) != 0)
        return rv
    }

    /// Flushes any requests queued for the windowing system and waits until all
    /// requests have been handled.
    /// 
    /// This is often used for making sure that the display is synchronized
    /// with the current state of the program. Calling [method`Gdk.Display.sync`]
    /// before [method`GdkX11.Display.error_trap_pop`] makes sure that any errors
    /// generated from earlier requests are handled before the error trap is removed.
    /// 
    /// This is most useful for X11. On windowing systems where requests are
    /// handled synchronously, this function will do nothing.
    @inlinable func sync() {
        gdk_display_sync(display_ptr)
    
    }

    /// Translates the contents of a `GdkEventKey` into a keyval, effective group,
    /// and level.
    /// 
    /// Modifiers that affected the translation and are thus unavailable for
    /// application use are returned in `consumed_modifiers`.
    /// 
    /// The `effective_group` is the group that was actually used for the
    /// translation; some keys such as Enter are not affected by the active
    /// keyboard group. The `level` is derived from `state`.
    /// 
    /// `consumed_modifiers` gives modifiers that should be masked out
    /// from `state` when comparing this key press to a keyboard shortcut.
    /// For instance, on a US keyboard, the `plus` symbol is shifted, so
    /// when comparing a key press to a `&lt;Control&gt;plus` accelerator `&lt;Shift&gt;`
    /// should be masked out.
    /// 
    /// This function should rarely be needed, since `GdkEventKey` already
    /// contains the translated keyval. It is exported for the benefit of
    /// virtualized test environments.
    @inlinable func translateKey(keycode: Int, state: ModifierType, group: Int, keyval: UnsafeMutablePointer<guint>! = nil, effectiveGroup: UnsafeMutablePointer<gint>! = nil, level: UnsafeMutablePointer<gint>! = nil, consumed: UnsafeMutablePointer<GdkModifierType>! = nil) -> Bool {
        let rv = ((gdk_display_translate_key(display_ptr, guint(keycode), state.value, gint(group), keyval, effectiveGroup, level, consumed)) != 0)
        return rv
    }
    /// Returns a `GdkAppLaunchContext` suitable for launching
    /// applications on the given display.
    @inlinable var appLaunchContext: AppLaunchContextRef! {
        /// Returns a `GdkAppLaunchContext` suitable for launching
        /// applications on the given display.
        get {
            let rv = AppLaunchContextRef(gconstpointer: gconstpointer(gdk_display_get_app_launch_context(display_ptr)))
            return rv
        }
    }

    /// Gets the clipboard used for copy/paste operations.
    @inlinable var clipboard: ClipboardRef! {
        /// Gets the clipboard used for copy/paste operations.
        get {
            let rv = ClipboardRef(gconstpointer: gconstpointer(gdk_display_get_clipboard(display_ptr)))
            return rv
        }
    }

    /// Returns the default `GdkSeat` for this display.
    /// 
    /// Note that a display may not have a seat. In this case,
    /// this function will return `nil`.
    @inlinable var defaultSeat: SeatRef! {
        /// Returns the default `GdkSeat` for this display.
        /// 
        /// Note that a display may not have a seat. In this case,
        /// this function will return `nil`.
        get {
            let rv = SeatRef(gconstpointer: gconstpointer(gdk_display_get_default_seat(display_ptr)))
            return rv
        }
    }

    /// Finds out if the display has been closed.
    @inlinable var isClosed: Bool {
        /// Finds out if the display has been closed.
        get {
            let rv = ((gdk_display_is_closed(display_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether surfaces can reasonably be expected to have
    /// their alpha channel drawn correctly on the screen.
    /// 
    /// Check [method`Gdk.Display.is_rgba`] for whether the display
    /// supports an alpha channel.
    /// 
    /// On X11 this function returns whether a compositing manager is
    /// compositing on `display`.
    /// 
    /// On modern displays, this value is always `true`.
    @inlinable var isComposited: Bool {
        /// Returns whether surfaces can reasonably be expected to have
        /// their alpha channel drawn correctly on the screen.
        /// 
        /// Check [method`Gdk.Display.is_rgba`] for whether the display
        /// supports an alpha channel.
        /// 
        /// On X11 this function returns whether a compositing manager is
        /// compositing on `display`.
        /// 
        /// On modern displays, this value is always `true`.
        get {
            let rv = ((gdk_display_is_composited(display_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether surfaces on this `display` are created with an
    /// alpha channel.
    /// 
    /// Even if a `true` is returned, it is possible that the
    /// surface’s alpha channel won’t be honored when displaying the
    /// surface on the screen: in particular, for X an appropriate
    /// windowing manager and compositing manager must be running to
    /// provide appropriate display. Use [method`Gdk.Display.is_composited`]
    /// to check if that is the case.
    /// 
    /// On modern displays, this value is always `true`.
    @inlinable var isRgba: Bool {
        /// Returns whether surfaces on this `display` are created with an
        /// alpha channel.
        /// 
        /// Even if a `true` is returned, it is possible that the
        /// surface’s alpha channel won’t be honored when displaying the
        /// surface on the screen: in particular, for X an appropriate
        /// windowing manager and compositing manager must be running to
        /// provide appropriate display. Use [method`Gdk.Display.is_composited`]
        /// to check if that is the case.
        /// 
        /// On modern displays, this value is always `true`.
        get {
            let rv = ((gdk_display_is_rgba(display_ptr)) != 0)
            return rv
        }
    }

    /// Gets the list of monitors associated with this display.
    /// 
    /// Subsequent calls to this function will always return the
    /// same list for the same display.
    /// 
    /// You can listen to the GListModel`items-changed` signal on
    /// this list to monitor changes to the monitor of this display.
    @inlinable var monitors: GIO.ListModelRef! {
        /// Gets the list of monitors associated with this display.
        /// 
        /// Subsequent calls to this function will always return the
        /// same list for the same display.
        /// 
        /// You can listen to the GListModel`items-changed` signal on
        /// this list to monitor changes to the monitor of this display.
        get {
            let rv = GIO.ListModelRef(gdk_display_get_monitors(display_ptr))
            return rv
        }
    }

    /// Gets the name of the display.
    @inlinable var name: String! {
        /// Gets the name of the display.
        get {
            let rv = gdk_display_get_name(display_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the clipboard used for the primary selection.
    /// 
    /// On backends where the primary clipboard is not supported natively,
    /// GDK emulates this clipboard locally.
    @inlinable var primaryClipboard: ClipboardRef! {
        /// Gets the clipboard used for the primary selection.
        /// 
        /// On backends where the primary clipboard is not supported natively,
        /// GDK emulates this clipboard locally.
        get {
            let rv = ClipboardRef(gconstpointer: gconstpointer(gdk_display_get_primary_clipboard(display_ptr)))
            return rv
        }
    }

    /// Gets the startup notification ID for a Wayland display, or `nil`
    /// if no ID has been defined.
    @inlinable var startupNotificationId: String! {
        /// Gets the startup notification ID for a Wayland display, or `nil`
        /// if no ID has been defined.
        get {
            let rv = gdk_display_get_startup_notification_id(display_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - DisplayManager Class

/// The `DisplayManagerProtocol` protocol exposes the methods and properties of an underlying `GdkDisplayManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DisplayManager`.
/// Alternatively, use `DisplayManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A singleton object that offers notification when displays appear or
/// disappear.
/// 
/// You can use [func`Gdk.DisplayManager.get`] to obtain the `GdkDisplayManager`
/// singleton, but that should be rarely necessary. Typically, initializing
/// GTK opens a display that you can work with without ever accessing the
/// `GdkDisplayManager`.
/// 
/// The GDK library can be built with support for multiple backends.
/// The `GdkDisplayManager` object determines which backend is used
/// at runtime.
/// 
/// In the rare case that you need to influence which of the backends
/// is being used, you can use [func`Gdk.set_allowed_backends`]. Note
/// that you need to call this function before initializing GTK.
/// 
/// ## Backend-specific code
/// 
/// When writing backend-specific code that is supposed to work with
/// multiple GDK backends, you have to consider both compile time and
/// runtime. At compile time, use the `GDK_WINDOWING_X11`, `GDK_WINDOWING_WIN32`
/// macros, etc. to find out which backends are present in the GDK library
/// you are building your application against. At runtime, use type-check
/// macros like `GDK_IS_X11_DISPLAY()` to find out which backend is in use:
/// 
/// ```c
/// `ifdef` GDK_WINDOWING_X11
///   if (GDK_IS_X11_DISPLAY (display))
///     {
///       // make X11-specific calls here
///     }
///   else
/// `endif`
/// `ifdef` GDK_WINDOWING_MACOS
///   if (GDK_IS_MACOS_DISPLAY (display))
///     {
///       // make Quartz-specific calls here
///     }
///   else
/// `endif`
///   g_error ("Unsupported GDK backend");
/// ```
public protocol DisplayManagerProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDisplayManager` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDisplayManager` instance.
    var display_manager_ptr: UnsafeMutablePointer<GdkDisplayManager>! { get }

    /// Required Initialiser for types conforming to `DisplayManagerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DisplayManagerRef` type acts as a lightweight Swift reference to an underlying `GdkDisplayManager` instance.
/// It exposes methods that can operate on this data type through `DisplayManagerProtocol` conformance.
/// Use `DisplayManagerRef` only as an `unowned` reference to an existing `GdkDisplayManager` instance.
///
/// A singleton object that offers notification when displays appear or
/// disappear.
/// 
/// You can use [func`Gdk.DisplayManager.get`] to obtain the `GdkDisplayManager`
/// singleton, but that should be rarely necessary. Typically, initializing
/// GTK opens a display that you can work with without ever accessing the
/// `GdkDisplayManager`.
/// 
/// The GDK library can be built with support for multiple backends.
/// The `GdkDisplayManager` object determines which backend is used
/// at runtime.
/// 
/// In the rare case that you need to influence which of the backends
/// is being used, you can use [func`Gdk.set_allowed_backends`]. Note
/// that you need to call this function before initializing GTK.
/// 
/// ## Backend-specific code
/// 
/// When writing backend-specific code that is supposed to work with
/// multiple GDK backends, you have to consider both compile time and
/// runtime. At compile time, use the `GDK_WINDOWING_X11`, `GDK_WINDOWING_WIN32`
/// macros, etc. to find out which backends are present in the GDK library
/// you are building your application against. At runtime, use type-check
/// macros like `GDK_IS_X11_DISPLAY()` to find out which backend is in use:
/// 
/// ```c
/// `ifdef` GDK_WINDOWING_X11
///   if (GDK_IS_X11_DISPLAY (display))
///     {
///       // make X11-specific calls here
///     }
///   else
/// `endif`
/// `ifdef` GDK_WINDOWING_MACOS
///   if (GDK_IS_MACOS_DISPLAY (display))
///     {
///       // make Quartz-specific calls here
///     }
///   else
/// `endif`
///   g_error ("Unsupported GDK backend");
/// ```
public struct DisplayManagerRef: DisplayManagerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDisplayManager` instance.
    /// For type-safe access, use the generated, typed pointer `display_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DisplayManagerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDisplayManager>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDisplayManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDisplayManager>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDisplayManager>?) {
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

    /// Reference intialiser for a related type that implements `DisplayManagerProtocol`
    @inlinable init<T: DisplayManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DisplayManagerProtocol>(_ other: T) -> DisplayManagerRef { DisplayManagerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the singleton `GdkDisplayManager` object.
    /// 
    /// When called for the first time, this function consults the
    /// `GDK_BACKEND` environment variable to find out which of the
    /// supported GDK backends to use (in case GDK has been compiled
    /// with multiple backends).
    /// 
    /// Applications can use [func`set_allowed_backends`] to limit what
    /// backends wil be used.
    @inlinable static func displayManagerGet() -> DisplayManagerRef! {
        guard let rv = DisplayManagerRef(gconstpointer: gconstpointer(gdk_display_manager_get())) else { return nil }
        return rv
    }
}

/// The `DisplayManager` type acts as a reference-counted owner of an underlying `GdkDisplayManager` instance.
/// It provides the methods that can operate on this data type through `DisplayManagerProtocol` conformance.
/// Use `DisplayManager` as a strong reference or owner of a `GdkDisplayManager` instance.
///
/// A singleton object that offers notification when displays appear or
/// disappear.
/// 
/// You can use [func`Gdk.DisplayManager.get`] to obtain the `GdkDisplayManager`
/// singleton, but that should be rarely necessary. Typically, initializing
/// GTK opens a display that you can work with without ever accessing the
/// `GdkDisplayManager`.
/// 
/// The GDK library can be built with support for multiple backends.
/// The `GdkDisplayManager` object determines which backend is used
/// at runtime.
/// 
/// In the rare case that you need to influence which of the backends
/// is being used, you can use [func`Gdk.set_allowed_backends`]. Note
/// that you need to call this function before initializing GTK.
/// 
/// ## Backend-specific code
/// 
/// When writing backend-specific code that is supposed to work with
/// multiple GDK backends, you have to consider both compile time and
/// runtime. At compile time, use the `GDK_WINDOWING_X11`, `GDK_WINDOWING_WIN32`
/// macros, etc. to find out which backends are present in the GDK library
/// you are building your application against. At runtime, use type-check
/// macros like `GDK_IS_X11_DISPLAY()` to find out which backend is in use:
/// 
/// ```c
/// `ifdef` GDK_WINDOWING_X11
///   if (GDK_IS_X11_DISPLAY (display))
///     {
///       // make X11-specific calls here
///     }
///   else
/// `endif`
/// `ifdef` GDK_WINDOWING_MACOS
///   if (GDK_IS_MACOS_DISPLAY (display))
///     {
///       // make Quartz-specific calls here
///     }
///   else
/// `endif`
///   g_error ("Unsupported GDK backend");
/// ```
open class DisplayManager: GLibObject.Object, DisplayManagerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDisplayManager>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDisplayManager>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDisplayManager>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDisplayManager>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDisplayManager`.
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDisplayManager>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DisplayManagerProtocol`
    /// Will retain `GdkDisplayManager`.
    /// - Parameter other: an instance of a related type that implements `DisplayManagerProtocol`
    @inlinable public init<T: DisplayManagerProtocol>(displayManager other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the singleton `GdkDisplayManager` object.
    /// 
    /// When called for the first time, this function consults the
    /// `GDK_BACKEND` environment variable to find out which of the
    /// supported GDK backends to use (in case GDK has been compiled
    /// with multiple backends).
    /// 
    /// Applications can use [func`set_allowed_backends`] to limit what
    /// backends wil be used.
    @inlinable public static func displayManagerGet() -> DisplayManager! {
        guard let rv = DisplayManager(gconstpointer: gconstpointer(gdk_display_manager_get())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum DisplayManagerPropertyName: String, PropertyNameProtocol {
    /// The default display.
    case defaultDisplay = "default-display"
}

public extension DisplayManagerProtocol {
    /// Bind a `DisplayManagerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DisplayManagerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DisplayManager property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DisplayManagerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DisplayManager property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DisplayManagerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DisplayManagerSignalName: String, SignalNameProtocol {
    /// Emitted when a display is opened.
    case displayOpened = "display-opened"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The default display.
    case notifyDefaultDisplay = "notify::default-display"
}

// MARK: DisplayManager signals
public extension DisplayManagerProtocol {
    /// Connect a Swift signal handler to the given, typed `DisplayManagerSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DisplayManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DisplayManagerSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DisplayManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when a display is opened.
    /// - Note: This represents the underlying `display-opened` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter display: the opened display
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `displayOpened` signal is emitted
    @discardableResult @inlinable func onDisplayOpened(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayManagerRef, _ display: DisplayRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayManagerRef, DisplayRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayManagerRef(raw: unownedSelf), DisplayRef(raw: arg1))
            return output
        }
        return connect(
            signal: .displayOpened,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `display-opened` signal for using the `connect(signal:)` methods
    static var displayOpenedSignal: DisplayManagerSignalName { .displayOpened }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::default-display` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDefaultDisplay` signal is emitted
    @discardableResult @inlinable func onNotifyDefaultDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DisplayManagerRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DisplayManagerRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DisplayManagerRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDefaultDisplay,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::default-display` signal for using the `connect(signal:)` methods
    static var notifyDefaultDisplaySignal: DisplayManagerSignalName { .notifyDefaultDisplay }
    
}

// MARK: DisplayManager Class: DisplayManagerProtocol extension (methods and fields)
public extension DisplayManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDisplayManager` instance.
    @inlinable var display_manager_ptr: UnsafeMutablePointer<GdkDisplayManager>! { return ptr?.assumingMemoryBound(to: GdkDisplayManager.self) }

    /// Gets the default `GdkDisplay`.
    @inlinable func getDefaultDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_manager_get_default_display(display_manager_ptr)))
        return rv
    }

    /// List all currently open displays.
    @inlinable func listDisplays() -> GLib.SListRef! {
        let rv = GLib.SListRef(gdk_display_manager_list_displays(display_manager_ptr))
        return rv
    }

    /// Opens a display.
    @inlinable func openDisplay(name: UnsafePointer<CChar>!) -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_manager_open_display(display_manager_ptr, name)))
        return rv
    }

    /// Sets `display` as the default display.
    @inlinable func setDefault<DisplayT: DisplayProtocol>(display: DisplayT) {
        gdk_display_manager_set_default_display(display_manager_ptr, display.display_ptr)
    
    }
    /// Gets the default `GdkDisplay`.
    @inlinable var defaultDisplay: DisplayRef! {
        /// Gets the default `GdkDisplay`.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_manager_get_default_display(display_manager_ptr)))
            return rv
        }
        /// Sets `display` as the default display.
        nonmutating set {
            gdk_display_manager_set_default_display(display_manager_ptr, UnsafeMutablePointer<GdkDisplay>(newValue?.display_ptr))
        }
    }


}



// MARK: - Drag Class

/// The `DragProtocol` protocol exposes the methods and properties of an underlying `GdkDrag` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Drag`.
/// Alternatively, use `DragRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkDrag` object represents the source of an ongoing DND operation.
/// 
/// A `GdkDrag` is created when a drag is started, and stays alive for duration of
/// the DND operation. After a drag has been started with [func`Gdk.Drag.begin`],
/// the caller gets informed about the status of the ongoing drag operation
/// with signals on the `GdkDrag` object.
/// 
/// GTK provides a higher level abstraction based on top of these functions,
/// and so they are not normally needed in GTK applications. See the
/// "Drag and Drop" section of the GTK documentation for more information.
public protocol DragProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDrag` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDrag` instance.
    var drag_ptr: UnsafeMutablePointer<GdkDrag>! { get }

    /// Required Initialiser for types conforming to `DragProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DragRef` type acts as a lightweight Swift reference to an underlying `GdkDrag` instance.
/// It exposes methods that can operate on this data type through `DragProtocol` conformance.
/// Use `DragRef` only as an `unowned` reference to an existing `GdkDrag` instance.
///
/// The `GdkDrag` object represents the source of an ongoing DND operation.
/// 
/// A `GdkDrag` is created when a drag is started, and stays alive for duration of
/// the DND operation. After a drag has been started with [func`Gdk.Drag.begin`],
/// the caller gets informed about the status of the ongoing drag operation
/// with signals on the `GdkDrag` object.
/// 
/// GTK provides a higher level abstraction based on top of these functions,
/// and so they are not normally needed in GTK applications. See the
/// "Drag and Drop" section of the GTK documentation for more information.
public struct DragRef: DragProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDrag` instance.
    /// For type-safe access, use the generated, typed pointer `drag_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DragRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDrag>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDrag>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDrag>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDrag>?) {
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

    /// Reference intialiser for a related type that implements `DragProtocol`
    @inlinable init<T: DragProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DragProtocol>(_ other: T) -> DragRef { DragRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source. After this call, you
    /// probably want to set up the drag icon using the surface returned
    /// by [method`Gdk.Drag.get_drag_surface`].
    /// 
    /// This function returns a reference to the [class`Gdk.Drag`] object,
    /// but GTK keeps its own reference as well, as long as the DND operation
    /// is going on.
    /// 
    /// Note: if `actions` include `GDK_ACTION_MOVE`, you need to listen for
    /// the [signal`Gdk.Drag::dnd-finished`] signal and delete the data at
    /// the source if [method`Gdk.Drag.get_selected_action`] returns
    /// `GDK_ACTION_MOVE`.
    @inlinable static func begin<ContentProviderT: ContentProviderProtocol, DeviceT: DeviceProtocol, SurfaceT: SurfaceProtocol>(surface: SurfaceT, device: DeviceT, content: ContentProviderT, actions: DragAction, dx: CDouble, dy: CDouble) -> DragRef! {
        guard let rv = DragRef(gconstpointer: gconstpointer(gdk_drag_begin(surface.surface_ptr, device.device_ptr, content.content_provider_ptr, actions.value, dx, dy))) else { return nil }
        return rv
    }
}

/// The `Drag` type acts as a reference-counted owner of an underlying `GdkDrag` instance.
/// It provides the methods that can operate on this data type through `DragProtocol` conformance.
/// Use `Drag` as a strong reference or owner of a `GdkDrag` instance.
///
/// The `GdkDrag` object represents the source of an ongoing DND operation.
/// 
/// A `GdkDrag` is created when a drag is started, and stays alive for duration of
/// the DND operation. After a drag has been started with [func`Gdk.Drag.begin`],
/// the caller gets informed about the status of the ongoing drag operation
/// with signals on the `GdkDrag` object.
/// 
/// GTK provides a higher level abstraction based on top of these functions,
/// and so they are not normally needed in GTK applications. See the
/// "Drag and Drop" section of the GTK documentation for more information.
open class Drag: GLibObject.Object, DragProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDrag>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDrag>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drag` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDrag>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDrag>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDrag`.
    /// i.e., ownership is transferred to the `Drag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDrag>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DragProtocol`
    /// Will retain `GdkDrag`.
    /// - Parameter other: an instance of a related type that implements `DragProtocol`
    @inlinable public init<T: DragProtocol>(drag other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source. After this call, you
    /// probably want to set up the drag icon using the surface returned
    /// by [method`Gdk.Drag.get_drag_surface`].
    /// 
    /// This function returns a reference to the [class`Gdk.Drag`] object,
    /// but GTK keeps its own reference as well, as long as the DND operation
    /// is going on.
    /// 
    /// Note: if `actions` include `GDK_ACTION_MOVE`, you need to listen for
    /// the [signal`Gdk.Drag::dnd-finished`] signal and delete the data at
    /// the source if [method`Gdk.Drag.get_selected_action`] returns
    /// `GDK_ACTION_MOVE`.
    @inlinable public static func begin<ContentProviderT: ContentProviderProtocol, DeviceT: DeviceProtocol, SurfaceT: SurfaceProtocol>(surface: SurfaceT, device: DeviceT, content: ContentProviderT, actions: DragAction, dx: CDouble, dy: CDouble) -> Drag! {
        guard let rv = Drag(gconstpointer: gconstpointer(gdk_drag_begin(surface.surface_ptr, device.device_ptr, content.content_provider_ptr, actions.value, dx, dy))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum DragPropertyName: String, PropertyNameProtocol {
    /// The possible actions of this drag.
    case actions = "actions"
    /// The `GdkContentProvider`.
    case content = "content"
    /// The `GdkDevice` that is performing the drag.
    case device = "device"
    /// The `GdkDisplay` that the drag belongs to.
    case display = "display"
    /// The possible formats that the drag can provide its data in.
    case formats = "formats"
    /// The currently selected action of the drag.
    case selectedAction = "selected-action"
    /// The surface where the drag originates.
    case surface = "surface"
}

public extension DragProtocol {
    /// Bind a `DragPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DragPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Drag property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DragPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Drag property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DragPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DragSignalName: String, SignalNameProtocol {
    /// Emitted when the drag operation is cancelled.
    case cancel = "cancel"
    /// Emitted when the destination side has finished reading all data.
    /// 
    /// The drag object can now free all miscellaneous data.
    case dndFinished = "dnd-finished"
    /// Emitted when the drop operation is performed on an accepting client.
    case dropPerformed = "drop-performed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The possible actions of this drag.
    case notifyActions = "notify::actions"
    /// The `GdkContentProvider`.
    case notifyContent = "notify::content"
    /// The `GdkDevice` that is performing the drag.
    case notifyDevice = "notify::device"
    /// The `GdkDisplay` that the drag belongs to.
    case notifyDisplay = "notify::display"
    /// The possible formats that the drag can provide its data in.
    case notifyFormats = "notify::formats"
    /// The currently selected action of the drag.
    case notifySelectedAction = "notify::selected-action"
    /// The surface where the drag originates.
    case notifySurface = "notify::surface"
}

// MARK: Drag signals
public extension DragProtocol {
    /// Connect a Swift signal handler to the given, typed `DragSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DragSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DragSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DragSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the drag operation is cancelled.
    /// - Note: This represents the underlying `cancel` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter reason: The reason the drag was cancelled
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `cancel` signal is emitted
    @discardableResult @inlinable func onCancel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ reason: DragCancelReason) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, DragCancelReason, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), DragCancelReason(arg1))
            return output
        }
        return connect(
            signal: .cancel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `cancel` signal for using the `connect(signal:)` methods
    static var cancelSignal: DragSignalName { .cancel }
    
    /// Emitted when the destination side has finished reading all data.
    /// 
    /// The drag object can now free all miscellaneous data.
    /// - Note: This represents the underlying `dnd-finished` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dndFinished` signal is emitted
    @discardableResult @inlinable func onDndFinished(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DragRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .dndFinished,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `dnd-finished` signal for using the `connect(signal:)` methods
    static var dndFinishedSignal: DragSignalName { .dndFinished }
    
    /// Emitted when the drop operation is performed on an accepting client.
    /// - Note: This represents the underlying `drop-performed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dropPerformed` signal is emitted
    @discardableResult @inlinable func onDropPerformed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DragRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .dropPerformed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drop-performed` signal for using the `connect(signal:)` methods
    static var dropPerformedSignal: DragSignalName { .dropPerformed }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::actions` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyActions` signal is emitted
    @discardableResult @inlinable func onNotifyActions(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyActions,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::actions` signal for using the `connect(signal:)` methods
    static var notifyActionsSignal: DragSignalName { .notifyActions }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::content` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyContent` signal is emitted
    @discardableResult @inlinable func onNotifyContent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyContent,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::content` signal for using the `connect(signal:)` methods
    static var notifyContentSignal: DragSignalName { .notifyContent }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::device` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDevice` signal is emitted
    @discardableResult @inlinable func onNotifyDevice(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDevice,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::device` signal for using the `connect(signal:)` methods
    static var notifyDeviceSignal: DragSignalName { .notifyDevice }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::display` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDisplay` signal is emitted
    @discardableResult @inlinable func onNotifyDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDisplay,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::display` signal for using the `connect(signal:)` methods
    static var notifyDisplaySignal: DragSignalName { .notifyDisplay }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::formats` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFormats` signal is emitted
    @discardableResult @inlinable func onNotifyFormats(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFormats,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::formats` signal for using the `connect(signal:)` methods
    static var notifyFormatsSignal: DragSignalName { .notifyFormats }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::selected-action` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectedAction` signal is emitted
    @discardableResult @inlinable func onNotifySelectedAction(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectedAction,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selected-action` signal for using the `connect(signal:)` methods
    static var notifySelectedActionSignal: DragSignalName { .notifySelectedAction }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::surface` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySurface` signal is emitted
    @discardableResult @inlinable func onNotifySurface(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DragRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DragRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DragRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySurface,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::surface` signal for using the `connect(signal:)` methods
    static var notifySurfaceSignal: DragSignalName { .notifySurface }
    
}

// MARK: Drag Class: DragProtocol extension (methods and fields)
public extension DragProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDrag` instance.
    @inlinable var drag_ptr: UnsafeMutablePointer<GdkDrag>! { return ptr?.assumingMemoryBound(to: GdkDrag.self) }

    /// Informs GDK that the drop ended.
    /// 
    /// Passing `false` for `success` may trigger a drag cancellation
    /// animation.
    /// 
    /// This function is called by the drag source, and should be the
    /// last call before dropping the reference to the `drag`.
    /// 
    /// The `GdkDrag` will only take the first [method`Gdk.Drag.drop_done`]
    /// call as effective, if this function is called multiple times,
    /// all subsequent calls will be ignored.
    @inlinable func dropDone(success: Bool) {
        gdk_drag_drop_done(drag_ptr, gboolean((success) ? 1 : 0))
    
    }

    /// Determines the bitmask of possible actions proposed by the source.
    @inlinable func getActions() -> DragAction {
        let rv = DragAction(gdk_drag_get_actions(drag_ptr))
        return rv
    }

    /// Returns the `GdkContentProvider` associated to the `GdkDrag` object.
    @inlinable func getContent() -> ContentProviderRef! {
        let rv = ContentProviderRef(gconstpointer: gconstpointer(gdk_drag_get_content(drag_ptr)))
        return rv
    }

    /// Returns the `GdkDevice` associated to the `GdkDrag` object.
    @inlinable func getDevice() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_drag_get_device(drag_ptr)))
        return rv
    }

    /// Gets the `GdkDisplay` that the drag object was created for.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_drag_get_display(drag_ptr)))
        return rv
    }

    /// Returns the surface on which the drag icon should be rendered
    /// during the drag operation.
    /// 
    /// Note that the surface may not be available until the drag operation
    /// has begun. GDK will move the surface in accordance with the ongoing
    /// drag operation. The surface is owned by `drag` and will be destroyed
    /// when the drag operation is over.
    @inlinable func getDragSurface() -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_drag_get_drag_surface(drag_ptr)))
        return rv
    }

    /// Retrieves the formats supported by this `GdkDrag` object.
    @inlinable func getFormats() -> ContentFormatsRef! {
        let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_drag_get_formats(drag_ptr)))
        return rv
    }

    /// Determines the action chosen by the drag destination.
    @inlinable func getSelectedAction() -> DragAction {
        let rv = DragAction(gdk_drag_get_selected_action(drag_ptr))
        return rv
    }

    /// Returns the `GdkSurface` where the drag originates.
    @inlinable func getSurface() -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_drag_get_surface(drag_ptr)))
        return rv
    }

    /// Sets the position of the drag surface that will be kept
    /// under the cursor hotspot.
    /// 
    /// Initially, the hotspot is at the top left corner of the drag surface.
    @inlinable func setHotspot(hotX: Int, hotY: Int) {
        gdk_drag_set_hotspot(drag_ptr, gint(hotX), gint(hotY))
    
    }
    /// The possible actions of this drag.
    @inlinable var actions: DragAction {
        /// Determines the bitmask of possible actions proposed by the source.
        get {
            let rv = DragAction(gdk_drag_get_actions(drag_ptr))
            return rv
        }
    }

    /// The `GdkContentProvider`.
    @inlinable var content: ContentProviderRef! {
        /// Returns the `GdkContentProvider` associated to the `GdkDrag` object.
        get {
            let rv = ContentProviderRef(gconstpointer: gconstpointer(gdk_drag_get_content(drag_ptr)))
            return rv
        }
    }

    /// The `GdkDevice` that is performing the drag.
    @inlinable var device: DeviceRef! {
        /// Returns the `GdkDevice` associated to the `GdkDrag` object.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_drag_get_device(drag_ptr)))
            return rv
        }
    }

    /// The `GdkDisplay` that the drag belongs to.
    @inlinable var display: DisplayRef! {
        /// Gets the `GdkDisplay` that the drag object was created for.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_drag_get_display(drag_ptr)))
            return rv
        }
    }

    /// Returns the surface on which the drag icon should be rendered
    /// during the drag operation.
    /// 
    /// Note that the surface may not be available until the drag operation
    /// has begun. GDK will move the surface in accordance with the ongoing
    /// drag operation. The surface is owned by `drag` and will be destroyed
    /// when the drag operation is over.
    @inlinable var dragSurface: SurfaceRef! {
        /// Returns the surface on which the drag icon should be rendered
        /// during the drag operation.
        /// 
        /// Note that the surface may not be available until the drag operation
        /// has begun. GDK will move the surface in accordance with the ongoing
        /// drag operation. The surface is owned by `drag` and will be destroyed
        /// when the drag operation is over.
        get {
            let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_drag_get_drag_surface(drag_ptr)))
            return rv
        }
    }

    /// The possible formats that the drag can provide its data in.
    @inlinable var formats: ContentFormatsRef! {
        /// Retrieves the formats supported by this `GdkDrag` object.
        get {
            let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_drag_get_formats(drag_ptr)))
            return rv
        }
    }

    /// Determines the action chosen by the drag destination.
    @inlinable var selectedAction: DragAction {
        /// Determines the action chosen by the drag destination.
        get {
            let rv = DragAction(gdk_drag_get_selected_action(drag_ptr))
            return rv
        }
    }

    /// The surface where the drag originates.
    @inlinable var surface: SurfaceRef! {
        /// Returns the `GdkSurface` where the drag originates.
        get {
            let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_drag_get_surface(drag_ptr)))
            return rv
        }
    }


}



// MARK: - DrawContext Class

/// The `DrawContextProtocol` protocol exposes the methods and properties of an underlying `GdkDrawContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawContext`.
/// Alternatively, use `DrawContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base class for objects implementing different rendering methods.
/// 
/// `GdkDrawContext` is the base object used by contexts implementing different
/// rendering methods, such as [class`Gdk.CairoContext`] or [class`Gdk.GLContext`].
/// It provides shared functionality between those contexts.
/// 
/// You will always interact with one of those subclasses.
/// 
/// A `GdkDrawContext` is always associated with a single toplevel surface.
public protocol DrawContextProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDrawContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDrawContext` instance.
    var draw_context_ptr: UnsafeMutablePointer<GdkDrawContext>! { get }

    /// Required Initialiser for types conforming to `DrawContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DrawContextRef` type acts as a lightweight Swift reference to an underlying `GdkDrawContext` instance.
/// It exposes methods that can operate on this data type through `DrawContextProtocol` conformance.
/// Use `DrawContextRef` only as an `unowned` reference to an existing `GdkDrawContext` instance.
///
/// Base class for objects implementing different rendering methods.
/// 
/// `GdkDrawContext` is the base object used by contexts implementing different
/// rendering methods, such as [class`Gdk.CairoContext`] or [class`Gdk.GLContext`].
/// It provides shared functionality between those contexts.
/// 
/// You will always interact with one of those subclasses.
/// 
/// A `GdkDrawContext` is always associated with a single toplevel surface.
public struct DrawContextRef: DrawContextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDrawContext` instance.
    /// For type-safe access, use the generated, typed pointer `draw_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DrawContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDrawContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDrawContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDrawContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDrawContext>?) {
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

    /// Reference intialiser for a related type that implements `DrawContextProtocol`
    @inlinable init<T: DrawContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DrawContextProtocol>(_ other: T) -> DrawContextRef { DrawContextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DrawContext` type acts as a reference-counted owner of an underlying `GdkDrawContext` instance.
/// It provides the methods that can operate on this data type through `DrawContextProtocol` conformance.
/// Use `DrawContext` as a strong reference or owner of a `GdkDrawContext` instance.
///
/// Base class for objects implementing different rendering methods.
/// 
/// `GdkDrawContext` is the base object used by contexts implementing different
/// rendering methods, such as [class`Gdk.CairoContext`] or [class`Gdk.GLContext`].
/// It provides shared functionality between those contexts.
/// 
/// You will always interact with one of those subclasses.
/// 
/// A `GdkDrawContext` is always associated with a single toplevel surface.
open class DrawContext: GLibObject.Object, DrawContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDrawContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDrawContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDrawContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDrawContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDrawContext`.
    /// i.e., ownership is transferred to the `DrawContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDrawContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DrawContextProtocol`
    /// Will retain `GdkDrawContext`.
    /// - Parameter other: an instance of a related type that implements `DrawContextProtocol`
    @inlinable public init<T: DrawContextProtocol>(drawContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DrawContextPropertyName: String, PropertyNameProtocol {
    /// The `GdkDisplay` used to create the `GdkDrawContext`.
    case display = "display"
    /// The `GdkSurface` the context is bound to.
    case surface = "surface"
}

public extension DrawContextProtocol {
    /// Bind a `DrawContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DrawContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DrawContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DrawContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DrawContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DrawContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DrawContextSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `GdkDisplay` used to create the `GdkDrawContext`.
    case notifyDisplay = "notify::display"
    /// The `GdkSurface` the context is bound to.
    case notifySurface = "notify::surface"
}

// MARK: DrawContext has no signals
// MARK: DrawContext Class: DrawContextProtocol extension (methods and fields)
public extension DrawContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDrawContext` instance.
    @inlinable var draw_context_ptr: UnsafeMutablePointer<GdkDrawContext>! { return ptr?.assumingMemoryBound(to: GdkDrawContext.self) }

    /// Indicates that you are beginning the process of redrawing `region`
    /// on the `context`'s surface.
    /// 
    /// Calling this function begins a drawing operation using `context` on the
    /// surface that `context` was created from. The actual requirements and
    /// guarantees for the drawing operation vary for different implementations
    /// of drawing, so a [class`Gdk.CairoContext`] and a [class`Gdk.GLContext`]
    /// need to be treated differently.
    /// 
    /// A call to this function is a requirement for drawing and must be
    /// followed by a call to [method`Gdk.DrawContext.end_frame`], which will
    /// complete the drawing operation and ensure the contents become visible
    /// on screen.
    /// 
    /// Note that the `region` passed to this function is the minimum region that
    /// needs to be drawn and depending on implementation, windowing system and
    /// hardware in use, it might be necessary to draw a larger region. Drawing
    /// implementation must use [method`Gdk.DrawContext.get_frame_region``()` to
    /// query the region that must be drawn.
    /// 
    /// When using GTK, the widget system automatically places calls to
    /// `gdk_draw_context_begin_frame()` and `gdk_draw_context_end_frame()` via the
    /// use of [class`Gsk.Renderer`]s, so application code does not need to call
    /// these functions explicitly.
    @inlinable func beginFrame<RegionT: Cairo.RegionProtocol>(region: RegionT) {
        gdk_draw_context_begin_frame(draw_context_ptr, region._ptr)
    
    }

    /// Ends a drawing operation started with `gdk_draw_context_begin_frame()`.
    /// 
    /// This makes the drawing available on screen.
    /// See [method`Gdk.DrawContext.begin_frame`] for more details about drawing.
    /// 
    /// When using a [class`Gdk.GLContext`], this function may call ``glFlush()``
    /// implicitly before returning; it is not recommended to call ``glFlush()``
    /// explicitly before calling this function.
    @inlinable func endFrame() {
        gdk_draw_context_end_frame(draw_context_ptr)
    
    }

    /// Retrieves the `GdkDisplay` the `context` is created for
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_draw_context_get_display(draw_context_ptr)))
        return rv
    }

    /// Retrieves the region that is currently being repainted.
    /// 
    /// After a call to [method`Gdk.DrawContext.begin_frame`] this function will
    /// return a union of the region passed to that function and the area of the
    /// surface that the `context` determined needs to be repainted.
    /// 
    /// If `context` is not in between calls to [method`Gdk.DrawContext.begin_frame`]
    /// and [method`Gdk.DrawContext.end_frame`], `nil` will be returned.
    @inlinable func getFrameRegion() -> Cairo.RegionRef! {
        let rv = Cairo.RegionRef(gdk_draw_context_get_frame_region(draw_context_ptr))
        return rv
    }

    /// Retrieves the surface that `context` is bound to.
    @inlinable func getSurface() -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_draw_context_get_surface(draw_context_ptr)))
        return rv
    }
    /// The `GdkDisplay` used to create the `GdkDrawContext`.
    @inlinable var display: DisplayRef! {
        /// Retrieves the `GdkDisplay` the `context` is created for
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_draw_context_get_display(draw_context_ptr)))
            return rv
        }
    }

    /// Retrieves the region that is currently being repainted.
    /// 
    /// After a call to [method`Gdk.DrawContext.begin_frame`] this function will
    /// return a union of the region passed to that function and the area of the
    /// surface that the `context` determined needs to be repainted.
    /// 
    /// If `context` is not in between calls to [method`Gdk.DrawContext.begin_frame`]
    /// and [method`Gdk.DrawContext.end_frame`], `nil` will be returned.
    @inlinable var frameRegion: Cairo.RegionRef! {
        /// Retrieves the region that is currently being repainted.
        /// 
        /// After a call to [method`Gdk.DrawContext.begin_frame`] this function will
        /// return a union of the region passed to that function and the area of the
        /// surface that the `context` determined needs to be repainted.
        /// 
        /// If `context` is not in between calls to [method`Gdk.DrawContext.begin_frame`]
        /// and [method`Gdk.DrawContext.end_frame`], `nil` will be returned.
        get {
            let rv = Cairo.RegionRef(gdk_draw_context_get_frame_region(draw_context_ptr))
            return rv
        }
    }

    /// Returns `true` if `context` is in the process of drawing to its surface.
    /// 
    /// This is the case between calls to [method`Gdk.DrawContext.begin_frame`]
    /// and [method`Gdk.DrawContext.end_frame`]. In this situation, drawing commands
    /// may be effecting the contents of the `context`'s surface.
    @inlinable var isInFrame: Bool {
        /// Returns `true` if `context` is in the process of drawing to its surface.
        /// 
        /// This is the case between calls to [method`Gdk.DrawContext.begin_frame`]
        /// and [method`Gdk.DrawContext.end_frame`]. In this situation, drawing commands
        /// may be effecting the contents of the `context`'s surface.
        get {
            let rv = ((gdk_draw_context_is_in_frame(draw_context_ptr)) != 0)
            return rv
        }
    }

    /// The `GdkSurface` the context is bound to.
    @inlinable var surface: SurfaceRef! {
        /// Retrieves the surface that `context` is bound to.
        get {
            let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_draw_context_get_surface(draw_context_ptr)))
            return rv
        }
    }


}



// MARK: - Drop Class

/// The `DropProtocol` protocol exposes the methods and properties of an underlying `GdkDrop` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Drop`.
/// Alternatively, use `DropRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkDrop` object represents the target of an ongoing DND operation.
/// 
/// Possible drop sites get informed about the status of the ongoing drag
/// operation with events of type `GDK_DRAG_ENTER`, `GDK_DRAG_LEAVE`,
/// `GDK_DRAG_MOTION` and `GDK_DROP_START`. The `GdkDrop` object can be obtained
/// from these [class`Gdk.Event`] types using [method`Gdk.DNDEvent.get_drop`].
/// 
/// The actual data transfer is initiated from the target side via an async
/// read, using one of the `GdkDrop` methods for this purpose:
/// [method`Gdk.Drop.read_async`] or [method`Gdk.Drop.read_value_async`].
/// 
/// GTK provides a higher level abstraction based on top of these functions,
/// and so they are not normally needed in GTK applications. See the
/// "Drag and Drop" section of the GTK documentation for more information.
public protocol DropProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDrop` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDrop` instance.
    var drop_ptr: UnsafeMutablePointer<GdkDrop>! { get }

    /// Required Initialiser for types conforming to `DropProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DropRef` type acts as a lightweight Swift reference to an underlying `GdkDrop` instance.
/// It exposes methods that can operate on this data type through `DropProtocol` conformance.
/// Use `DropRef` only as an `unowned` reference to an existing `GdkDrop` instance.
///
/// The `GdkDrop` object represents the target of an ongoing DND operation.
/// 
/// Possible drop sites get informed about the status of the ongoing drag
/// operation with events of type `GDK_DRAG_ENTER`, `GDK_DRAG_LEAVE`,
/// `GDK_DRAG_MOTION` and `GDK_DROP_START`. The `GdkDrop` object can be obtained
/// from these [class`Gdk.Event`] types using [method`Gdk.DNDEvent.get_drop`].
/// 
/// The actual data transfer is initiated from the target side via an async
/// read, using one of the `GdkDrop` methods for this purpose:
/// [method`Gdk.Drop.read_async`] or [method`Gdk.Drop.read_value_async`].
/// 
/// GTK provides a higher level abstraction based on top of these functions,
/// and so they are not normally needed in GTK applications. See the
/// "Drag and Drop" section of the GTK documentation for more information.
public struct DropRef: DropProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDrop` instance.
    /// For type-safe access, use the generated, typed pointer `drop_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DropRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDrop>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDrop>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDrop>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDrop>?) {
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

    /// Reference intialiser for a related type that implements `DropProtocol`
    @inlinable init<T: DropProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DropProtocol>(_ other: T) -> DropRef { DropRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Drop` type acts as a reference-counted owner of an underlying `GdkDrop` instance.
/// It provides the methods that can operate on this data type through `DropProtocol` conformance.
/// Use `Drop` as a strong reference or owner of a `GdkDrop` instance.
///
/// The `GdkDrop` object represents the target of an ongoing DND operation.
/// 
/// Possible drop sites get informed about the status of the ongoing drag
/// operation with events of type `GDK_DRAG_ENTER`, `GDK_DRAG_LEAVE`,
/// `GDK_DRAG_MOTION` and `GDK_DROP_START`. The `GdkDrop` object can be obtained
/// from these [class`Gdk.Event`] types using [method`Gdk.DNDEvent.get_drop`].
/// 
/// The actual data transfer is initiated from the target side via an async
/// read, using one of the `GdkDrop` methods for this purpose:
/// [method`Gdk.Drop.read_async`] or [method`Gdk.Drop.read_value_async`].
/// 
/// GTK provides a higher level abstraction based on top of these functions,
/// and so they are not normally needed in GTK applications. See the
/// "Drag and Drop" section of the GTK documentation for more information.
open class Drop: GLibObject.Object, DropProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDrop>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDrop>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drop` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDrop>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDrop>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDrop`.
    /// i.e., ownership is transferred to the `Drop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDrop>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DropProtocol`
    /// Will retain `GdkDrop`.
    /// - Parameter other: an instance of a related type that implements `DropProtocol`
    @inlinable public init<T: DropProtocol>(drop other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DropProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DropPropertyName: String, PropertyNameProtocol {
    /// The possible actions for this drop
    case actions = "actions"
    /// The `GdkDevice` performing the drop
    case device = "device"
    /// The `GdkDisplay` that the drop belongs to.
    case display = "display"
    /// The `GdkDrag` that initiated this drop
    case drag = "drag"
    /// The possible formats that the drop can provide its data in.
    case formats = "formats"
    /// The `GdkSurface` the drop happens on
    case surface = "surface"
}

public extension DropProtocol {
    /// Bind a `DropPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DropPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Drop property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DropPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Drop property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DropPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DropSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The possible actions for this drop
    case notifyActions = "notify::actions"
    /// The `GdkDevice` performing the drop
    case notifyDevice = "notify::device"
    /// The `GdkDisplay` that the drop belongs to.
    case notifyDisplay = "notify::display"
    /// The `GdkDrag` that initiated this drop
    case notifyDrag = "notify::drag"
    /// The possible formats that the drop can provide its data in.
    case notifyFormats = "notify::formats"
    /// The `GdkSurface` the drop happens on
    case notifySurface = "notify::surface"
}

// MARK: Drop has no signals
// MARK: Drop Class: DropProtocol extension (methods and fields)
public extension DropProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDrop` instance.
    @inlinable var drop_ptr: UnsafeMutablePointer<GdkDrop>! { return ptr?.assumingMemoryBound(to: GdkDrop.self) }

    /// Ends the drag operation after a drop.
    /// 
    /// The `action` must be a single action selected from the actions
    /// available via [method`Gdk.Drop.get_actions`].
    @inlinable func finish(action: DragAction) {
        gdk_drop_finish(drop_ptr, action.value)
    
    }

    /// Returns the possible actions for this `GdkDrop`.
    /// 
    /// If this value contains multiple actions - i.e.
    /// [func`Gdk.DragAction.is_unique`] returns `false` for the result -
    /// [method`Gdk.Drop.finish`] must choose the action to use when
    /// accepting the drop. This will only happen if you passed
    /// `GDK_ACTION_ASK` as one of the possible actions in
    /// [method`Gdk.Drop.status`]. `GDK_ACTION_ASK` itself will not
    /// be included in the actions returned by this function.
    /// 
    /// This value may change over the lifetime of the [class`Gdk.Drop`]
    /// both as a response to source side actions as well as to calls to
    /// [method`Gdk.Drop.status`] or [method`Gdk.Drop.finish`]. The source
    /// side will not change this value anymore once a drop has started.
    @inlinable func getActions() -> DragAction {
        let rv = DragAction(gdk_drop_get_actions(drop_ptr))
        return rv
    }

    /// Returns the `GdkDevice` performing the drop.
    @inlinable func getDevice() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_drop_get_device(drop_ptr)))
        return rv
    }

    /// Gets the `GdkDisplay` that `self` was created for.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_drop_get_display(drop_ptr)))
        return rv
    }

    /// If this is an in-app drag-and-drop operation, returns the `GdkDrag`
    /// that corresponds to this drop.
    /// 
    /// If it is not, `nil` is returned.
    @inlinable func getDrag() -> DragRef! {
        let rv = DragRef(gconstpointer: gconstpointer(gdk_drop_get_drag(drop_ptr)))
        return rv
    }

    /// Returns the `GdkContentFormats` that the drop offers the data
    /// to be read in.
    @inlinable func getFormats() -> ContentFormatsRef! {
        let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_drop_get_formats(drop_ptr)))
        return rv
    }

    /// Returns the `GdkSurface` performing the drop.
    @inlinable func getSurface() -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_drop_get_surface(drop_ptr)))
        return rv
    }

    /// Asynchronously read the dropped data from a `GdkDrop`
    /// in a format that complies with one of the mime types.
    @inlinable func readAsync(mimeTypes: UnsafeMutablePointer<UnsafePointer<CChar>?>!, ioPriority: Int, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_drop_read_async(drop_ptr, mimeTypes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously read the dropped data from a `GdkDrop`
    /// in a format that complies with one of the mime types.
    @inlinable func readAsync<CancellableT: GIO.CancellableProtocol>(mimeTypes: UnsafeMutablePointer<UnsafePointer<CChar>?>!, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_drop_read_async(drop_ptr, mimeTypes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an async drop read operation.
    /// 
    /// Note that you must not use blocking read calls on the returned stream
    /// in the GTK thread, since some platforms might require communication with
    /// GTK to complete the data transfer. You can use async APIs such as
    /// `g_input_stream_read_bytes_async()`.
    /// 
    /// See [method`Gdk.Drop.read_async`].
    @inlinable func readFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT, outMimeType: UnsafeMutablePointer<UnsafePointer<CChar>?>!) throws -> GIO.InputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GIO.InputStreamRef(gdk_drop_read_finish(drop_ptr, result.async_result_ptr, outMimeType, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously request the drag operation's contents converted
    /// to the given `type`.
    /// 
    /// When the operation is finished `callback` will be called. You must
    /// then call [method`Gdk.Drop.read_value_finish`] to get the resulting
    /// `GValue`.
    /// 
    /// For local drag'n'drop operations that are available in the given
    /// `GType`, the value will be copied directly. Otherwise, GDK will
    /// try to use [func`Gdk.content_deserialize_async`] to convert the data.
    @inlinable func readValueAsync(type: GType, ioPriority: Int, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_drop_read_value_async(drop_ptr, type, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously request the drag operation's contents converted
    /// to the given `type`.
    /// 
    /// When the operation is finished `callback` will be called. You must
    /// then call [method`Gdk.Drop.read_value_finish`] to get the resulting
    /// `GValue`.
    /// 
    /// For local drag'n'drop operations that are available in the given
    /// `GType`, the value will be copied directly. Otherwise, GDK will
    /// try to use [func`Gdk.content_deserialize_async`] to convert the data.
    @inlinable func readValueAsync<CancellableT: GIO.CancellableProtocol>(type: GType, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_drop_read_value_async(drop_ptr, type, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an async drop read.
    /// 
    /// See [method`Gdk.Drop.read_value_async`].
    @inlinable func readValueFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT) throws -> GLibObject.ValueRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLibObject.ValueRef(gdk_drop_read_value_finish(drop_ptr, result.async_result_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Selects all actions that are potentially supported by the destination.
    /// 
    /// When calling this function, do not restrict the passed in actions to
    /// the ones provided by [method`Gdk.Drop.get_actions`]. Those actions may
    /// change in the future, even depending on the actions you provide here.
    /// 
    /// The `preferred` action is a hint to the drag'n'drop mechanism about which
    /// action to use when multiple actions are possible.
    /// 
    /// This function should be called by drag destinations in response to
    /// `GDK_DRAG_ENTER` or `GDK_DRAG_MOTION` events. If the destination does
    /// not yet know the exact actions it supports, it should set any possible
    /// actions first and then later call this function again.
    @inlinable func status(actions: DragAction, preferred: DragAction) {
        gdk_drop_status(drop_ptr, actions.value, preferred.value)
    
    }
    /// The possible actions for this drop
    @inlinable var actions: DragAction {
        /// Returns the possible actions for this `GdkDrop`.
        /// 
        /// If this value contains multiple actions - i.e.
        /// [func`Gdk.DragAction.is_unique`] returns `false` for the result -
        /// [method`Gdk.Drop.finish`] must choose the action to use when
        /// accepting the drop. This will only happen if you passed
        /// `GDK_ACTION_ASK` as one of the possible actions in
        /// [method`Gdk.Drop.status`]. `GDK_ACTION_ASK` itself will not
        /// be included in the actions returned by this function.
        /// 
        /// This value may change over the lifetime of the [class`Gdk.Drop`]
        /// both as a response to source side actions as well as to calls to
        /// [method`Gdk.Drop.status`] or [method`Gdk.Drop.finish`]. The source
        /// side will not change this value anymore once a drop has started.
        get {
            let rv = DragAction(gdk_drop_get_actions(drop_ptr))
            return rv
        }
    }

    /// The `GdkDevice` performing the drop
    @inlinable var device: DeviceRef! {
        /// Returns the `GdkDevice` performing the drop.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_drop_get_device(drop_ptr)))
            return rv
        }
    }

    /// The `GdkDisplay` that the drop belongs to.
    @inlinable var display: DisplayRef! {
        /// Gets the `GdkDisplay` that `self` was created for.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_drop_get_display(drop_ptr)))
            return rv
        }
    }

    /// The `GdkDrag` that initiated this drop
    @inlinable var drag: DragRef! {
        /// If this is an in-app drag-and-drop operation, returns the `GdkDrag`
        /// that corresponds to this drop.
        /// 
        /// If it is not, `nil` is returned.
        get {
            let rv = DragRef(gconstpointer: gconstpointer(gdk_drop_get_drag(drop_ptr)))
            return rv
        }
    }

    /// The possible formats that the drop can provide its data in.
    @inlinable var formats: ContentFormatsRef! {
        /// Returns the `GdkContentFormats` that the drop offers the data
        /// to be read in.
        get {
            let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_drop_get_formats(drop_ptr)))
            return rv
        }
    }

    /// The `GdkSurface` the drop happens on
    @inlinable var surface: SurfaceRef! {
        /// Returns the `GdkSurface` performing the drop.
        get {
            let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_drop_get_surface(drop_ptr)))
            return rv
        }
    }


}



// MARK: - Event Class

/// The `EventProtocol` protocol exposes the methods and properties of an underlying `GdkEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Event`.
/// Alternatively, use `EventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkEvent`s are immutable data structures, created by GDK to
/// represent windowing system events.
/// 
/// In GTK applications the events are handled automatically by toplevel
/// widgets and passed on to the event controllers of appropriate widgets,
/// so using `GdkEvent` and its related API is rarely needed.
public protocol EventProtocol {
        /// Untyped pointer to the underlying `GdkEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkEvent` instance.
    var event_ptr: UnsafeMutablePointer<GdkEvent>! { get }

    /// Required Initialiser for types conforming to `EventProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `EventRef` type acts as a lightweight Swift reference to an underlying `GdkEvent` instance.
/// It exposes methods that can operate on this data type through `EventProtocol` conformance.
/// Use `EventRef` only as an `unowned` reference to an existing `GdkEvent` instance.
///
/// `GdkEvent`s are immutable data structures, created by GDK to
/// represent windowing system events.
/// 
/// In GTK applications the events are handled automatically by toplevel
/// widgets and passed on to the event controllers of appropriate widgets,
/// so using `GdkEvent` and its related API is rarely needed.
public struct EventRef: EventProtocol {
        /// Untyped pointer to the underlying `GdkEvent` instance.
    /// For type-safe access, use the generated, typed pointer `event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkEvent>?) {
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

    /// Reference intialiser for a related type that implements `EventProtocol`
    @inlinable init<T: EventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Event` type acts as a reference-counted owner of an underlying `GdkEvent` instance.
/// It provides the methods that can operate on this data type through `EventProtocol` conformance.
/// Use `Event` as a strong reference or owner of a `GdkEvent` instance.
///
/// `GdkEvent`s are immutable data structures, created by GDK to
/// represent windowing system events.
/// 
/// In GTK applications the events are handled automatically by toplevel
/// widgets and passed on to the event controllers of appropriate widgets,
/// so using `GdkEvent` and its related API is rarely needed.
open class Event: EventProtocol {
        /// Untyped pointer to the underlying `GdkEvent` instance.
    /// For type-safe access, use the generated, typed pointer `event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkEvent>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkEvent`.
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(op)
        gdk_event_ref(ptr.assumingMemoryBound(to: GdkEvent.self))
    }

    /// Reference intialiser for a related type that implements `EventProtocol`
    /// Will retain `GdkEvent`.
    /// - Parameter other: an instance of a related type that implements `EventProtocol`
    @inlinable public init<T: EventProtocol>(_ other: T) {
        ptr = other.ptr
        gdk_event_ref(ptr.assumingMemoryBound(to: GdkEvent.self))
    }

    /// Releases the underlying `GdkEvent` instance using `gdk_event_unref`.
    deinit {
        gdk_event_unref(ptr.assumingMemoryBound(to: GdkEvent.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gdk_event_ref(ptr.assumingMemoryBound(to: GdkEvent.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gdk_event_ref(ptr.assumingMemoryBound(to: GdkEvent.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gdk_event_ref(ptr.assumingMemoryBound(to: GdkEvent.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gdk_event_ref(ptr.assumingMemoryBound(to: GdkEvent.self))
    }



}

// MARK: no Event properties

// MARK: no Event signals

// MARK: Event has no signals
// MARK: Event Class: EventProtocol extension (methods and fields)
public extension EventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEvent` instance.
    @inlinable var event_ptr: UnsafeMutablePointer<GdkEvent>! { return ptr?.assumingMemoryBound(to: GdkEvent.self) }

    /// Returns the relative angle from `event1` to `event2`.
    /// 
    /// The relative angle is the angle between the X axis and the line
    /// through both events' positions. The rotation direction for positive
    /// angles is from the positive X axis towards the positive Y axis.
    /// 
    /// This assumes that both events have X/Y information.
    /// If not, this function returns `false`.
    @inlinable func GetAngle<EventT: EventProtocol>(event2: EventT, angle: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_events_get_angle(event_ptr, event2.event_ptr, angle)) != 0)
        return rv
    }

    /// Returns the point halfway between the events' positions.
    /// 
    /// This assumes that both events have X/Y information.
    /// If not, this function returns `false`.
    @inlinable func GetCenter<EventT: EventProtocol>(event2: EventT, x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_events_get_center(event_ptr, event2.event_ptr, x, y)) != 0)
        return rv
    }

    /// Returns the distance between the event locations.
    /// 
    /// This assumes that both events have X/Y information.
    /// If not, this function returns `false`.
    @inlinable func GetDistance<EventT: EventProtocol>(event2: EventT, distance: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_events_get_distance(event_ptr, event2.event_ptr, distance)) != 0)
        return rv
    }

    /// Extracts all axis values from an event.
    @inlinable func get(axes: UnsafeMutablePointer<UnsafeMutablePointer<CDouble>?>!, nAxes: UnsafeMutablePointer<guint>!) -> Bool {
        let rv = ((gdk_event_get_axes(event_ptr, axes, nAxes)) != 0)
        return rv
    }

    /// Extract the axis value for a particular axis use from
    /// an event structure.
    @inlinable func getAxis(axisUse: GdkAxisUse, value: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_event_get_axis(event_ptr, axisUse, value)) != 0)
        return rv
    }

    /// Returns the device of an event.
    @inlinable func getDevice() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_event_get_device(event_ptr)))
        return rv
    }

    /// Returns a `GdkDeviceTool` representing the tool that
    /// caused the event.
    /// 
    /// If the was not generated by a device that supports
    /// different tools (such as a tablet), this function will
    /// return `nil`.
    /// 
    /// Note: the `GdkDeviceTool` will be constant during
    /// the application lifetime, if settings must be stored
    /// persistently across runs, see [method`Gdk.DeviceTool.get_serial`].
    @inlinable func getDeviceTool() -> DeviceToolRef! {
        let rv = DeviceToolRef(gconstpointer: gconstpointer(gdk_event_get_device_tool(event_ptr)))
        return rv
    }

    /// Retrieves the display associated to the `event`.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_event_get_display(event_ptr)))
        return rv
    }

    /// Retuns the event sequence to which the event belongs.
    /// 
    /// Related touch events are connected in a sequence. Other
    /// events typically don't have event sequence information.
    @inlinable func getEventSequence() -> EventSequenceRef! {
        let rv = EventSequenceRef(gconstpointer: gconstpointer(gdk_event_get_event_sequence(event_ptr)))
        return rv
    }

    /// Retrieves the type of the event.
    @inlinable func getEventType() -> GdkEventType {
        let rv = gdk_event_get_event_type(event_ptr)
        return rv
    }

    /// Retrieves the history of the device that `event` is for, as a list of
    /// time and coordinates.
    /// 
    /// The history includes positions that are not delivered as separate events
    /// to the application because they occurred in the same frame as `event`.
    /// 
    /// Note that only motion and scroll events record history, and motion
    /// events do it only if one of the mouse buttons is down.
    @inlinable func getHistory(outNCoords: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<GdkTimeCoord>! {
        let rv = gdk_event_get_history(event_ptr, outNCoords)
        return rv
    }

    /// Returns the modifier state field of an event.
    @inlinable func getModifierState() -> ModifierType {
        let rv = ModifierType(gdk_event_get_modifier_state(event_ptr))
        return rv
    }

    /// Returns whether this event is an 'emulated' pointer event.
    /// 
    /// Emulated pointer events typically originate from a touch events.
    @inlinable func getPointerEmulated() -> Bool {
        let rv = ((gdk_event_get_pointer_emulated(event_ptr)) != 0)
        return rv
    }

    /// Extract the event surface relative x/y coordinates from an event.
    @inlinable func getPosition(x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_event_get_position(event_ptr, x, y)) != 0)
        return rv
    }

    /// Returns the seat that originated the event.
    @inlinable func getSeat() -> SeatRef! {
        let rv = SeatRef(gconstpointer: gconstpointer(gdk_event_get_seat(event_ptr)))
        return rv
    }

    /// Extracts the surface associated with an event.
    @inlinable func getSurface() -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_event_get_surface(event_ptr)))
        return rv
    }

    /// Returns the timestamp of `event`.
    /// 
    /// Not all events have timestamps. In that case, this function
    /// returns `GDK_CURRENT_TIME`.
    @inlinable func getTime() -> guint32 {
        let rv = gdk_event_get_time(event_ptr)
        return rv
    }

    /// Increase the ref count of `event`.
    @discardableResult @inlinable func ref() -> EventRef! {
        guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_ref(event_ptr))) else { return nil }
        return rv
    }

    /// Returns whether a `GdkEvent` should trigger a context menu,
    /// according to platform conventions.
    /// 
    /// The right mouse button typically triggers context menus.
    /// 
    /// This function should always be used instead of simply checking for
    /// event-&gt;button == `GDK_BUTTON_SECONDARY`.
    @inlinable func triggersContextMenu() -> Bool {
        let rv = ((gdk_event_triggers_context_menu(event_ptr)) != 0)
        return rv
    }

    /// Decrease the ref count of `event`.
    /// 
    /// If the last reference is dropped, the structure is freed.
    @inlinable func unref() {
        gdk_event_unref(event_ptr)
    
    }

    /// Returns the relative angle from `event1` to `event2`.
    /// 
    /// The relative angle is the angle between the X axis and the line
    /// through both events' positions. The rotation direction for positive
    /// angles is from the positive X axis towards the positive Y axis.
    /// 
    /// This assumes that both events have X/Y information.
    /// If not, this function returns `false`.
    @inlinable func eventsGetAngle<EventT: EventProtocol>(event2: EventT, angle: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_events_get_angle(event_ptr, event2.event_ptr, angle)) != 0)
        return rv
    }

    /// Returns the point halfway between the events' positions.
    /// 
    /// This assumes that both events have X/Y information.
    /// If not, this function returns `false`.
    @inlinable func eventsGetCenter<EventT: EventProtocol>(event2: EventT, x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_events_get_center(event_ptr, event2.event_ptr, x, y)) != 0)
        return rv
    }

    /// Returns the distance between the event locations.
    /// 
    /// This assumes that both events have X/Y information.
    /// If not, this function returns `false`.
    @inlinable func eventsGetDistance<EventT: EventProtocol>(event2: EventT, distance: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_events_get_distance(event_ptr, event2.event_ptr, distance)) != 0)
        return rv
    }
    /// Returns the device of an event.
    @inlinable var device: DeviceRef! {
        /// Returns the device of an event.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_event_get_device(event_ptr)))
            return rv
        }
    }

    /// Returns a `GdkDeviceTool` representing the tool that
    /// caused the event.
    /// 
    /// If the was not generated by a device that supports
    /// different tools (such as a tablet), this function will
    /// return `nil`.
    /// 
    /// Note: the `GdkDeviceTool` will be constant during
    /// the application lifetime, if settings must be stored
    /// persistently across runs, see [method`Gdk.DeviceTool.get_serial`].
    @inlinable var deviceTool: DeviceToolRef! {
        /// Returns a `GdkDeviceTool` representing the tool that
        /// caused the event.
        /// 
        /// If the was not generated by a device that supports
        /// different tools (such as a tablet), this function will
        /// return `nil`.
        /// 
        /// Note: the `GdkDeviceTool` will be constant during
        /// the application lifetime, if settings must be stored
        /// persistently across runs, see [method`Gdk.DeviceTool.get_serial`].
        get {
            let rv = DeviceToolRef(gconstpointer: gconstpointer(gdk_event_get_device_tool(event_ptr)))
            return rv
        }
    }

    /// Retrieves the display associated to the `event`.
    @inlinable var display: DisplayRef! {
        /// Retrieves the display associated to the `event`.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_event_get_display(event_ptr)))
            return rv
        }
    }

    /// Retuns the event sequence to which the event belongs.
    /// 
    /// Related touch events are connected in a sequence. Other
    /// events typically don't have event sequence information.
    @inlinable var eventSequence: EventSequenceRef! {
        /// Retuns the event sequence to which the event belongs.
        /// 
        /// Related touch events are connected in a sequence. Other
        /// events typically don't have event sequence information.
        get {
            let rv = EventSequenceRef(gconstpointer: gconstpointer(gdk_event_get_event_sequence(event_ptr)))
            return rv
        }
    }

    /// Retrieves the type of the event.
    @inlinable var eventType: GdkEventType {
        /// Retrieves the type of the event.
        get {
            let rv = gdk_event_get_event_type(event_ptr)
            return rv
        }
    }

    /// Returns the modifier state field of an event.
    @inlinable var modifierState: ModifierType {
        /// Returns the modifier state field of an event.
        get {
            let rv = ModifierType(gdk_event_get_modifier_state(event_ptr))
            return rv
        }
    }

    /// Returns whether this event is an 'emulated' pointer event.
    /// 
    /// Emulated pointer events typically originate from a touch events.
    @inlinable var pointerEmulated: Bool {
        /// Returns whether this event is an 'emulated' pointer event.
        /// 
        /// Emulated pointer events typically originate from a touch events.
        get {
            let rv = ((gdk_event_get_pointer_emulated(event_ptr)) != 0)
            return rv
        }
    }

    /// Returns the seat that originated the event.
    @inlinable var seat: SeatRef! {
        /// Returns the seat that originated the event.
        get {
            let rv = SeatRef(gconstpointer: gconstpointer(gdk_event_get_seat(event_ptr)))
            return rv
        }
    }

    /// Extracts the surface associated with an event.
    @inlinable var surface: SurfaceRef! {
        /// Extracts the surface associated with an event.
        get {
            let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_event_get_surface(event_ptr)))
            return rv
        }
    }

    /// Returns the timestamp of `event`.
    /// 
    /// Not all events have timestamps. In that case, this function
    /// returns `GDK_CURRENT_TIME`.
    @inlinable var time: guint32 {
        /// Returns the timestamp of `event`.
        /// 
        /// Not all events have timestamps. In that case, this function
        /// returns `GDK_CURRENT_TIME`.
        get {
            let rv = gdk_event_get_time(event_ptr)
            return rv
        }
    }


}



