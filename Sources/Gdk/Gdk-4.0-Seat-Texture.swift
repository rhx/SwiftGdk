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

// MARK: - Seat Class

/// The `SeatProtocol` protocol exposes the methods and properties of an underlying `GdkSeat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Seat`.
/// Alternatively, use `SeatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkSeat` object represents a collection of input devices
/// that belong to a user.
public protocol SeatProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkSeat` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkSeat` instance.
    var seat_ptr: UnsafeMutablePointer<GdkSeat>! { get }

}

/// The `SeatRef` type acts as a lightweight Swift reference to an underlying `GdkSeat` instance.
/// It exposes methods that can operate on this data type through `SeatProtocol` conformance.
/// Use `SeatRef` only as an `unowned` reference to an existing `GdkSeat` instance.
///
/// The `GdkSeat` object represents a collection of input devices
/// that belong to a user.
public struct SeatRef: SeatProtocol {
        /// Untyped pointer to the underlying `GdkSeat` instance.
    /// For type-safe access, use the generated, typed pointer `seat_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SeatRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkSeat>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkSeat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkSeat>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkSeat>?) {
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

    /// Reference intialiser for a related type that implements `SeatProtocol`
    @inlinable init<T: SeatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Seat` type acts as a reference-counted owner of an underlying `GdkSeat` instance.
/// It provides the methods that can operate on this data type through `SeatProtocol` conformance.
/// Use `Seat` as a strong reference or owner of a `GdkSeat` instance.
///
/// The `GdkSeat` object represents a collection of input devices
/// that belong to a user.
open class Seat: GLibObject.Object, SeatProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkSeat>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkSeat>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seat` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkSeat>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkSeat>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkSeat`.
    /// i.e., ownership is transferred to the `Seat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkSeat>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SeatProtocol`
    /// Will retain `GdkSeat`.
    /// - Parameter other: an instance of a related type that implements `SeatProtocol`
    @inlinable public init<T: SeatProtocol>(seat other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum SeatPropertyName: String, PropertyNameProtocol {
    /// `GdkDisplay` of this seat.
    case display = "display"
}

public extension SeatProtocol {
    /// Bind a `SeatPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: SeatPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Seat property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: SeatPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Seat property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SeatPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SeatSignalName: String, SignalNameProtocol {
    /// The `device`-added signal is emitted when a new input
    /// device is related to this seat.
    case deviceAdded = "device-added"
    /// The `device`-removed signal is emitted when an
    /// input device is removed (e.g. unplugged).
    case deviceRemoved = "device-removed"
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
    /// The `tool`-added signal is emitted whenever a new tool
    /// is made known to the seat. The tool may later be assigned
    /// to a device (i.e. on proximity with a tablet). The device
    /// will emit the `GdkDevice::tool`-changed signal accordingly.
    /// 
    /// A same tool may be used by several devices.
    case toolAdded = "tool-added"
    /// This signal is emitted whenever a tool is no longer known
    /// to this `seat`.
    case toolRemoved = "tool-removed"
    /// `GdkDisplay` of this seat.
    case notifyDisplay = "notify::display"
}

public extension SeatProtocol {
    /// Connect a `SeatSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: SeatSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Seat Class: SeatProtocol extension (methods and fields)
public extension SeatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkSeat` instance.
    @inlinable var seat_ptr: UnsafeMutablePointer<GdkSeat>! { return ptr?.assumingMemoryBound(to: GdkSeat.self) }

    /// Returns the capabilities this `GdkSeat` currently has.
    @inlinable func getCapabilities() -> SeatCapabilities {
        let rv = SeatCapabilities(gdk_seat_get_capabilities(seat_ptr))
        return rv
    }

    /// Returns the devices that match the given capabilities.
    @inlinable func getDevices(capabilities: SeatCapabilities) -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_seat_get_devices(seat_ptr, capabilities.value))
        return rv
    }

    /// Returns the `GdkDisplay` this seat belongs to.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_seat_get_display(seat_ptr)))
        return rv
    }

    /// Returns the device that routes keyboard events.
    @inlinable func getKeyboard() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_keyboard(seat_ptr)))
        return rv
    }

    /// Returns the device that routes pointer events.
    @inlinable func getPointer() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_pointer(seat_ptr)))
        return rv
    }

    /// Returns all `GdkDeviceTools` that are known to the
    /// application.
    @inlinable func getTools() -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_seat_get_tools(seat_ptr))
        return rv
    }
    /// Returns the capabilities this `GdkSeat` currently has.
    @inlinable var capabilities: SeatCapabilities {
        /// Returns the capabilities this `GdkSeat` currently has.
        get {
            let rv = SeatCapabilities(gdk_seat_get_capabilities(seat_ptr))
            return rv
        }
    }

    /// `GdkDisplay` of this seat.
    @inlinable var display: DisplayRef! {
        /// Returns the `GdkDisplay` this seat belongs to.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_seat_get_display(seat_ptr)))
            return rv
        }
    }

    /// Returns the device that routes keyboard events.
    @inlinable var keyboard: DeviceRef! {
        /// Returns the device that routes keyboard events.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_keyboard(seat_ptr)))
            return rv
        }
    }

    /// Returns the device that routes pointer events.
    @inlinable var pointer: DeviceRef! {
        /// Returns the device that routes pointer events.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_pointer(seat_ptr)))
            return rv
        }
    }

    /// Returns all `GdkDeviceTools` that are known to the
    /// application.
    @inlinable var tools: GLib.ListRef! {
        /// Returns all `GdkDeviceTools` that are known to the
        /// application.
        get {
            let rv = GLib.ListRef(gdk_seat_get_tools(seat_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = seat_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - Snapshot Class

/// The `SnapshotProtocol` protocol exposes the methods and properties of an underlying `GdkSnapshot` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Snapshot`.
/// Alternatively, use `SnapshotRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base type for snapshot operations.
public protocol SnapshotProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkSnapshot` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkSnapshot` instance.
    var snapshot_ptr: UnsafeMutablePointer<GdkSnapshot>! { get }

}

/// The `SnapshotRef` type acts as a lightweight Swift reference to an underlying `GdkSnapshot` instance.
/// It exposes methods that can operate on this data type through `SnapshotProtocol` conformance.
/// Use `SnapshotRef` only as an `unowned` reference to an existing `GdkSnapshot` instance.
///
/// Base type for snapshot operations.
public struct SnapshotRef: SnapshotProtocol {
        /// Untyped pointer to the underlying `GdkSnapshot` instance.
    /// For type-safe access, use the generated, typed pointer `snapshot_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SnapshotRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkSnapshot>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkSnapshot>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkSnapshot>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkSnapshot>?) {
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

    /// Reference intialiser for a related type that implements `SnapshotProtocol`
    @inlinable init<T: SnapshotProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Snapshot` type acts as a reference-counted owner of an underlying `GdkSnapshot` instance.
/// It provides the methods that can operate on this data type through `SnapshotProtocol` conformance.
/// Use `Snapshot` as a strong reference or owner of a `GdkSnapshot` instance.
///
/// Base type for snapshot operations.
open class Snapshot: GLibObject.Object, SnapshotProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Snapshot` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkSnapshot>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Snapshot` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkSnapshot>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Snapshot` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Snapshot` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Snapshot` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkSnapshot>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Snapshot` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkSnapshot>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkSnapshot`.
    /// i.e., ownership is transferred to the `Snapshot` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkSnapshot>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SnapshotProtocol`
    /// Will retain `GdkSnapshot`.
    /// - Parameter other: an instance of a related type that implements `SnapshotProtocol`
    @inlinable public init<T: SnapshotProtocol>(snapshot other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no Snapshot properties

public enum SnapshotSignalName: String, SignalNameProtocol {
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

}

public extension SnapshotProtocol {
    /// Connect a `SnapshotSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: SnapshotSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Snapshot Class: SnapshotProtocol extension (methods and fields)
public extension SnapshotProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkSnapshot` instance.
    @inlinable var snapshot_ptr: UnsafeMutablePointer<GdkSnapshot>! { return ptr?.assumingMemoryBound(to: GdkSnapshot.self) }



}



// MARK: - Surface Class

/// The `SurfaceProtocol` protocol exposes the methods and properties of an underlying `GdkSurface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Surface`.
/// Alternatively, use `SurfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkSurface` is a (usually) rectangular region on the screen.
/// It’s a low-level object, used to implement high-level objects
/// such as `GtkWindow` or `GtkDialog` in GTK.
/// 
/// The surfaces you see in practice are either `GdkToplevel` or
/// `GdkPopup`, and those interfaces provide much of the required
/// API to interact with these surfaces. Other, more specialized
/// surface types exist, but you will rarely interact with them
/// directly.
public protocol SurfaceProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkSurface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkSurface` instance.
    var surface_ptr: UnsafeMutablePointer<GdkSurface>! { get }

}

/// The `SurfaceRef` type acts as a lightweight Swift reference to an underlying `GdkSurface` instance.
/// It exposes methods that can operate on this data type through `SurfaceProtocol` conformance.
/// Use `SurfaceRef` only as an `unowned` reference to an existing `GdkSurface` instance.
///
/// A `GdkSurface` is a (usually) rectangular region on the screen.
/// It’s a low-level object, used to implement high-level objects
/// such as `GtkWindow` or `GtkDialog` in GTK.
/// 
/// The surfaces you see in practice are either `GdkToplevel` or
/// `GdkPopup`, and those interfaces provide much of the required
/// API to interact with these surfaces. Other, more specialized
/// surface types exist, but you will rarely interact with them
/// directly.
public struct SurfaceRef: SurfaceProtocol {
        /// Untyped pointer to the underlying `GdkSurface` instance.
    /// For type-safe access, use the generated, typed pointer `surface_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SurfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkSurface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkSurface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkSurface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkSurface>?) {
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

    /// Reference intialiser for a related type that implements `SurfaceProtocol`
    @inlinable init<T: SurfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new toplevel surface.
    @inlinable init<DisplayT: DisplayProtocol>(display: DisplayT) {
        let rv = gdk_surface_new_toplevel(display.display_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new toplevel surface.
    @inlinable static func new<DisplayT: DisplayProtocol>(display: DisplayT) -> SurfaceRef! {
        guard let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_surface_new_toplevel(display.display_ptr))) else { return nil }
        return rv
    }
}

/// The `Surface` type acts as a reference-counted owner of an underlying `GdkSurface` instance.
/// It provides the methods that can operate on this data type through `SurfaceProtocol` conformance.
/// Use `Surface` as a strong reference or owner of a `GdkSurface` instance.
///
/// A `GdkSurface` is a (usually) rectangular region on the screen.
/// It’s a low-level object, used to implement high-level objects
/// such as `GtkWindow` or `GtkDialog` in GTK.
/// 
/// The surfaces you see in practice are either `GdkToplevel` or
/// `GdkPopup`, and those interfaces provide much of the required
/// API to interact with these surfaces. Other, more specialized
/// surface types exist, but you will rarely interact with them
/// directly.
open class Surface: GLibObject.Object, SurfaceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Surface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkSurface>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Surface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkSurface>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Surface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Surface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Surface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkSurface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Surface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkSurface>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkSurface`.
    /// i.e., ownership is transferred to the `Surface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkSurface>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SurfaceProtocol`
    /// Will retain `GdkSurface`.
    /// - Parameter other: an instance of a related type that implements `SurfaceProtocol`
    @inlinable public init<T: SurfaceProtocol>(surface other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new toplevel surface.
    @inlinable public init<DisplayT: DisplayProtocol>(display: DisplayT) {
        let rv = gdk_surface_new_toplevel(display.display_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new toplevel surface.
    @inlinable public static func new<DisplayT: DisplayProtocol>(display: DisplayT) -> Surface! {
        guard let rv = Surface(gconstpointer: gconstpointer(gdk_surface_new_toplevel(display.display_ptr))) else { return nil }
        return rv
    }

}

public enum SurfacePropertyName: String, PropertyNameProtocol {
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    case cursor = "cursor"
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case display = "display"
    case frameClock = "frame-clock"
    case height = "height"
    case mapped = "mapped"
    case width = "width"
}

public extension SurfaceProtocol {
    /// Bind a `SurfacePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: SurfacePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Surface property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: SurfacePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Surface property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SurfacePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SurfaceSignalName: String, SignalNameProtocol {
    /// Emitted when `surface` starts being present on the monitor.
    case enterMonitor = "enter-monitor"
    /// Emitted when GDK receives an input event for `surface`.
    case event = "event"
    /// Emitted when the size of `surface` is changed, or when relayout should
    /// be performed.
    /// 
    /// Surface size is reported in ”application pixels”, not
    /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
    case layout = "layout"
    /// Emitted when `surface` stops being present on the monitor.
    case leaveMonitor = "leave-monitor"
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
    /// Emitted when part of the surface needs to be redrawn.
    case render = "render"
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case notifyDisplay = "notify::display"
    case notifyFrameClock = "notify::frame-clock"
    case notifyHeight = "notify::height"
    case notifyMapped = "notify::mapped"
    case notifyWidth = "notify::width"
}

public extension SurfaceProtocol {
    /// Connect a `SurfaceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: SurfaceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Surface Class: SurfaceProtocol extension (methods and fields)
public extension SurfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkSurface` instance.
    @inlinable var surface_ptr: UnsafeMutablePointer<GdkSurface>! { return ptr?.assumingMemoryBound(to: GdkSurface.self) }

    /// Emits a short beep associated to `surface` in the appropriate
    /// display, if supported. Otherwise, emits a short beep on
    /// the display just as `gdk_display_beep()`.
    @inlinable func beep() {
        gdk_surface_beep(surface_ptr)
    
    }

    /// Creates a new `GdkCairoContext` for rendering on `surface`.
    @inlinable func createCairoContext() -> CairoContextRef! {
        let rv = CairoContextRef(gconstpointer: gconstpointer(gdk_surface_create_cairo_context(surface_ptr)))
        return rv
    }

    /// Creates a new `GdkGLContext` matching the
    /// framebuffer format to the visual of the `GdkSurface`. The context
    /// is disconnected from any particular surface or surface.
    /// 
    /// If the creation of the `GdkGLContext` failed, `error` will be set.
    /// 
    /// Before using the returned `GdkGLContext`, you will need to
    /// call `gdk_gl_context_make_current()` or `gdk_gl_context_realize()`.
    @inlinable func createGlContext() throws -> GLContextRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLContextRef(gconstpointer: gconstpointer(gdk_surface_create_gl_context(surface_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Create a new surface that is as compatible as possible with the
    /// given `surface`. For example the new surface will have the same
    /// fallback resolution and font options as `surface`. Generally, the new
    /// surface will also use the same backend as `surface`, unless that is
    /// not possible for some reason. The type of the returned surface may
    /// be examined with `cairo_surface_get_type()`.
    /// 
    /// Initially the surface contents are all 0 (transparent if contents
    /// have transparency, black otherwise.)
    @inlinable func createSimilarSurface(content: cairo_content_t, width: Int, height: Int) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gdk_surface_create_similar_surface(surface_ptr, content, gint(width), gint(height)))
        return rv
    }

    /// Creates a new `GdkVulkanContext` for rendering on `surface`.
    /// 
    /// If the creation of the `GdkVulkanContext` failed, `error` will be set.
    @inlinable func createVulkanContext() throws -> VulkanContextRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VulkanContextRef(gconstpointer: gconstpointer(gdk_surface_create_vulkan_context(surface_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Destroys the window system resources associated with `surface` and decrements `surface`'s
    /// reference count. The window system resources for all children of `surface` are also
    /// destroyed, but the children’s reference counts are not decremented.
    /// 
    /// Note that a surface will not be destroyed automatically when its reference count
    /// reaches zero. You must call this function yourself before that happens.
    @inlinable func destroy() {
        gdk_surface_destroy(surface_ptr)
    
    }

    /// Retrieves a `GdkCursor` pointer for the cursor currently set on the
    /// specified `GdkSurface`, or `nil`.  If the return value is `nil` then
    /// there is no custom cursor set on the specified surface, and it is
    /// using the cursor for its parent surface.
    @inlinable func getCursor() -> CursorRef! {
        let rv = CursorRef(gconstpointer: gconstpointer(gdk_surface_get_cursor(surface_ptr)))
        return rv
    }

    /// Retrieves a `GdkCursor` pointer for the `device` currently set on the
    /// specified `GdkSurface`, or `nil`.  If the return value is `nil` then
    /// there is no custom cursor set on the specified surface, and it is
    /// using the cursor for its parent surface.
    @inlinable func getDeviceCursor<DeviceT: DeviceProtocol>(device: DeviceT) -> CursorRef! {
        let rv = CursorRef(gconstpointer: gconstpointer(gdk_surface_get_device_cursor(surface_ptr, device.device_ptr)))
        return rv
    }

    /// Obtains the current device position in doubles and modifier state.
    /// The position is given in coordinates relative to the upper left
    /// corner of `surface`.
    @inlinable func getDevicePosition<DeviceT: DeviceProtocol>(device: DeviceT, x: UnsafeMutablePointer<CDouble>! = nil, y: UnsafeMutablePointer<CDouble>! = nil, mask: UnsafeMutablePointer<GdkModifierType>! = nil) -> Bool {
        let rv = ((gdk_surface_get_device_position(surface_ptr, device.device_ptr, x, y, mask)) != 0)
        return rv
    }

    /// Gets the `GdkDisplay` associated with a `GdkSurface`.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_surface_get_display(surface_ptr)))
        return rv
    }

    /// Gets the frame clock for the surface. The frame clock for a surface
    /// never changes unless the surface is reparented to a new toplevel
    /// surface.
    @inlinable func getFrameClock() -> FrameClockRef! {
        let rv = FrameClockRef(gconstpointer: gconstpointer(gdk_surface_get_frame_clock(surface_ptr)))
        return rv
    }

    /// Returns the height of the given `surface`.
    /// 
    /// Surface size is reported in ”application pixels”, not
    /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
    @inlinable func getHeight() -> Int {
        let rv = Int(gdk_surface_get_height(surface_ptr))
        return rv
    }

    /// Checks whether the surface has been mapped (with `gdk_toplevel_present()`
    /// or `gdk_popup_present()`).
    @inlinable func getMapped() -> Bool {
        let rv = ((gdk_surface_get_mapped(surface_ptr)) != 0)
        return rv
    }

    /// Returns the internal scale factor that maps from surface coordinates
    /// to the actual device pixels. On traditional systems this is 1, but
    /// on very high density outputs this can be a higher value (often 2).
    /// 
    /// A higher value means that drawing is automatically scaled up to
    /// a higher resolution, so any code doing drawing will automatically look
    /// nicer. However, if you are supplying pixel-based data the scale
    /// value can be used to determine whether to use a pixel resource
    /// with higher resolution data.
    /// 
    /// The scale of a surface may change during runtime, if this happens
    /// a configure event will be sent to the toplevel surface.
    @inlinable func getScaleFactor() -> Int {
        let rv = Int(gdk_surface_get_scale_factor(surface_ptr))
        return rv
    }

    /// Returns the width of the given `surface`.
    /// 
    /// Surface size is reported in ”application pixels”, not
    /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
    @inlinable func getWidth() -> Int {
        let rv = Int(gdk_surface_get_width(surface_ptr))
        return rv
    }

    /// For toplevel surfaces, withdraws them, so they will no longer be
    /// known to the window manager; for all surfaces, unmaps them, so
    /// they won’t be displayed. Normally done automatically as
    /// part of `gtk_widget_hide()`.
    @inlinable func hide() {
        gdk_surface_hide(surface_ptr)
    
    }

    /// Forces a `GdkSurface::render` signal emission for `surface`
    /// to be scheduled.
    /// 
    /// This function is useful for implementations that track invalid
    /// regions on their own.
    @inlinable func queueRender() {
        gdk_surface_queue_render(surface_ptr)
    
    }

    /// Request a `GDK_FRAME_CLOCK_PHASE_LAYOUT` from the surface's
    /// frame clock. See `gdk_frame_clock_request_phase()`.
    @inlinable func requestLayout() {
        gdk_surface_request_layout(surface_ptr)
    
    }

    /// Sets the default mouse pointer for a `GdkSurface`.
    /// 
    /// Note that `cursor` must be for the same display as `surface`.
    /// 
    /// Use `gdk_cursor_new_from_name()` or `gdk_cursor_new_from_texture()` to
    /// create the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    /// Passing `nil` for the `cursor` argument to `gdk_surface_set_cursor()` means
    /// that `surface` will use the cursor of its parent surface. Most surfaces
    /// should use this default.
    @inlinable func set(cursor: CursorRef? = nil) {
        gdk_surface_set_cursor(surface_ptr, cursor?.cursor_ptr)
    
    }
    /// Sets the default mouse pointer for a `GdkSurface`.
    /// 
    /// Note that `cursor` must be for the same display as `surface`.
    /// 
    /// Use `gdk_cursor_new_from_name()` or `gdk_cursor_new_from_texture()` to
    /// create the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    /// Passing `nil` for the `cursor` argument to `gdk_surface_set_cursor()` means
    /// that `surface` will use the cursor of its parent surface. Most surfaces
    /// should use this default.
    @inlinable func set<CursorT: CursorProtocol>(cursor: CursorT?) {
        gdk_surface_set_cursor(surface_ptr, cursor?.cursor_ptr)
    
    }

    /// Sets a specific `GdkCursor` for a given device when it gets inside `surface`.
    /// Use `gdk_cursor_new_from_name()` or `gdk_cursor_new_from_texture()` to create
    /// the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`. Passing
    /// `nil` for the `cursor` argument to `gdk_surface_set_cursor()` means that
    /// `surface` will use the cursor of its parent surface. Most surfaces should
    /// use this default.
    @inlinable func setDeviceCursor<CursorT: CursorProtocol, DeviceT: DeviceProtocol>(device: DeviceT, cursor: CursorT) {
        gdk_surface_set_device_cursor(surface_ptr, device.device_ptr, cursor.cursor_ptr)
    
    }

    /// Apply the region to the surface for the purpose of event
    /// handling. Mouse events which happen while the pointer position
    /// corresponds to an unset bit in the mask will be passed on the
    /// surface below `surface`.
    /// 
    /// An input region is typically used with RGBA surfaces.
    /// The alpha channel of the surface defines which pixels are
    /// invisible and allows for nicely antialiased borders,
    /// and the input region controls where the surface is
    /// “clickable”.
    /// 
    /// Use `gdk_display_supports_input_shapes()` to find out if
    /// a particular backend supports input regions.
    @inlinable func setInput<RegionT: Cairo.RegionProtocol>(region: RegionT) {
        gdk_surface_set_input_region(surface_ptr, region._ptr)
    
    }

    /// For optimisation purposes, compositing window managers may
    /// like to not draw obscured regions of surfaces, or turn off blending
    /// during for these regions. With RGB windows with no transparency,
    /// this is just the shape of the window, but with ARGB32 windows, the
    /// compositor does not know what regions of the window are transparent
    /// or not.
    /// 
    /// This function only works for toplevel surfaces.
    /// 
    /// GTK will update this property automatically if
    /// the `surface` background is opaque, as we know where the opaque regions
    /// are. If your surface background is not opaque, please update this
    /// property in your `GtkWidgetClass.css_changed``()` handler.
    @inlinable func setOpaque(region: Cairo.RegionRef? = nil) {
        gdk_surface_set_opaque_region(surface_ptr, region?._ptr)
    
    }
    /// For optimisation purposes, compositing window managers may
    /// like to not draw obscured regions of surfaces, or turn off blending
    /// during for these regions. With RGB windows with no transparency,
    /// this is just the shape of the window, but with ARGB32 windows, the
    /// compositor does not know what regions of the window are transparent
    /// or not.
    /// 
    /// This function only works for toplevel surfaces.
    /// 
    /// GTK will update this property automatically if
    /// the `surface` background is opaque, as we know where the opaque regions
    /// are. If your surface background is not opaque, please update this
    /// property in your `GtkWidgetClass.css_changed``()` handler.
    @inlinable func setOpaque<RegionT: Cairo.RegionProtocol>(region: RegionT?) {
        gdk_surface_set_opaque_region(surface_ptr, region?._ptr)
    
    }

    /// Translates the given coordinates from being
    /// relative to the `from` surface to being relative
    /// to the `to` surface.
    /// 
    /// Note that this only works if `to` and `from` are
    /// popups or transient-for to the same toplevel
    /// (directly or indirectly).
    @inlinable func translateCoordinates<SurfaceT: SurfaceProtocol>(to: SurfaceT, x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gdk_surface_translate_coordinates(surface_ptr, to.surface_ptr, x, y)) != 0)
        return rv
    }

    /// This is the main way to draw GL content in GTK. It takes a render buffer ID
    /// (`source_type` == `GL_RENDERBUFFER`) or a texture id (`source_type` == `GL_TEXTURE`)
    /// and draws it onto `cr` with an OVER operation, respecting the current clip.
    /// The top left corner of the rectangle specified by `x`, `y`, `width` and `height`
    /// will be drawn at the current (0,0) position of the cairo_t.
    /// 
    /// This will work for *all* cairo_t, as long as `surface` is realized, but the
    /// fallback implementation that reads back the pixels from the buffer may be
    /// used in the general case. In the case of direct drawing to a surface with
    /// no special effects applied to `cr` it will however use a more efficient
    /// approach.
    /// 
    /// For `GL_RENDERBUFFER` the code will always fall back to software for buffers
    /// with alpha components, so make sure you use `GL_TEXTURE` if using alpha.
    /// 
    /// Calling this may change the current GL context.
    @inlinable func cairoDrawFromGl<ContextT: Cairo.ContextProtocol>(cr: ContextT, source: Int, sourceType: Int, bufferScale: Int, x: Int, y: Int, width: Int, height: Int) {
        gdk_cairo_draw_from_gl(cr._ptr, surface_ptr, gint(source), gint(sourceType), gint(bufferScale), gint(x), gint(y), gint(width), gint(height))
    
    }
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    @inlinable var cursor: CursorRef! {
        /// Retrieves a `GdkCursor` pointer for the cursor currently set on the
        /// specified `GdkSurface`, or `nil`.  If the return value is `nil` then
        /// there is no custom cursor set on the specified surface, and it is
        /// using the cursor for its parent surface.
        get {
            let rv = CursorRef(gconstpointer: gconstpointer(gdk_surface_get_cursor(surface_ptr)))
            return rv
        }
        /// Sets the default mouse pointer for a `GdkSurface`.
        /// 
        /// Note that `cursor` must be for the same display as `surface`.
        /// 
        /// Use `gdk_cursor_new_from_name()` or `gdk_cursor_new_from_texture()` to
        /// create the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`.
        /// Passing `nil` for the `cursor` argument to `gdk_surface_set_cursor()` means
        /// that `surface` will use the cursor of its parent surface. Most surfaces
        /// should use this default.
        nonmutating set {
            gdk_surface_set_cursor(surface_ptr, UnsafeMutablePointer<GdkCursor>(newValue?.cursor_ptr))
        }
    }

    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    @inlinable var display: DisplayRef! {
        /// Gets the `GdkDisplay` associated with a `GdkSurface`.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_surface_get_display(surface_ptr)))
            return rv
        }
    }

    /// Gets the frame clock for the surface. The frame clock for a surface
    /// never changes unless the surface is reparented to a new toplevel
    /// surface.
    @inlinable var frameClock: FrameClockRef! {
        /// Gets the frame clock for the surface. The frame clock for a surface
        /// never changes unless the surface is reparented to a new toplevel
        /// surface.
        get {
            let rv = FrameClockRef(gconstpointer: gconstpointer(gdk_surface_get_frame_clock(surface_ptr)))
            return rv
        }
    }

    @inlinable var height: Int {
        /// Returns the height of the given `surface`.
        /// 
        /// Surface size is reported in ”application pixels”, not
        /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
        get {
            let rv = Int(gdk_surface_get_height(surface_ptr))
            return rv
        }
    }

    /// Check to see if a surface is destroyed..
    @inlinable var isDestroyed: Bool {
        /// Check to see if a surface is destroyed..
        get {
            let rv = ((gdk_surface_is_destroyed(surface_ptr)) != 0)
            return rv
        }
    }

    @inlinable var mapped: Bool {
        /// Checks whether the surface has been mapped (with `gdk_toplevel_present()`
        /// or `gdk_popup_present()`).
        get {
            let rv = ((gdk_surface_get_mapped(surface_ptr)) != 0)
            return rv
        }
    }

    /// Returns the internal scale factor that maps from surface coordinates
    /// to the actual device pixels. On traditional systems this is 1, but
    /// on very high density outputs this can be a higher value (often 2).
    /// 
    /// A higher value means that drawing is automatically scaled up to
    /// a higher resolution, so any code doing drawing will automatically look
    /// nicer. However, if you are supplying pixel-based data the scale
    /// value can be used to determine whether to use a pixel resource
    /// with higher resolution data.
    /// 
    /// The scale of a surface may change during runtime, if this happens
    /// a configure event will be sent to the toplevel surface.
    @inlinable var scaleFactor: Int {
        /// Returns the internal scale factor that maps from surface coordinates
        /// to the actual device pixels. On traditional systems this is 1, but
        /// on very high density outputs this can be a higher value (often 2).
        /// 
        /// A higher value means that drawing is automatically scaled up to
        /// a higher resolution, so any code doing drawing will automatically look
        /// nicer. However, if you are supplying pixel-based data the scale
        /// value can be used to determine whether to use a pixel resource
        /// with higher resolution data.
        /// 
        /// The scale of a surface may change during runtime, if this happens
        /// a configure event will be sent to the toplevel surface.
        get {
            let rv = Int(gdk_surface_get_scale_factor(surface_ptr))
            return rv
        }
    }

    @inlinable var width: Int {
        /// Returns the width of the given `surface`.
        /// 
        /// Surface size is reported in ”application pixels”, not
        /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
        get {
            let rv = Int(gdk_surface_get_width(surface_ptr))
            return rv
        }
    }


}



// MARK: - Texture Class

/// The `TextureProtocol` protocol exposes the methods and properties of an underlying `GdkTexture` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Texture`.
/// Alternatively, use `TextureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkTexture` structure contains only private data.
public protocol TextureProtocol: GLibObject.ObjectProtocol, PaintableProtocol {
        /// Untyped pointer to the underlying `GdkTexture` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkTexture` instance.
    var texture_ptr: UnsafeMutablePointer<GdkTexture>! { get }

}

/// The `TextureRef` type acts as a lightweight Swift reference to an underlying `GdkTexture` instance.
/// It exposes methods that can operate on this data type through `TextureProtocol` conformance.
/// Use `TextureRef` only as an `unowned` reference to an existing `GdkTexture` instance.
///
/// The `GdkTexture` structure contains only private data.
public struct TextureRef: TextureProtocol {
        /// Untyped pointer to the underlying `GdkTexture` instance.
    /// For type-safe access, use the generated, typed pointer `texture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextureRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkTexture>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkTexture>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkTexture>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkTexture>?) {
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

    /// Reference intialiser for a related type that implements `TextureProtocol`
    @inlinable init<T: TextureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new texture object representing the `GdkPixbuf`.
    @inlinable init<PixbufT: PixbufProtocol>(pixbuf: PixbufT) {
        let rv = gdk_texture_new_for_pixbuf(pixbuf.pixbuf_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new texture by loading an image from a file.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// If `nil` is returned, then `error` will be set.
    @inlinable init(file: UnsafeMutablePointer<GFile>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_texture_new_from_file(file, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new texture by loading an image from a resource.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// It is a fatal error if `resource_path` does not specify a valid
    /// image resource and the program will abort if that happens.
    /// If you are unsure about the validity of a resource, use
    /// `gdk_texture_new_from_file()` to load it.
    @inlinable init(resource resourcePath: UnsafePointer<CChar>!) {
        let rv = gdk_texture_new_from_resource(resourcePath)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new texture object representing the `GdkPixbuf`.
    @inlinable static func newFor<PixbufT: PixbufProtocol>(pixbuf: PixbufT) -> TextureRef! {
        guard let rv = TextureRef(gconstpointer: gconstpointer(gdk_texture_new_for_pixbuf(pixbuf.pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Creates a new texture by loading an image from a file.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// If `nil` is returned, then `error` will be set.
    @inlinable static func newFrom(file: UnsafeMutablePointer<GFile>!) throws -> TextureRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = TextureRef(gconstpointer: gconstpointer(gdk_texture_new_from_file(file, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new texture by loading an image from a resource.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// It is a fatal error if `resource_path` does not specify a valid
    /// image resource and the program will abort if that happens.
    /// If you are unsure about the validity of a resource, use
    /// `gdk_texture_new_from_file()` to load it.
    @inlinable static func newFrom(resource resourcePath: UnsafePointer<CChar>!) -> TextureRef! {
        guard let rv = TextureRef(gconstpointer: gconstpointer(gdk_texture_new_from_resource(resourcePath))) else { return nil }
        return rv
    }
}

/// The `Texture` type acts as a reference-counted owner of an underlying `GdkTexture` instance.
/// It provides the methods that can operate on this data type through `TextureProtocol` conformance.
/// Use `Texture` as a strong reference or owner of a `GdkTexture` instance.
///
/// The `GdkTexture` structure contains only private data.
open class Texture: GLibObject.Object, TextureProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkTexture>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkTexture>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkTexture>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkTexture>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkTexture`.
    /// i.e., ownership is transferred to the `Texture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkTexture>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TextureProtocol`
    /// Will retain `GdkTexture`.
    /// - Parameter other: an instance of a related type that implements `TextureProtocol`
    @inlinable public init<T: TextureProtocol>(texture other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new texture object representing the `GdkPixbuf`.
    @inlinable public init<PixbufT: PixbufProtocol>(pixbuf: PixbufT) {
        let rv = gdk_texture_new_for_pixbuf(pixbuf.pixbuf_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new texture by loading an image from a file.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// If `nil` is returned, then `error` will be set.
    @inlinable public init(file: UnsafeMutablePointer<GFile>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_texture_new_from_file(file, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new texture by loading an image from a resource.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// It is a fatal error if `resource_path` does not specify a valid
    /// image resource and the program will abort if that happens.
    /// If you are unsure about the validity of a resource, use
    /// `gdk_texture_new_from_file()` to load it.
    @inlinable public init(resource resourcePath: UnsafePointer<CChar>!) {
        let rv = gdk_texture_new_from_resource(resourcePath)
        super.init(gpointer: (rv))
    }

    /// Creates a new texture object representing the `GdkPixbuf`.
    @inlinable public static func newFor<PixbufT: PixbufProtocol>(pixbuf: PixbufT) -> Texture! {
        guard let rv = Texture(gconstpointer: gconstpointer(gdk_texture_new_for_pixbuf(pixbuf.pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Creates a new texture by loading an image from a file.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// If `nil` is returned, then `error` will be set.
    @inlinable public static func newFrom(file: UnsafeMutablePointer<GFile>!) throws -> Texture! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Texture(gconstpointer: gconstpointer(gdk_texture_new_from_file(file, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new texture by loading an image from a resource.
    /// The file format is detected automatically, and can be any
    /// format that is supported by the gdk-pixbuf library, such as
    /// JPEG or PNG.
    /// 
    /// It is a fatal error if `resource_path` does not specify a valid
    /// image resource and the program will abort if that happens.
    /// If you are unsure about the validity of a resource, use
    /// `gdk_texture_new_from_file()` to load it.
    @inlinable public static func newFrom(resource resourcePath: UnsafePointer<CChar>!) -> Texture! {
        guard let rv = Texture(gconstpointer: gconstpointer(gdk_texture_new_from_resource(resourcePath))) else { return nil }
        return rv
    }

}

public enum TexturePropertyName: String, PropertyNameProtocol {
    /// The height of the texture, in pixels.
    case height = "height"
    /// The width of the texture, in pixels.
    case width = "width"
}

public extension TextureProtocol {
    /// Bind a `TexturePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TexturePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Texture property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TexturePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Texture property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TexturePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TextureSignalName: String, SignalNameProtocol {
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
    /// The height of the texture, in pixels.
    case notifyHeight = "notify::height"
    /// The width of the texture, in pixels.
    case notifyWidth = "notify::width"
}

public extension TextureProtocol {
    /// Connect a `TextureSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: TextureSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Texture Class: TextureProtocol extension (methods and fields)
public extension TextureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkTexture` instance.
    @inlinable var texture_ptr: UnsafeMutablePointer<GdkTexture>! { return ptr?.assumingMemoryBound(to: GdkTexture.self) }

    /// Downloads the `texture` into local memory. This may be
    /// an expensive operation, as the actual texture data may
    /// reside on a GPU or on a remote display server.
    /// 
    /// The data format of the downloaded data is equivalent to
    /// `CAIRO_FORMAT_ARGB32`, so every downloaded pixel requires
    /// 4 bytes of memory.
    /// 
    /// Downloading a texture into a Cairo image surface:
    /// (C Language Example):
    /// ```C
    /// surface = cairo_image_surface_create (CAIRO_FORMAT_ARGB32,
    ///                                       gdk_texture_get_width (texture),
    ///                                       gdk_texture_get_height (texture));
    /// gdk_texture_download (texture,
    ///                       cairo_image_surface_get_data (surface),
    ///                       cairo_image_surface_get_stride (surface));
    /// cairo_surface_mark_dirty (surface);
    /// ```
    /// 
    @inlinable func download(data: UnsafeMutablePointer<guchar>!, stride: Int) {
        gdk_texture_download(texture_ptr, data, gsize(stride))
    
    }

    /// Returns the height of the `texture`, in pixels.
    @inlinable func getHeight() -> Int {
        let rv = Int(gdk_texture_get_height(texture_ptr))
        return rv
    }

    /// Returns the width of `texture`, in pixels.
    @inlinable func getWidth() -> Int {
        let rv = Int(gdk_texture_get_width(texture_ptr))
        return rv
    }

    /// Store the given `texture` to the `filename` as a PNG file.
    /// 
    /// This is a utility function intended for debugging and testing.
    /// If you want more control over formats, proper error handling or
    /// want to store to a `GFile` or other location, you might want to
    /// look into using the gdk-pixbuf library.
    @inlinable func saveToPng(filename: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gdk_texture_save_to_png(texture_ptr, filename)) != 0)
        return rv
    }

    /// Creates a new pixbuf from `texture`. This should generally not be used
    /// in newly written code as later stages will almost certainly convert
    /// the pixbuf back into a texture to draw it on screen.
    @inlinable func pixbufGetFromTexture() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_get_from_texture(texture_ptr)))
        return rv
    }
    /// The height of the texture, in pixels.
    @inlinable var height: Int {
        /// Returns the height of the `texture`, in pixels.
        get {
            let rv = Int(gdk_texture_get_height(texture_ptr))
            return rv
        }
    }

    /// The width of the texture, in pixels.
    @inlinable var width: Int {
        /// Returns the width of `texture`, in pixels.
        get {
            let rv = Int(gdk_texture_get_width(texture_ptr))
            return rv
        }
    }


}



