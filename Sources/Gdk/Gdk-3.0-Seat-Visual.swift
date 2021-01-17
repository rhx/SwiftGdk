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
public struct SeatRef: SeatProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: SeatProtocol>(_ other: T) -> SeatRef { SeatRef(other) }

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

// MARK: Seat signals
public extension SeatProtocol {
    /// Connect a Swift signal handler to the given, typed `SeatSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: SeatSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `SeatSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: SeatSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `device`-added signal is emitted when a new input
    /// device is related to this seat.
    /// - Note: This represents the underlying `device-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter device: the newly added `GdkDevice`.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `deviceAdded` signal is emitted
    @discardableResult @inlinable func onDeviceAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: SeatRef, _ device: DeviceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<SeatRef, DeviceRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(SeatRef(raw: unownedSelf), DeviceRef(raw: arg1))
            return output
        }
        return connect(
            signal: .deviceAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `device-added` signal for using the `connect(signal:)` methods
    static var deviceAddedSignal: SeatSignalName { .deviceAdded }
    
    /// The `device`-removed signal is emitted when an
    /// input device is removed (e.g. unplugged).
    /// - Note: This represents the underlying `device-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter device: the just removed `GdkDevice`.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `deviceRemoved` signal is emitted
    @discardableResult @inlinable func onDeviceRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: SeatRef, _ device: DeviceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<SeatRef, DeviceRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(SeatRef(raw: unownedSelf), DeviceRef(raw: arg1))
            return output
        }
        return connect(
            signal: .deviceRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `device-removed` signal for using the `connect(signal:)` methods
    static var deviceRemovedSignal: SeatSignalName { .deviceRemoved }
    
    /// The `tool`-added signal is emitted whenever a new tool
    /// is made known to the seat. The tool may later be assigned
    /// to a device (i.e. on proximity with a tablet). The device
    /// will emit the `GdkDevice::tool`-changed signal accordingly.
    /// 
    /// A same tool may be used by several devices.
    /// - Note: This represents the underlying `tool-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter tool: the new `GdkDeviceTool` known to the seat
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `toolAdded` signal is emitted
    @discardableResult @inlinable func onToolAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: SeatRef, _ tool: DeviceToolRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<SeatRef, DeviceToolRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(SeatRef(raw: unownedSelf), DeviceToolRef(raw: arg1))
            return output
        }
        return connect(
            signal: .toolAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `tool-added` signal for using the `connect(signal:)` methods
    static var toolAddedSignal: SeatSignalName { .toolAdded }
    
    /// This signal is emitted whenever a tool is no longer known
    /// to this `seat`.
    /// - Note: This represents the underlying `tool-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter tool: the just removed `GdkDeviceTool`
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `toolRemoved` signal is emitted
    @discardableResult @inlinable func onToolRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: SeatRef, _ tool: DeviceToolRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<SeatRef, DeviceToolRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(SeatRef(raw: unownedSelf), DeviceToolRef(raw: arg1))
            return output
        }
        return connect(
            signal: .toolRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `tool-removed` signal for using the `connect(signal:)` methods
    static var toolRemovedSignal: SeatSignalName { .toolRemoved }
    
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
    @discardableResult @inlinable func onNotifyDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: SeatRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<SeatRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(SeatRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyDisplaySignal: SeatSignalName { .notifyDisplay }
    
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

    /// Returns the `GdkDisplay` this seat belongs to.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_seat_get_display(seat_ptr)))
        return rv
    }

    /// Returns the master device that routes keyboard events.
    @inlinable func getKeyboard() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_keyboard(seat_ptr)))
        return rv
    }

    /// Returns the master device that routes pointer events.
    @inlinable func getPointer() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_pointer(seat_ptr)))
        return rv
    }

    /// Returns the slave devices that match the given capabilities.
    @inlinable func getSlaves(capabilities: SeatCapabilities) -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_seat_get_slaves(seat_ptr, capabilities.value))
        return rv
    }

    /// Grabs the seat so that all events corresponding to the given `capabilities`
    /// are passed to this application until the seat is ungrabbed with `gdk_seat_ungrab()`,
    /// or the window becomes hidden. This overrides any previous grab on the
    /// seat by this client.
    /// 
    /// As a rule of thumb, if a grab is desired over `GDK_SEAT_CAPABILITY_POINTER`,
    /// all other "pointing" capabilities (eg. `GDK_SEAT_CAPABILITY_TOUCH`) should
    /// be grabbed too, so the user is able to interact with all of those while
    /// the grab holds, you should thus use `GDK_SEAT_CAPABILITY_ALL_POINTING` most
    /// commonly.
    /// 
    /// Grabs are used for operations which need complete control over the
    /// events corresponding to the given capabilities. For example in GTK+ this
    /// is used for Drag and Drop operations, popup menus and such.
    /// 
    /// Note that if the event mask of a `GdkWindow` has selected both button press
    /// and button release events, or touch begin and touch end, then a press event
    /// will cause an automatic grab until the button is released, equivalent to a
    /// grab on the window with `owner_events` set to `true`. This is done because most
    /// applications expect to receive paired press and release events.
    /// 
    /// If you set up anything at the time you take the grab that needs to be
    /// cleaned up when the grab ends, you should handle the `GdkEventGrabBroken`
    /// events that are emitted when the grab ends unvoluntarily.
    @inlinable func grab<WindowT: WindowProtocol>(window: WindowT, capabilities: SeatCapabilities, ownerEvents: Bool, cursor: CursorRef? = nil, event: EventRef? = nil, prepareFunc: GdkSeatGrabPrepareFunc? = nil, prepareFuncData: gpointer! = nil) -> GdkGrabStatus {
        let rv = gdk_seat_grab(seat_ptr, window.window_ptr, capabilities.value, gboolean((ownerEvents) ? 1 : 0), cursor?.cursor_ptr, event?.event_ptr, prepareFunc, prepareFuncData)
        return rv
    }
    /// Grabs the seat so that all events corresponding to the given `capabilities`
    /// are passed to this application until the seat is ungrabbed with `gdk_seat_ungrab()`,
    /// or the window becomes hidden. This overrides any previous grab on the
    /// seat by this client.
    /// 
    /// As a rule of thumb, if a grab is desired over `GDK_SEAT_CAPABILITY_POINTER`,
    /// all other "pointing" capabilities (eg. `GDK_SEAT_CAPABILITY_TOUCH`) should
    /// be grabbed too, so the user is able to interact with all of those while
    /// the grab holds, you should thus use `GDK_SEAT_CAPABILITY_ALL_POINTING` most
    /// commonly.
    /// 
    /// Grabs are used for operations which need complete control over the
    /// events corresponding to the given capabilities. For example in GTK+ this
    /// is used for Drag and Drop operations, popup menus and such.
    /// 
    /// Note that if the event mask of a `GdkWindow` has selected both button press
    /// and button release events, or touch begin and touch end, then a press event
    /// will cause an automatic grab until the button is released, equivalent to a
    /// grab on the window with `owner_events` set to `true`. This is done because most
    /// applications expect to receive paired press and release events.
    /// 
    /// If you set up anything at the time you take the grab that needs to be
    /// cleaned up when the grab ends, you should handle the `GdkEventGrabBroken`
    /// events that are emitted when the grab ends unvoluntarily.
    @inlinable func grab<CursorT: CursorProtocol, EventT: EventProtocol, WindowT: WindowProtocol>(window: WindowT, capabilities: SeatCapabilities, ownerEvents: Bool, cursor: CursorT?, event: EventT?, prepareFunc: GdkSeatGrabPrepareFunc? = nil, prepareFuncData: gpointer! = nil) -> GdkGrabStatus {
        let rv = gdk_seat_grab(seat_ptr, window.window_ptr, capabilities.value, gboolean((ownerEvents) ? 1 : 0), cursor?.cursor_ptr, event?.event_ptr, prepareFunc, prepareFuncData)
        return rv
    }

    /// Releases a grab added through `gdk_seat_grab()`.
    @inlinable func ungrab() {
        gdk_seat_ungrab(seat_ptr)
    
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

    /// Returns the master device that routes keyboard events.
    @inlinable var keyboard: DeviceRef! {
        /// Returns the master device that routes keyboard events.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_keyboard(seat_ptr)))
            return rv
        }
    }

    /// Returns the master device that routes pointer events.
    @inlinable var pointer: DeviceRef! {
        /// Returns the master device that routes pointer events.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_seat_get_pointer(seat_ptr)))
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



// MARK: - Visual Class

/// The `VisualProtocol` protocol exposes the methods and properties of an underlying `GdkVisual` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Visual`.
/// Alternatively, use `VisualRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkVisual` contains information about
/// a particular visual.
public protocol VisualProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkVisual` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkVisual` instance.
    var visual_ptr: UnsafeMutablePointer<GdkVisual>! { get }

}

/// The `VisualRef` type acts as a lightweight Swift reference to an underlying `GdkVisual` instance.
/// It exposes methods that can operate on this data type through `VisualProtocol` conformance.
/// Use `VisualRef` only as an `unowned` reference to an existing `GdkVisual` instance.
///
/// A `GdkVisual` contains information about
/// a particular visual.
public struct VisualRef: VisualProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkVisual` instance.
    /// For type-safe access, use the generated, typed pointer `visual_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VisualRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkVisual>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkVisual>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkVisual>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkVisual>?) {
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

    /// Reference intialiser for a related type that implements `VisualProtocol`
    @inlinable init<T: VisualProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: VisualProtocol>(_ other: T) -> VisualRef { VisualRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Get the visual with the most available colors for the default
    /// GDK screen. The return value should not be freed.
    ///
    /// **get_best is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable static func getBest() -> VisualRef! {
        guard let rv = VisualRef(gconstpointer: gconstpointer(gdk_visual_get_best())) else { return nil }
        return rv
    }

    /// Combines `gdk_visual_get_best_with_depth()` and
    /// `gdk_visual_get_best_with_type()`.
    ///
    /// **get_best_with_both is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable static func getBestWith(both depth: Int, visualType: GdkVisualType) -> VisualRef! {
        guard let rv = VisualRef(gconstpointer: gconstpointer(gdk_visual_get_best_with_both(gint(depth), visualType))) else { return nil }
        return rv
    }

    /// Get the best visual with depth `depth` for the default GDK screen.
    /// Color visuals and visuals with mutable colormaps are preferred
    /// over grayscale or fixed-colormap visuals. The return value should
    /// not be freed. `nil` may be returned if no visual supports `depth`.
    ///
    /// **get_best_with_depth is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable static func getBestWith(depth: Int) -> VisualRef! {
        guard let rv = VisualRef(gconstpointer: gconstpointer(gdk_visual_get_best_with_depth(gint(depth)))) else { return nil }
        return rv
    }

    /// Get the best visual of the given `visual_type` for the default GDK screen.
    /// Visuals with higher color depths are considered better. The return value
    /// should not be freed. `nil` may be returned if no visual has type
    /// `visual_type`.
    ///
    /// **get_best_with_type is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable static func getBestWith(type visualType: GdkVisualType) -> VisualRef! {
        guard let rv = VisualRef(gconstpointer: gconstpointer(gdk_visual_get_best_with_type(visualType))) else { return nil }
        return rv
    }

    /// Get the system’s default visual for the default GDK screen.
    /// This is the visual for the root window of the display.
    /// The return value should not be freed.
    ///
    /// **get_system is deprecated:**
    /// Use gdk_screen_get_system_visual (gdk_screen_get_default ()).
    @available(*, deprecated) @inlinable static func getSystem() -> VisualRef! {
        guard let rv = VisualRef(gconstpointer: gconstpointer(gdk_visual_get_system())) else { return nil }
        return rv
    }
}

/// The `Visual` type acts as a reference-counted owner of an underlying `GdkVisual` instance.
/// It provides the methods that can operate on this data type through `VisualProtocol` conformance.
/// Use `Visual` as a strong reference or owner of a `GdkVisual` instance.
///
/// A `GdkVisual` contains information about
/// a particular visual.
open class Visual: GLibObject.Object, VisualProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Visual` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkVisual>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Visual` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkVisual>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Visual` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Visual` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Visual` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkVisual>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Visual` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkVisual>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkVisual`.
    /// i.e., ownership is transferred to the `Visual` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkVisual>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `VisualProtocol`
    /// Will retain `GdkVisual`.
    /// - Parameter other: an instance of a related type that implements `VisualProtocol`
    @inlinable public init<T: VisualProtocol>(visual other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Get the visual with the most available colors for the default
    /// GDK screen. The return value should not be freed.
    ///
    /// **get_best is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable public static func getBest() -> Visual! {
        guard let rv = Visual(gconstpointer: gconstpointer(gdk_visual_get_best())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Combines `gdk_visual_get_best_with_depth()` and
    /// `gdk_visual_get_best_with_type()`.
    ///
    /// **get_best_with_both is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable public static func getBestWith(both depth: Int, visualType: GdkVisualType) -> Visual! {
        guard let rv = Visual(gconstpointer: gconstpointer(gdk_visual_get_best_with_both(gint(depth), visualType))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Get the best visual with depth `depth` for the default GDK screen.
    /// Color visuals and visuals with mutable colormaps are preferred
    /// over grayscale or fixed-colormap visuals. The return value should
    /// not be freed. `nil` may be returned if no visual supports `depth`.
    ///
    /// **get_best_with_depth is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable public static func getBestWith(depth: Int) -> Visual! {
        guard let rv = Visual(gconstpointer: gconstpointer(gdk_visual_get_best_with_depth(gint(depth)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Get the best visual of the given `visual_type` for the default GDK screen.
    /// Visuals with higher color depths are considered better. The return value
    /// should not be freed. `nil` may be returned if no visual has type
    /// `visual_type`.
    ///
    /// **get_best_with_type is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) @inlinable public static func getBestWith(type visualType: GdkVisualType) -> Visual! {
        guard let rv = Visual(gconstpointer: gconstpointer(gdk_visual_get_best_with_type(visualType))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Get the system’s default visual for the default GDK screen.
    /// This is the visual for the root window of the display.
    /// The return value should not be freed.
    ///
    /// **get_system is deprecated:**
    /// Use gdk_screen_get_system_visual (gdk_screen_get_default ()).
    @available(*, deprecated) @inlinable public static func getSystem() -> Visual! {
        guard let rv = Visual(gconstpointer: gconstpointer(gdk_visual_get_system())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no Visual properties

public enum VisualSignalName: String, SignalNameProtocol {
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

// MARK: Visual has no signals
// MARK: Visual Class: VisualProtocol extension (methods and fields)
public extension VisualProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkVisual` instance.
    @inlinable var visual_ptr: UnsafeMutablePointer<GdkVisual>! { return ptr?.assumingMemoryBound(to: GdkVisual.self) }

    /// Returns the number of significant bits per red, green and blue value.
    /// 
    /// Not all GDK backend provide a meaningful value for this function.
    ///
    /// **get_bits_per_rgb is deprecated:**
    /// Use gdk_visual_get_red_pixel_details() and its variants to
    ///     learn about the pixel layout of TrueColor and DirectColor visuals
    @available(*, deprecated) @inlinable func getBitsPerRgb() -> Int {
        let rv = Int(gdk_visual_get_bits_per_rgb(visual_ptr))
        return rv
    }

    /// Obtains values that are needed to calculate blue pixel values in TrueColor
    /// and DirectColor. The “mask” is the significant bits within the pixel.
    /// The “shift” is the number of bits left we must shift a primary for it
    /// to be in position (according to the "mask"). Finally, "precision" refers
    /// to how much precision the pixel value contains for a particular primary.
    @inlinable func getBluePixelDetails(mask: UnsafeMutablePointer<guint32>! = nil, shift: UnsafeMutablePointer<gint>! = nil, precision: UnsafeMutablePointer<gint>! = nil) {
        gdk_visual_get_blue_pixel_details(visual_ptr, mask, shift, precision)
    
    }

    /// Returns the byte order of this visual.
    /// 
    /// The information returned by this function is only relevant
    /// when working with XImages, and not all backends return
    /// meaningful information for this.
    ///
    /// **get_byte_order is deprecated:**
    /// This information is not useful
    @available(*, deprecated) @inlinable func getByteOrder() -> GdkByteOrder {
        let rv = gdk_visual_get_byte_order(visual_ptr)
        return rv
    }

    /// Returns the size of a colormap for this visual.
    /// 
    /// You have to use platform-specific APIs to manipulate colormaps.
    ///
    /// **get_colormap_size is deprecated:**
    /// This information is not useful, since GDK does not
    ///     provide APIs to operate on colormaps.
    @available(*, deprecated) @inlinable func getColormapSize() -> Int {
        let rv = Int(gdk_visual_get_colormap_size(visual_ptr))
        return rv
    }

    /// Returns the bit depth of this visual.
    @inlinable func getDepth() -> Int {
        let rv = Int(gdk_visual_get_depth(visual_ptr))
        return rv
    }

    /// Obtains values that are needed to calculate green pixel values in TrueColor
    /// and DirectColor. The “mask” is the significant bits within the pixel.
    /// The “shift” is the number of bits left we must shift a primary for it
    /// to be in position (according to the "mask"). Finally, "precision" refers
    /// to how much precision the pixel value contains for a particular primary.
    @inlinable func getGreenPixelDetails(mask: UnsafeMutablePointer<guint32>! = nil, shift: UnsafeMutablePointer<gint>! = nil, precision: UnsafeMutablePointer<gint>! = nil) {
        gdk_visual_get_green_pixel_details(visual_ptr, mask, shift, precision)
    
    }

    /// Obtains values that are needed to calculate red pixel values in TrueColor
    /// and DirectColor. The “mask” is the significant bits within the pixel.
    /// The “shift” is the number of bits left we must shift a primary for it
    /// to be in position (according to the "mask"). Finally, "precision" refers
    /// to how much precision the pixel value contains for a particular primary.
    @inlinable func getRedPixelDetails(mask: UnsafeMutablePointer<guint32>! = nil, shift: UnsafeMutablePointer<gint>! = nil, precision: UnsafeMutablePointer<gint>! = nil) {
        gdk_visual_get_red_pixel_details(visual_ptr, mask, shift, precision)
    
    }

    /// Gets the screen to which this visual belongs
    @inlinable func getScreen() -> ScreenRef! {
        let rv = ScreenRef(gconstpointer: gconstpointer(gdk_visual_get_screen(visual_ptr)))
        return rv
    }

    /// Returns the type of visual this is (PseudoColor, TrueColor, etc).
    @inlinable func getVisualType() -> GdkVisualType {
        let rv = gdk_visual_get_visual_type(visual_ptr)
        return rv
    }
    /// Returns the number of significant bits per red, green and blue value.
    /// 
    /// Not all GDK backend provide a meaningful value for this function.
    ///
    /// **get_bits_per_rgb is deprecated:**
    /// Use gdk_visual_get_red_pixel_details() and its variants to
    ///     learn about the pixel layout of TrueColor and DirectColor visuals
    @inlinable var bitsPerRgb: Int {
        /// Returns the number of significant bits per red, green and blue value.
        /// 
        /// Not all GDK backend provide a meaningful value for this function.
        ///
        /// **get_bits_per_rgb is deprecated:**
        /// Use gdk_visual_get_red_pixel_details() and its variants to
        ///     learn about the pixel layout of TrueColor and DirectColor visuals
        @available(*, deprecated) get {
            let rv = Int(gdk_visual_get_bits_per_rgb(visual_ptr))
            return rv
        }
    }

    /// Returns the byte order of this visual.
    /// 
    /// The information returned by this function is only relevant
    /// when working with XImages, and not all backends return
    /// meaningful information for this.
    ///
    /// **get_byte_order is deprecated:**
    /// This information is not useful
    @inlinable var byteOrder: GdkByteOrder {
        /// Returns the byte order of this visual.
        /// 
        /// The information returned by this function is only relevant
        /// when working with XImages, and not all backends return
        /// meaningful information for this.
        ///
        /// **get_byte_order is deprecated:**
        /// This information is not useful
        @available(*, deprecated) get {
            let rv = gdk_visual_get_byte_order(visual_ptr)
            return rv
        }
    }

    /// Returns the size of a colormap for this visual.
    /// 
    /// You have to use platform-specific APIs to manipulate colormaps.
    ///
    /// **get_colormap_size is deprecated:**
    /// This information is not useful, since GDK does not
    ///     provide APIs to operate on colormaps.
    @inlinable var colormapSize: Int {
        /// Returns the size of a colormap for this visual.
        /// 
        /// You have to use platform-specific APIs to manipulate colormaps.
        ///
        /// **get_colormap_size is deprecated:**
        /// This information is not useful, since GDK does not
        ///     provide APIs to operate on colormaps.
        @available(*, deprecated) get {
            let rv = Int(gdk_visual_get_colormap_size(visual_ptr))
            return rv
        }
    }

    /// Returns the bit depth of this visual.
    @inlinable var depth: Int {
        /// Returns the bit depth of this visual.
        get {
            let rv = Int(gdk_visual_get_depth(visual_ptr))
            return rv
        }
    }

    /// Gets the screen to which this visual belongs
    @inlinable var screen: ScreenRef! {
        /// Gets the screen to which this visual belongs
        get {
            let rv = ScreenRef(gconstpointer: gconstpointer(gdk_visual_get_screen(visual_ptr)))
            return rv
        }
    }

    /// Returns the type of visual this is (PseudoColor, TrueColor, etc).
    @inlinable var visualType: GdkVisualType {
        /// Returns the type of visual this is (PseudoColor, TrueColor, etc).
        get {
            let rv = gdk_visual_get_visual_type(visual_ptr)
            return rv
        }
    }


}



