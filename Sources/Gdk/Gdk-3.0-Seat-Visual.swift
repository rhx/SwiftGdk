import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import GLib
import GLibObject
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
public protocol SeatProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GdkSeat` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkSeat` instance.
    var seat_ptr: UnsafeMutablePointer<GdkSeat> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension SeatRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkSeat>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SeatProtocol`
    init<T: SeatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Seat` type acts as a reference-counted owner of an underlying `GdkSeat` instance.
/// It provides the methods that can operate on this data type through `SeatProtocol` conformance.
/// Use `Seat` as a strong reference or owner of a `GdkSeat` instance.
///
/// The `GdkSeat` object represents a collection of input devices
/// that belong to a user.
open class Seat: Object, SeatProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Seat` instance.
    public init(_ op: UnsafeMutablePointer<GdkSeat>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `SeatProtocol`
    /// Will retain `GdkSeat`.
    public convenience init<T: SeatProtocol>(_ other: T) {
        self.init(cast(other.seat_ptr))
        g_object_ref(cast(seat_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkSeat.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkSeat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkSeat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeatProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkSeat>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SeatPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(seat_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    @discardableResult func connect(signal kind: SeatSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(seat_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension SeatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkSeat` instance.
    var seat_ptr: UnsafeMutablePointer<GdkSeat> { return ptr.assumingMemoryBound(to: GdkSeat.self) }

    /// Returns the capabilities this `GdkSeat` currently has.
    func getCapabilities() -> GdkSeatCapabilities {
        let rv = gdk_seat_get_capabilities(cast(seat_ptr))
        return rv
    }

    /// Returns the `GdkDisplay` this seat belongs to.
    func getDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gdk_seat_get_display(cast(seat_ptr))
        return cast(rv)
    }

    /// Returns the master device that routes keyboard events.
    func getKeyboard() -> UnsafeMutablePointer<GdkDevice>! {
        let rv = gdk_seat_get_keyboard(cast(seat_ptr))
        return cast(rv)
    }

    /// Returns the master device that routes pointer events.
    func getPointer() -> UnsafeMutablePointer<GdkDevice>! {
        let rv = gdk_seat_get_pointer(cast(seat_ptr))
        return cast(rv)
    }

    /// Returns the slave devices that match the given capabilities.
    func getSlaves(capabilities: SeatCapabilities) -> UnsafeMutablePointer<GList>! {
        let rv = gdk_seat_get_slaves(cast(seat_ptr), capabilities)
        return cast(rv)
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
    func grab(window: WindowProtocol, capabilities: SeatCapabilities, ownerEvents owner_events: Bool, cursor: CursorProtocol, event: UnsafePointer<GdkEvent>, prepareFunc prepare_func: @escaping SeatGrabPrepareFunc, prepareFuncData prepare_func_data: UnsafeMutableRawPointer) -> GdkGrabStatus {
        let rv = gdk_seat_grab(cast(seat_ptr), cast(window.ptr), capabilities, gboolean(owner_events ? 1 : 0), cast(cursor.ptr), cast(event), prepare_func, cast(prepare_func_data))
        return rv
    }

    /// Releases a grab added through `gdk_seat_grab()`.
    func ungrab() {
        gdk_seat_ungrab(cast(seat_ptr))
    
    }
    /// Returns the capabilities this `GdkSeat` currently has.
    var capabilities: GdkSeatCapabilities {
        /// Returns the capabilities this `GdkSeat` currently has.
        get {
            let rv = gdk_seat_get_capabilities(cast(seat_ptr))
            return rv
        }
    }

    /// `GdkDisplay` of this seat.
    var display: UnsafeMutablePointer<GdkDisplay>! {
        /// Returns the `GdkDisplay` this seat belongs to.
        get {
            let rv = gdk_seat_get_display(cast(seat_ptr))
            return cast(rv)
        }
    }

    /// Returns the master device that routes keyboard events.
    var keyboard: UnsafeMutablePointer<GdkDevice>! {
        /// Returns the master device that routes keyboard events.
        get {
            let rv = gdk_seat_get_keyboard(cast(seat_ptr))
            return cast(rv)
        }
    }

    /// Returns the master device that routes pointer events.
    var pointer: UnsafeMutablePointer<GdkDevice>! {
        /// Returns the master device that routes pointer events.
        get {
            let rv = gdk_seat_get_pointer(cast(seat_ptr))
            return cast(rv)
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
public protocol VisualProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GdkVisual` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkVisual` instance.
    var visual_ptr: UnsafeMutablePointer<GdkVisual> { get }
}

/// The `VisualRef` type acts as a lightweight Swift reference to an underlying `GdkVisual` instance.
/// It exposes methods that can operate on this data type through `VisualProtocol` conformance.
/// Use `VisualRef` only as an `unowned` reference to an existing `GdkVisual` instance.
///
/// A `GdkVisual` contains information about
/// a particular visual.
public struct VisualRef: VisualProtocol {
    /// Untyped pointer to the underlying `GdkVisual` instance.
    /// For type-safe access, use the generated, typed pointer `visual_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VisualRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkVisual>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VisualProtocol`
    init<T: VisualProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Get the visual with the most available colors for the default
    /// GDK screen. The return value should not be freed.
    ///
    /// **get_best is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) static func getBest() -> VisualRef! {
        let rv = gdk_visual_get_best()
        return rv.map { VisualRef(cast($0)) }
    }

    /// Combines `gdk_visual_get_best_with_depth()` and
    /// `gdk_visual_get_best_with_type()`.
    ///
    /// **get_best_with_both is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) static func getBestWith(both depth: CInt, visualType visual_type: VisualType) -> VisualRef! {
        let rv = gdk_visual_get_best_with_both(gint(depth), visual_type)
        return rv.map { VisualRef(cast($0)) }
    }

    /// Get the best visual with depth `depth` for the default GDK screen.
    /// Color visuals and visuals with mutable colormaps are preferred
    /// over grayscale or fixed-colormap visuals. The return value should
    /// not be freed. `nil` may be returned if no visual supports `depth`.
    ///
    /// **get_best_with_depth is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) static func getBestWith(depth: CInt) -> VisualRef! {
        let rv = gdk_visual_get_best_with_depth(gint(depth))
        return rv.map { VisualRef(cast($0)) }
    }

    /// Get the best visual of the given `visual_type` for the default GDK screen.
    /// Visuals with higher color depths are considered better. The return value
    /// should not be freed. `nil` may be returned if no visual has type
    /// `visual_type`.
    ///
    /// **get_best_with_type is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) static func getBestWith(type visual_type: VisualType) -> VisualRef! {
        let rv = gdk_visual_get_best_with_type(visual_type)
        return rv.map { VisualRef(cast($0)) }
    }

    /// Get the system’s default visual for the default GDK screen.
    /// This is the visual for the root window of the display.
    /// The return value should not be freed.
    ///
    /// **get_system is deprecated:**
    /// Use gdk_screen_get_system_visual (gdk_screen_get_default ()).
    @available(*, deprecated) static func getSystem() -> VisualRef! {
        let rv = gdk_visual_get_system()
        return rv.map { VisualRef(cast($0)) }
    }
}

/// The `Visual` type acts as a reference-counted owner of an underlying `GdkVisual` instance.
/// It provides the methods that can operate on this data type through `VisualProtocol` conformance.
/// Use `Visual` as a strong reference or owner of a `GdkVisual` instance.
///
/// A `GdkVisual` contains information about
/// a particular visual.
open class Visual: Object, VisualProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Visual` instance.
    public init(_ op: UnsafeMutablePointer<GdkVisual>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VisualProtocol`
    /// Will retain `GdkVisual`.
    public convenience init<T: VisualProtocol>(_ other: T) {
        self.init(cast(other.visual_ptr))
        g_object_ref(cast(visual_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkVisual.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkVisual.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkVisual.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VisualProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkVisual>(opaquePointer))
    }


    /// Get the visual with the most available colors for the default
    /// GDK screen. The return value should not be freed.
    ///
    /// **get_best is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) public static func getBest() -> Visual! {
        let rv = gdk_visual_get_best()
        return rv.map { Visual(cast($0)) }
    }

    /// Combines `gdk_visual_get_best_with_depth()` and
    /// `gdk_visual_get_best_with_type()`.
    ///
    /// **get_best_with_both is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) public static func getBestWith(both depth: CInt, visualType visual_type: VisualType) -> Visual! {
        let rv = gdk_visual_get_best_with_both(gint(depth), visual_type)
        return rv.map { Visual(cast($0)) }
    }

    /// Get the best visual with depth `depth` for the default GDK screen.
    /// Color visuals and visuals with mutable colormaps are preferred
    /// over grayscale or fixed-colormap visuals. The return value should
    /// not be freed. `nil` may be returned if no visual supports `depth`.
    ///
    /// **get_best_with_depth is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) public static func getBestWith(depth: CInt) -> Visual! {
        let rv = gdk_visual_get_best_with_depth(gint(depth))
        return rv.map { Visual(cast($0)) }
    }

    /// Get the best visual of the given `visual_type` for the default GDK screen.
    /// Visuals with higher color depths are considered better. The return value
    /// should not be freed. `nil` may be returned if no visual has type
    /// `visual_type`.
    ///
    /// **get_best_with_type is deprecated:**
    /// Visual selection should be done using
    ///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
    @available(*, deprecated) public static func getBestWith(type visual_type: VisualType) -> Visual! {
        let rv = gdk_visual_get_best_with_type(visual_type)
        return rv.map { Visual(cast($0)) }
    }

    /// Get the system’s default visual for the default GDK screen.
    /// This is the visual for the root window of the display.
    /// The return value should not be freed.
    ///
    /// **get_system is deprecated:**
    /// Use gdk_screen_get_system_visual (gdk_screen_get_default ()).
    @available(*, deprecated) public static func getSystem() -> Visual! {
        let rv = gdk_visual_get_system()
        return rv.map { Visual(cast($0)) }
    }

}

// MARK: - no Visual properties

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

public extension VisualProtocol {
    /// Connect a `VisualSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VisualSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(visual_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VisualProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkVisual` instance.
    var visual_ptr: UnsafeMutablePointer<GdkVisual> { return ptr.assumingMemoryBound(to: GdkVisual.self) }

    /// Returns the number of significant bits per red, green and blue value.
    /// 
    /// Not all GDK backend provide a meaningful value for this function.
    ///
    /// **get_bits_per_rgb is deprecated:**
    /// Use gdk_visual_get_red_pixel_details() and its variants to
    ///     learn about the pixel layout of TrueColor and DirectColor visuals
    @available(*, deprecated) func getBitsPerRgb() -> CInt {
        let rv = gdk_visual_get_bits_per_rgb(cast(visual_ptr))
        return CInt(rv)
    }

    /// Obtains values that are needed to calculate blue pixel values in TrueColor
    /// and DirectColor. The “mask” is the significant bits within the pixel.
    /// The “shift” is the number of bits left we must shift a primary for it
    /// to be in position (according to the "mask"). Finally, "precision" refers
    /// to how much precision the pixel value contains for a particular primary.
    func getBluePixelDetails(mask: UnsafeMutablePointer<UInt32>, shift: UnsafeMutablePointer<CInt>, precision: UnsafeMutablePointer<CInt>) {
        gdk_visual_get_blue_pixel_details(cast(visual_ptr), cast(mask), cast(shift), cast(precision))
    
    }

    /// Returns the byte order of this visual.
    /// 
    /// The information returned by this function is only relevant
    /// when working with XImages, and not all backends return
    /// meaningful information for this.
    ///
    /// **get_byte_order is deprecated:**
    /// This information is not useful
    @available(*, deprecated) func getByteOrder() -> GdkByteOrder {
        let rv = gdk_visual_get_byte_order(cast(visual_ptr))
        return rv
    }

    /// Returns the size of a colormap for this visual.
    /// 
    /// You have to use platform-specific APIs to manipulate colormaps.
    ///
    /// **get_colormap_size is deprecated:**
    /// This information is not useful, since GDK does not
    ///     provide APIs to operate on colormaps.
    @available(*, deprecated) func getColormapSize() -> CInt {
        let rv = gdk_visual_get_colormap_size(cast(visual_ptr))
        return CInt(rv)
    }

    /// Returns the bit depth of this visual.
    func getDepth() -> CInt {
        let rv = gdk_visual_get_depth(cast(visual_ptr))
        return CInt(rv)
    }

    /// Obtains values that are needed to calculate green pixel values in TrueColor
    /// and DirectColor. The “mask” is the significant bits within the pixel.
    /// The “shift” is the number of bits left we must shift a primary for it
    /// to be in position (according to the "mask"). Finally, "precision" refers
    /// to how much precision the pixel value contains for a particular primary.
    func getGreenPixelDetails(mask: UnsafeMutablePointer<UInt32>, shift: UnsafeMutablePointer<CInt>, precision: UnsafeMutablePointer<CInt>) {
        gdk_visual_get_green_pixel_details(cast(visual_ptr), cast(mask), cast(shift), cast(precision))
    
    }

    /// Obtains values that are needed to calculate red pixel values in TrueColor
    /// and DirectColor. The “mask” is the significant bits within the pixel.
    /// The “shift” is the number of bits left we must shift a primary for it
    /// to be in position (according to the "mask"). Finally, "precision" refers
    /// to how much precision the pixel value contains for a particular primary.
    func getRedPixelDetails(mask: UnsafeMutablePointer<UInt32>, shift: UnsafeMutablePointer<CInt>, precision: UnsafeMutablePointer<CInt>) {
        gdk_visual_get_red_pixel_details(cast(visual_ptr), cast(mask), cast(shift), cast(precision))
    
    }

    /// Gets the screen to which this visual belongs
    func getScreen() -> UnsafeMutablePointer<GdkScreen>! {
        let rv = gdk_visual_get_screen(cast(visual_ptr))
        return cast(rv)
    }

    /// Returns the type of visual this is (PseudoColor, TrueColor, etc).
    func getVisualType() -> GdkVisualType {
        let rv = gdk_visual_get_visual_type(cast(visual_ptr))
        return rv
    }
    /// Returns the number of significant bits per red, green and blue value.
    /// 
    /// Not all GDK backend provide a meaningful value for this function.
    ///
    /// **get_bits_per_rgb is deprecated:**
    /// Use gdk_visual_get_red_pixel_details() and its variants to
    ///     learn about the pixel layout of TrueColor and DirectColor visuals
    var bitsPerRgb: CInt {
        /// Returns the number of significant bits per red, green and blue value.
        /// 
        /// Not all GDK backend provide a meaningful value for this function.
        ///
        /// **get_bits_per_rgb is deprecated:**
        /// Use gdk_visual_get_red_pixel_details() and its variants to
        ///     learn about the pixel layout of TrueColor and DirectColor visuals
        @available(*, deprecated) get {
            let rv = gdk_visual_get_bits_per_rgb(cast(visual_ptr))
            return CInt(rv)
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
    var byteOrder: GdkByteOrder {
        /// Returns the byte order of this visual.
        /// 
        /// The information returned by this function is only relevant
        /// when working with XImages, and not all backends return
        /// meaningful information for this.
        ///
        /// **get_byte_order is deprecated:**
        /// This information is not useful
        @available(*, deprecated) get {
            let rv = gdk_visual_get_byte_order(cast(visual_ptr))
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
    var colormapSize: CInt {
        /// Returns the size of a colormap for this visual.
        /// 
        /// You have to use platform-specific APIs to manipulate colormaps.
        ///
        /// **get_colormap_size is deprecated:**
        /// This information is not useful, since GDK does not
        ///     provide APIs to operate on colormaps.
        @available(*, deprecated) get {
            let rv = gdk_visual_get_colormap_size(cast(visual_ptr))
            return CInt(rv)
        }
    }

    /// Returns the bit depth of this visual.
    var depth: CInt {
        /// Returns the bit depth of this visual.
        get {
            let rv = gdk_visual_get_depth(cast(visual_ptr))
            return CInt(rv)
        }
    }

    /// Gets the screen to which this visual belongs
    var screen: UnsafeMutablePointer<GdkScreen>! {
        /// Gets the screen to which this visual belongs
        get {
            let rv = gdk_visual_get_screen(cast(visual_ptr))
            return cast(rv)
        }
    }

    /// Returns the type of visual this is (PseudoColor, TrueColor, etc).
    var visualType: GdkVisualType {
        /// Returns the type of visual this is (PseudoColor, TrueColor, etc).
        get {
            let rv = gdk_visual_get_visual_type(cast(visual_ptr))
            return rv
        }
    }
}



