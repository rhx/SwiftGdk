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

// MARK: - Window Class

/// The `WindowProtocol` protocol exposes the methods and properties of an underlying `GdkWindow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Window`.
/// Alternatively, use `WindowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkWindow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkWindow` instance.
    var window_ptr: UnsafeMutablePointer<GdkWindow>! { get }

}

/// The `WindowRef` type acts as a lightweight Swift reference to an underlying `GdkWindow` instance.
/// It exposes methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `WindowRef` only as an `unowned` reference to an existing `GdkWindow` instance.
///

public struct WindowRef: WindowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkWindow` instance.
    /// For type-safe access, use the generated, typed pointer `window_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkWindow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkWindow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkWindow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkWindow>?) {
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

    /// Reference intialiser for a related type that implements `WindowProtocol`
    @inlinable init<T: WindowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowProtocol>(_ other: T) -> WindowRef { WindowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Obtains the window underneath the mouse pointer, returning the
    /// location of that window in `win_x`, `win_y`. Returns `nil` if the
    /// window under the mouse pointer is not known to GDK (if the window
    /// belongs to another application and a `GdkWindow` hasn’t been created
    /// for it with `gdk_window_foreign_new()`)
    /// 
    /// NOTE: For multihead-aware widgets or applications use
    /// `gdk_display_get_window_at_pointer()` instead.
    ///
    /// **at_pointer is deprecated:**
    /// Use gdk_device_get_window_at_position() instead.
    @available(*, deprecated) @inlinable static func atPointer(winX: UnsafeMutablePointer<gint>! = nil, winY: UnsafeMutablePointer<gint>! = nil) -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_at_pointer(winX, winY))) else { return nil }
        return rv
    }
}

/// The `Window` type acts as a reference-counted owner of an underlying `GdkWindow` instance.
/// It provides the methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `Window` as a strong reference or owner of a `GdkWindow` instance.
///

open class Window: GLibObject.Object, WindowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkWindow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkWindow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkWindow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkWindow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkWindow`.
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkWindow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowProtocol`
    /// Will retain `GdkWindow`.
    /// - Parameter other: an instance of a related type that implements `WindowProtocol`
    @inlinable public init<T: WindowProtocol>(window other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Obtains the window underneath the mouse pointer, returning the
    /// location of that window in `win_x`, `win_y`. Returns `nil` if the
    /// window under the mouse pointer is not known to GDK (if the window
    /// belongs to another application and a `GdkWindow` hasn’t been created
    /// for it with `gdk_window_foreign_new()`)
    /// 
    /// NOTE: For multihead-aware widgets or applications use
    /// `gdk_display_get_window_at_pointer()` instead.
    ///
    /// **at_pointer is deprecated:**
    /// Use gdk_device_get_window_at_position() instead.
    @available(*, deprecated) @inlinable public static func atPointer(winX: UnsafeMutablePointer<gint>! = nil, winY: UnsafeMutablePointer<gint>! = nil) -> Window! {
        guard let rv = Window(gconstpointer: gconstpointer(gdk_window_at_pointer(winX, winY))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum WindowPropertyName: String, PropertyNameProtocol {
    /// The mouse pointer for a `GdkWindow`. See `gdk_window_set_cursor()` and
    /// `gdk_window_get_cursor()` for details.
    case cursor = "cursor"
}

public extension WindowProtocol {
    /// Bind a `WindowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WindowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Window property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WindowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Window property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WindowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WindowSignalName: String, SignalNameProtocol {
    /// The `create`-surface signal is emitted when an offscreen window
    /// needs its surface (re)created, which happens either when the
    /// window is first drawn to, or when the window is being
    /// resized. The first signal handler that returns a non-`nil`
    /// surface will stop any further signal emission, and its surface
    /// will be used.
    /// 
    /// Note that it is not possible to access the window's previous
    /// surface from within any callback of this signal. Calling
    /// `gdk_offscreen_window_get_surface()` will lead to a crash.
    case createSurface = "create-surface"
    /// The `from`-embedder signal is emitted to translate coordinates
    /// in the embedder of an offscreen window to the offscreen window.
    /// 
    /// See also `GdkWindow::to`-embedder.
    case fromEmbedder = "from-embedder"
    /// Emitted when the position of `window` is finalized after being moved to a
    /// destination rectangle.
    /// 
    /// `window` might be flipped over the destination rectangle in order to keep
    /// it on-screen, in which case `flipped_x` and `flipped_y` will be set to `true`
    /// accordingly.
    /// 
    /// `flipped_rect` is the ideal position of `window` after any possible
    /// flipping, but before any possible sliding. `final_rect` is `flipped_rect`,
    /// but possibly translated in the case that flipping is still ineffective in
    /// keeping `window` on-screen.
    case movedToRect = "moved-to-rect"
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
    /// The `pick`-embedded-child signal is emitted to find an embedded
    /// child at the given position.
    case pickEmbeddedChild = "pick-embedded-child"
    /// The `to`-embedder signal is emitted to translate coordinates
    /// in an offscreen window to its embedder.
    /// 
    /// See also `GdkWindow::from`-embedder.
    case toEmbedder = "to-embedder"
    /// The mouse pointer for a `GdkWindow`. See `gdk_window_set_cursor()` and
    /// `gdk_window_get_cursor()` for details.
    case notifyCursor = "notify::cursor"
}

// MARK: Window signals
public extension WindowProtocol {
    /// Connect a Swift signal handler to the given, typed `WindowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: WindowSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `WindowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: WindowSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `create`-surface signal is emitted when an offscreen window
    /// needs its surface (re)created, which happens either when the
    /// window is first drawn to, or when the window is being
    /// resized. The first signal handler that returns a non-`nil`
    /// surface will stop any further signal emission, and its surface
    /// will be used.
    /// 
    /// Note that it is not possible to access the window's previous
    /// surface from within any callback of this signal. Calling
    /// `gdk_offscreen_window_get_surface()` will lead to a crash.
    /// - Note: This represents the underlying `create-surface` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter width: the width of the offscreen surface to create
    /// - Parameter height: the height of the offscreen surface to create
    /// - Parameter handler: the newly created `cairo_surface_t` for the offscreen window
    /// - Warning: a `onCreateSurface` wrapper for this signal could not be generated because it contains unimplemented features: { (9)  Record return type is not yet supported }
    /// - Note: Instead, you can connect `createSurfaceSignal` using the `connect(signal:)` methods
    static var createSurfaceSignal: WindowSignalName { .createSurface }
    /// The `from`-embedder signal is emitted to translate coordinates
    /// in the embedder of an offscreen window to the offscreen window.
    /// 
    /// See also `GdkWindow::to`-embedder.
    /// - Note: This represents the underlying `from-embedder` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter embedderX: x coordinate in the embedder window
    /// - Parameter embedderY: y coordinate in the embedder window
    /// - Parameter offscreenX: return location for the x     coordinate in the offscreen window
    /// - Parameter offscreenY: return location for the y     coordinate in the offscreen window
    /// - Parameter handler: The signal handler to call
    /// - Warning: a `onFromEmbedder` wrapper for this signal could not be generated because it contains unimplemented features: { (1) argument with ownership transfer is not allowed, (2)  `out` or `inout` argument direction is not allowed }
    /// - Note: Instead, you can connect `fromEmbedderSignal` using the `connect(signal:)` methods
    static var fromEmbedderSignal: WindowSignalName { .fromEmbedder }
    /// Emitted when the position of `window` is finalized after being moved to a
    /// destination rectangle.
    /// 
    /// `window` might be flipped over the destination rectangle in order to keep
    /// it on-screen, in which case `flipped_x` and `flipped_y` will be set to `true`
    /// accordingly.
    /// 
    /// `flipped_rect` is the ideal position of `window` after any possible
    /// flipping, but before any possible sliding. `final_rect` is `flipped_rect`,
    /// but possibly translated in the case that flipping is still ineffective in
    /// keeping `window` on-screen.
    /// - Note: This represents the underlying `moved-to-rect` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter flippedRect: the position of `window` after any possible                flipping or `nil` if the backend can't obtain it
    /// - Parameter finalRect: the final position of `window` or `nil` if the              backend can't obtain it
    /// - Parameter flippedX: `true` if the anchors were flipped horizontally
    /// - Parameter flippedY: `true` if the anchors were flipped vertically
    /// - Parameter handler: The signal handler to call
    /// - Warning: a `onMovedToRect` wrapper for this signal could not be generated because it contains unimplemented features: { (4)  gpointer argument is not yet supported }
    /// - Note: Instead, you can connect `movedToRectSignal` using the `connect(signal:)` methods
    static var movedToRectSignal: WindowSignalName { .movedToRect }
    /// The `pick`-embedded-child signal is emitted to find an embedded
    /// child at the given position.
    /// - Note: This represents the underlying `pick-embedded-child` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: x coordinate in the window
    /// - Parameter y: y coordinate in the window
    /// - Parameter handler: the `GdkWindow` of the     embedded child at `x`, `y`, or `nil`
    /// - Warning: a `onPickEmbeddedChild` wrapper for this signal could not be generated because it contains unimplemented features: { (8)  nullable argument or return type is not allowed, (9)  Record return type is not yet supported }
    /// - Note: Instead, you can connect `pickEmbeddedChildSignal` using the `connect(signal:)` methods
    static var pickEmbeddedChildSignal: WindowSignalName { .pickEmbeddedChild }
    /// The `to`-embedder signal is emitted to translate coordinates
    /// in an offscreen window to its embedder.
    /// 
    /// See also `GdkWindow::from`-embedder.
    /// - Note: This represents the underlying `to-embedder` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter offscreenX: x coordinate in the offscreen window
    /// - Parameter offscreenY: y coordinate in the offscreen window
    /// - Parameter embedderX: return location for the x     coordinate in the embedder window
    /// - Parameter embedderY: return location for the y     coordinate in the embedder window
    /// - Parameter handler: The signal handler to call
    /// - Warning: a `onToEmbedder` wrapper for this signal could not be generated because it contains unimplemented features: { (1) argument with ownership transfer is not allowed, (2)  `out` or `inout` argument direction is not allowed }
    /// - Note: Instead, you can connect `toEmbedderSignal` using the `connect(signal:)` methods
    static var toEmbedderSignal: WindowSignalName { .toEmbedder }
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
    /// - Note: This represents the underlying `notify::cursor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCursor` signal is emitted
    @discardableResult @inlinable func onNotifyCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCursor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::cursor` signal for using the `connect(signal:)` methods
    static var notifyCursorSignal: WindowSignalName { .notifyCursor }
    
}

// MARK: Window Class: WindowProtocol extension (methods and fields)
public extension WindowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkWindow` instance.
    @inlinable var window_ptr: UnsafeMutablePointer<GdkWindow>! { return ptr?.assumingMemoryBound(to: GdkWindow.self) }

    /// Adds an event filter to `window`, allowing you to intercept events
    /// before they reach GDK. This is a low-level operation and makes it
    /// easy to break GDK and/or GTK+, so you have to know what you're
    /// doing. Pass `nil` for `window` to get all events for all windows,
    /// instead of events for a specific window.
    /// 
    /// If you are interested in X GenericEvents, bear in mind that
    /// `XGetEventData()` has been already called on the event, and
    /// `XFreeEventData()` must not be called within `function`.
    @inlinable func addFilter(function: GdkFilterFunc?, data: gpointer! = nil) {
        gdk_window_add_filter(window_ptr, function, data)
    
    }

    /// Emits a short beep associated to `window` in the appropriate
    /// display, if supported. Otherwise, emits a short beep on
    /// the display just as `gdk_display_beep()`.
    @inlinable func beep() {
        gdk_window_beep(window_ptr)
    
    }

    /// Indicates that you are beginning the process of redrawing `region`
    /// on `window`, and provides you with a `GdkDrawingContext`.
    /// 
    /// If `window` is a top level `GdkWindow`, backed by a native window
    /// implementation, a backing store (offscreen buffer) large enough to
    /// contain `region` will be created. The backing store will be initialized
    /// with the background color or background surface for `window`. Then, all
    /// drawing operations performed on `window` will be diverted to the
    /// backing store. When you call `gdk_window_end_frame()`, the contents of
    /// the backing store will be copied to `window`, making it visible
    /// on screen. Only the part of `window` contained in `region` will be
    /// modified; that is, drawing operations are clipped to `region`.
    /// 
    /// The net result of all this is to remove flicker, because the user
    /// sees the finished product appear all at once when you call
    /// `gdk_window_end_draw_frame()`. If you draw to `window` directly without
    /// calling `gdk_window_begin_draw_frame()`, the user may see flicker
    /// as individual drawing operations are performed in sequence.
    /// 
    /// When using GTK+, the widget system automatically places calls to
    /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()` around
    /// emissions of the `GtkWidget`draw`` signal. That is, if you’re
    /// drawing the contents of the widget yourself, you can assume that the
    /// widget has a cleared background, is already set as the clip region,
    /// and already has a backing store. Therefore in most cases, application
    /// code in GTK does not need to call `gdk_window_begin_draw_frame()`
    /// explicitly.
    @inlinable func beginDrawFrame<RegionT: Cairo.RegionProtocol>(region: RegionT) -> DrawingContextRef! {
        let rv = DrawingContextRef(gconstpointer: gconstpointer(gdk_window_begin_draw_frame(window_ptr, region._ptr)))
        return rv
    }

    /// Begins a window move operation (for a toplevel window).
    /// 
    /// This function assumes that the drag is controlled by the
    /// client pointer device, use `gdk_window_begin_move_drag_for_device()`
    /// to begin a drag with a different device.
    @inlinable func beginMoveDrag(button: Int, rootX: Int, rootY: Int, timestamp: guint32) {
        gdk_window_begin_move_drag(window_ptr, gint(button), gint(rootX), gint(rootY), timestamp)
    
    }

    /// Begins a window move operation (for a toplevel window).
    /// You might use this function to implement a “window move grip,” for
    /// example. The function works best with window managers that support the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
    /// but has a fallback implementation for other window managers.
    @inlinable func beginMoveDragFor<DeviceT: DeviceProtocol>(device: DeviceT, button: Int, rootX: Int, rootY: Int, timestamp: guint32) {
        gdk_window_begin_move_drag_for_device(window_ptr, device.device_ptr, gint(button), gint(rootX), gint(rootY), timestamp)
    
    }

    /// A convenience wrapper around `gdk_window_begin_paint_region()` which
    /// creates a rectangular region for you. See
    /// `gdk_window_begin_paint_region()` for details.
    ///
    /// **begin_paint_rect is deprecated:**
    /// Use gdk_window_begin_draw_frame() instead
    @available(*, deprecated) @inlinable func beginPaintRect<RectangleT: RectangleProtocol>(rectangle: RectangleT) {
        gdk_window_begin_paint_rect(window_ptr, rectangle.rectangle_ptr)
    
    }

    /// Indicates that you are beginning the process of redrawing `region`.
    /// A backing store (offscreen buffer) large enough to contain `region`
    /// will be created. The backing store will be initialized with the
    /// background color or background surface for `window`. Then, all
    /// drawing operations performed on `window` will be diverted to the
    /// backing store.  When you call `gdk_window_end_paint()`, the backing
    /// store will be copied to `window`, making it visible onscreen. Only
    /// the part of `window` contained in `region` will be modified; that is,
    /// drawing operations are clipped to `region`.
    /// 
    /// The net result of all this is to remove flicker, because the user
    /// sees the finished product appear all at once when you call
    /// `gdk_window_end_paint()`. If you draw to `window` directly without
    /// calling `gdk_window_begin_paint_region()`, the user may see flicker
    /// as individual drawing operations are performed in sequence.  The
    /// clipping and background-initializing features of
    /// `gdk_window_begin_paint_region()` are conveniences for the
    /// programmer, so you can avoid doing that work yourself.
    /// 
    /// When using GTK+, the widget system automatically places calls to
    /// `gdk_window_begin_paint_region()` and `gdk_window_end_paint()` around
    /// emissions of the expose_event signal. That is, if you’re writing an
    /// expose event handler, you can assume that the exposed area in
    /// `GdkEventExpose` has already been cleared to the window background,
    /// is already set as the clip region, and already has a backing store.
    /// Therefore in most cases, application code need not call
    /// `gdk_window_begin_paint_region()`. (You can disable the automatic
    /// calls around expose events on a widget-by-widget basis by calling
    /// `gtk_widget_set_double_buffered()`.)
    /// 
    /// If you call this function multiple times before calling the
    /// matching `gdk_window_end_paint()`, the backing stores are pushed onto
    /// a stack. `gdk_window_end_paint()` copies the topmost backing store
    /// onscreen, subtracts the topmost region from all other regions in
    /// the stack, and pops the stack. All drawing operations affect only
    /// the topmost backing store in the stack. One matching call to
    /// `gdk_window_end_paint()` is required for each call to
    /// `gdk_window_begin_paint_region()`.
    ///
    /// **begin_paint_region is deprecated:**
    /// Use gdk_window_begin_draw_frame() instead
    @available(*, deprecated) @inlinable func beginPaint<RegionT: Cairo.RegionProtocol>(region: RegionT) {
        gdk_window_begin_paint_region(window_ptr, region._ptr)
    
    }

    /// Begins a window resize operation (for a toplevel window).
    /// 
    /// This function assumes that the drag is controlled by the
    /// client pointer device, use `gdk_window_begin_resize_drag_for_device()`
    /// to begin a drag with a different device.
    @inlinable func beginResizeDrag(edge: GdkWindowEdge, button: Int, rootX: Int, rootY: Int, timestamp: guint32) {
        gdk_window_begin_resize_drag(window_ptr, edge, gint(button), gint(rootX), gint(rootY), timestamp)
    
    }

    /// Begins a window resize operation (for a toplevel window).
    /// You might use this function to implement a “window resize grip,” for
    /// example; in fact `GtkStatusbar` uses it. The function works best
    /// with window managers that support the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
    /// but has a fallback implementation for other window managers.
    @inlinable func beginResizeDragForDevice<DeviceT: DeviceProtocol>(edge: GdkWindowEdge, device: DeviceT, button: Int, rootX: Int, rootY: Int, timestamp: guint32) {
        gdk_window_begin_resize_drag_for_device(window_ptr, edge, device.device_ptr, gint(button), gint(rootX), gint(rootY), timestamp)
    
    }

    /// Does nothing, present only for compatiblity.
    ///
    /// **configure_finished is deprecated:**
    /// this function is no longer needed
    @available(*, deprecated) @inlinable func configureFinished() {
        gdk_window_configure_finished(window_ptr)
    
    }

    /// Transforms window coordinates from a parent window to a child
    /// window, where the parent window is the normal parent as returned by
    /// `gdk_window_get_parent()` for normal windows, and the window's
    /// embedder as returned by `gdk_offscreen_window_get_embedder()` for
    /// offscreen windows.
    /// 
    /// For normal windows, calling this function is equivalent to subtracting
    /// the return values of `gdk_window_get_position()` from the parent coordinates.
    /// For offscreen windows however (which can be arbitrarily transformed),
    /// this function calls the GdkWindow`from`-embedder: signal to translate
    /// the coordinates.
    /// 
    /// You should always use this function when writing generic code that
    /// walks down a window hierarchy.
    /// 
    /// See also: `gdk_window_coords_to_parent()`
    @inlinable func coordsFromParent(parentX: Double, parentY: Double, x: UnsafeMutablePointer<gdouble>! = nil, y: UnsafeMutablePointer<gdouble>! = nil) {
        gdk_window_coords_from_parent(window_ptr, gdouble(parentX), gdouble(parentY), x, y)
    
    }

    /// Transforms window coordinates from a child window to its parent
    /// window, where the parent window is the normal parent as returned by
    /// `gdk_window_get_parent()` for normal windows, and the window's
    /// embedder as returned by `gdk_offscreen_window_get_embedder()` for
    /// offscreen windows.
    /// 
    /// For normal windows, calling this function is equivalent to adding
    /// the return values of `gdk_window_get_position()` to the child coordinates.
    /// For offscreen windows however (which can be arbitrarily transformed),
    /// this function calls the GdkWindow`to`-embedder: signal to translate
    /// the coordinates.
    /// 
    /// You should always use this function when writing generic code that
    /// walks up a window hierarchy.
    /// 
    /// See also: `gdk_window_coords_from_parent()`
    @inlinable func coordsToParent(x: Double, y: Double, parentX: UnsafeMutablePointer<gdouble>! = nil, parentY: UnsafeMutablePointer<gdouble>! = nil) {
        gdk_window_coords_to_parent(window_ptr, gdouble(x), gdouble(y), parentX, parentY)
    
    }

    /// Creates a new `GdkGLContext` matching the
    /// framebuffer format to the visual of the `GdkWindow`. The context
    /// is disconnected from any particular window or surface.
    /// 
    /// If the creation of the `GdkGLContext` failed, `error` will be set.
    /// 
    /// Before using the returned `GdkGLContext`, you will need to
    /// call `gdk_gl_context_make_current()` or `gdk_gl_context_realize()`.
    @inlinable func createGlContext() throws -> GLContextRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLContextRef(gconstpointer: gconstpointer(gdk_window_create_gl_context(window_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Create a new image surface that is efficient to draw on the
    /// given `window`.
    /// 
    /// Initially the surface contents are all 0 (transparent if contents
    /// have transparency, black otherwise.)
    /// 
    /// The `width` and `height` of the new surface are not affected by
    /// the scaling factor of the `window`, or by the `scale` argument; they
    /// are the size of the surface in device pixels. If you wish to create
    /// an image surface capable of holding the contents of `window` you can
    /// use:
    /// 
    /// (C Language Example):
    /// ```C
    ///   int scale = gdk_window_get_scale_factor (window);
    ///   int width = gdk_window_get_width (window) * scale;
    ///   int height = gdk_window_get_height (window) * scale;
    /// 
    ///   // format is set elsewhere
    ///   cairo_surface_t *surface =
    ///     gdk_window_create_similar_image_surface (window,
    ///                                              format,
    ///                                              width, height,
    ///                                              scale);
    /// ```
    /// 
    /// Note that unlike `cairo_surface_create_similar_image()`, the new
    /// surface's device scale is set to `scale`, or to the scale factor of
    /// `window` if `scale` is 0.
    @inlinable func createSimilarImageSurface(format: cairo_format_t, width: Int, height: Int, scale: Int) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gdk_window_create_similar_image_surface(window_ptr, format, gint(width), gint(height), gint(scale)))
        return rv
    }

    /// Create a new surface that is as compatible as possible with the
    /// given `window`. For example the new surface will have the same
    /// fallback resolution and font options as `window`. Generally, the new
    /// surface will also use the same backend as `window`, unless that is
    /// not possible for some reason. The type of the returned surface may
    /// be examined with `cairo_surface_get_type()`.
    /// 
    /// Initially the surface contents are all 0 (transparent if contents
    /// have transparency, black otherwise.)
    @inlinable func createSimilarSurface(content: cairo_content_t, width: Int, height: Int) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gdk_window_create_similar_surface(window_ptr, content, gint(width), gint(height)))
        return rv
    }

    /// Attempt to deiconify (unminimize) `window`. On X11 the window manager may
    /// choose to ignore the request to deiconify. When using GTK+,
    /// use `gtk_window_deiconify()` instead of the `GdkWindow` variant. Or better yet,
    /// you probably want to use `gtk_window_present_with_time()`, which raises the window, focuses it,
    /// unminimizes it, and puts it on the current desktop.
    @inlinable func deiconify() {
        gdk_window_deiconify(window_ptr)
    
    }

    /// Destroys the window system resources associated with `window` and decrements `window`'s
    /// reference count. The window system resources for all children of `window` are also
    /// destroyed, but the children’s reference counts are not decremented.
    /// 
    /// Note that a window will not be destroyed automatically when its reference count
    /// reaches zero. You must call this function yourself before that happens.
    @inlinable func destroy() {
        gdk_window_destroy(window_ptr)
    
    }

    @inlinable func destroyNotify() {
        gdk_window_destroy_notify(window_ptr)
    
    }

    /// Does nothing, present only for compatiblity.
    ///
    /// **enable_synchronized_configure is deprecated:**
    /// this function is no longer needed
    @available(*, deprecated) @inlinable func enableSynchronizedConfigure() {
        gdk_window_enable_synchronized_configure(window_ptr)
    
    }

    /// Indicates that the drawing of the contents of `window` started with
    /// `gdk_window_begin_frame()` has been completed.
    /// 
    /// This function will take care of destroying the `GdkDrawingContext`.
    /// 
    /// It is an error to call this function without a matching
    /// `gdk_window_begin_frame()` first.
    @inlinable func endDrawFrame<DrawingContextT: DrawingContextProtocol>(context: DrawingContextT) {
        gdk_window_end_draw_frame(window_ptr, context.drawing_context_ptr)
    
    }

    /// Indicates that the backing store created by the most recent call
    /// to `gdk_window_begin_paint_region()` should be copied onscreen and
    /// deleted, leaving the next-most-recent backing store or no backing
    /// store at all as the active paint region. See
    /// `gdk_window_begin_paint_region()` for full details.
    /// 
    /// It is an error to call this function without a matching
    /// `gdk_window_begin_paint_region()` first.
    @inlinable @available(*, deprecated) func endPaint() {
        gdk_window_end_paint(window_ptr)
    
    }

    /// Tries to ensure that there is a window-system native window for this
    /// GdkWindow. This may fail in some situations, returning `false`.
    /// 
    /// Offscreen window and children of them can never have native windows.
    /// 
    /// Some backends may not support native child windows.
    @inlinable func ensureNative() -> Bool {
        let rv = ((gdk_window_ensure_native(window_ptr)) != 0)
        return rv
    }

    /// This function does nothing.
    ///
    /// **flush is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func flush() {
        gdk_window_flush(window_ptr)
    
    }

    /// Sets keyboard focus to `window`. In most cases, `gtk_window_present_with_time()`
    /// should be used on a `GtkWindow`, rather than calling this function.
    @inlinable func focus(timestamp: guint32) {
        gdk_window_focus(window_ptr, timestamp)
    
    }

    /// Temporarily freezes a window and all its descendants such that it won't
    /// receive expose events.  The window will begin receiving expose events
    /// again when `gdk_window_thaw_toplevel_updates_libgtk_only()` is called. If
    /// `gdk_window_freeze_toplevel_updates_libgtk_only()`
    /// has been called more than once,
    /// `gdk_window_thaw_toplevel_updates_libgtk_only()` must be called
    /// an equal number of times to begin processing exposes.
    /// 
    /// This function is not part of the GDK public API and is only
    /// for use by GTK+.
    ///
    /// **freeze_toplevel_updates_libgtk_only is deprecated:**
    /// This symbol was never meant to be used outside of GTK+
    @available(*, deprecated) @inlinable func freezeToplevelUpdatesLibgtkOnly() {
        gdk_window_freeze_toplevel_updates_libgtk_only(window_ptr)
    
    }

    /// Temporarily freezes a window such that it won’t receive expose
    /// events.  The window will begin receiving expose events again when
    /// `gdk_window_thaw_updates()` is called. If `gdk_window_freeze_updates()`
    /// has been called more than once, `gdk_window_thaw_updates()` must be called
    /// an equal number of times to begin processing exposes.
    @inlinable func freezeUpdates() {
        gdk_window_freeze_updates(window_ptr)
    
    }

    /// Moves the window into fullscreen mode. This means the
    /// window covers the entire screen and is above any panels
    /// or task bars.
    /// 
    /// If the window was already fullscreen, then this function does nothing.
    /// 
    /// On X11, asks the window manager to put `window` in a fullscreen
    /// state, if the window manager supports this operation. Not all
    /// window managers support this, and some deliberately ignore it or
    /// don’t have a concept of “fullscreen”; so you can’t rely on the
    /// fullscreenification actually happening. But it will happen with
    /// most standard window managers, and GDK makes a best effort to get
    /// it to happen.
    @inlinable func fullscreen() {
        gdk_window_fullscreen(window_ptr)
    
    }

    /// Moves the window into fullscreen mode on the given monitor. This means
    /// the window covers the entire screen and is above any panels or task bars.
    /// 
    /// If the window was already fullscreen, then this function does nothing.
    @inlinable func fullscreenOn(monitor: Int) {
        gdk_window_fullscreen_on_monitor(window_ptr, gint(monitor))
    
    }

    /// This function informs GDK that the geometry of an embedded
    /// offscreen window has changed. This is necessary for GDK to keep
    /// track of which offscreen window the pointer is in.
    @inlinable func geometryChanged() {
        gdk_window_geometry_changed(window_ptr)
    
    }

    /// Determines whether or not the desktop environment shuld be hinted that
    /// the window does not want to receive input focus.
    @inlinable func getAcceptFocus() -> Bool {
        let rv = ((gdk_window_get_accept_focus(window_ptr)) != 0)
        return rv
    }

    /// Gets the pattern used to clear the background on `window`.
    ///
    /// **get_background_pattern is deprecated:**
    /// Don't use this function
    @available(*, deprecated) @inlinable func getBackgroundPattern() -> Cairo.PatternRef! {
        let rv = Cairo.PatternRef(gdk_window_get_background_pattern(window_ptr))
        return rv
    }

    /// Gets the list of children of `window` known to GDK.
    /// This function only returns children created via GDK,
    /// so for example it’s useless when used with the root window;
    /// it only returns windows an application created itself.
    /// 
    /// The returned list must be freed, but the elements in the
    /// list need not be.
    @inlinable func getChildren() -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_window_get_children(window_ptr))
        return rv
    }

    /// Gets the list of children of `window` known to GDK with a
    /// particular `user_data` set on it.
    /// 
    /// The returned list must be freed, but the elements in the
    /// list need not be.
    /// 
    /// The list is returned in (relative) stacking order, i.e. the
    /// lowest window is first.
    @inlinable func getChildrenWith(userData: gpointer! = nil) -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_window_get_children_with_user_data(window_ptr, userData))
        return rv
    }

    /// Computes the region of a window that potentially can be written
    /// to by drawing primitives. This region may not take into account
    /// other factors such as if the window is obscured by other windows,
    /// but no area outside of this region will be affected by drawing
    /// primitives.
    @inlinable func getClipRegion() -> Cairo.RegionRef! {
        let rv = Cairo.RegionRef(gdk_window_get_clip_region(window_ptr))
        return rv
    }

    /// Determines whether `window` is composited.
    /// 
    /// See `gdk_window_set_composited()`.
    ///
    /// **get_composited is deprecated:**
    /// Compositing is an outdated technology that
    ///   only ever worked on X11.
    @available(*, deprecated) @inlinable func getComposited() -> Bool {
        let rv = ((gdk_window_get_composited(window_ptr)) != 0)
        return rv
    }

    /// Retrieves a `GdkCursor` pointer for the cursor currently set on the
    /// specified `GdkWindow`, or `nil`.  If the return value is `nil` then
    /// there is no custom cursor set on the specified window, and it is
    /// using the cursor for its parent window.
    @inlinable func getCursor() -> CursorRef! {
        let rv = CursorRef(gconstpointer: gconstpointer(gdk_window_get_cursor(window_ptr)))
        return rv
    }

    /// Returns the decorations set on the GdkWindow with
    /// `gdk_window_set_decorations()`.
    @inlinable func get(decorations: UnsafeMutablePointer<GdkWMDecoration>!) -> Bool {
        let rv = ((gdk_window_get_decorations(window_ptr, decorations)) != 0)
        return rv
    }

    /// Retrieves a `GdkCursor` pointer for the `device` currently set on the
    /// specified `GdkWindow`, or `nil`.  If the return value is `nil` then
    /// there is no custom cursor set on the specified window, and it is
    /// using the cursor for its parent window.
    @inlinable func getDeviceCursor<DeviceT: DeviceProtocol>(device: DeviceT) -> CursorRef! {
        let rv = CursorRef(gconstpointer: gconstpointer(gdk_window_get_device_cursor(window_ptr, device.device_ptr)))
        return rv
    }

    /// Returns the event mask for `window` corresponding to an specific device.
    @inlinable func getDeviceEvents<DeviceT: DeviceProtocol>(device: DeviceT) -> EventMask {
        let rv = EventMask(gdk_window_get_device_events(window_ptr, device.device_ptr))
        return rv
    }

    /// Obtains the current device position and modifier state.
    /// The position is given in coordinates relative to the upper left
    /// corner of `window`.
    /// 
    /// Use `gdk_window_get_device_position_double()` if you need subpixel precision.
    @inlinable func getDevicePosition<DeviceT: DeviceProtocol>(device: DeviceT, x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil, mask: UnsafeMutablePointer<GdkModifierType>! = nil) -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_device_position(window_ptr, device.device_ptr, x, y, mask))) else { return nil }
        return rv
    }

    /// Obtains the current device position in doubles and modifier state.
    /// The position is given in coordinates relative to the upper left
    /// corner of `window`.
    @inlinable func getDevicePositionDouble<DeviceT: DeviceProtocol>(device: DeviceT, x: UnsafeMutablePointer<gdouble>! = nil, y: UnsafeMutablePointer<gdouble>! = nil, mask: UnsafeMutablePointer<GdkModifierType>! = nil) -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_device_position_double(window_ptr, device.device_ptr, x, y, mask))) else { return nil }
        return rv
    }

    /// Gets the `GdkDisplay` associated with a `GdkWindow`.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_window_get_display(window_ptr)))
        return rv
    }

    /// Finds out the DND protocol supported by a window.
    @inlinable func getDragProtocol(target: UnsafeMutablePointer<UnsafeMutablePointer<GdkWindow>?>! = nil) -> GdkDragProtocol {
        let rv = gdk_window_get_drag_protocol(window_ptr, target)
        return rv
    }

    /// Obtains the parent of `window`, as known to GDK. Works like
    /// `gdk_window_get_parent()` for normal windows, but returns the
    /// window’s embedder for offscreen windows.
    /// 
    /// See also: `gdk_offscreen_window_get_embedder()`
    @inlinable func getEffectiveParent() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_effective_parent(window_ptr))) else { return nil }
        return rv
    }

    /// Gets the toplevel window that’s an ancestor of `window`.
    /// 
    /// Works like `gdk_window_get_toplevel()`, but treats an offscreen window's
    /// embedder as its parent, using `gdk_window_get_effective_parent()`.
    /// 
    /// See also: `gdk_offscreen_window_get_embedder()`
    @inlinable func getEffectiveToplevel() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_effective_toplevel(window_ptr))) else { return nil }
        return rv
    }

    /// Get the current event compression setting for this window.
    @inlinable func getEventCompression() -> Bool {
        let rv = ((gdk_window_get_event_compression(window_ptr)) != 0)
        return rv
    }

    /// Gets the event mask for `window` for all master input devices. See
    /// `gdk_window_set_events()`.
    @inlinable func getEvents() -> EventMask {
        let rv = EventMask(gdk_window_get_events(window_ptr))
        return rv
    }

    /// Determines whether or not the desktop environment should be hinted that the
    /// window does not want to receive input focus when it is mapped.
    @inlinable func getFocusOnMap() -> Bool {
        let rv = ((gdk_window_get_focus_on_map(window_ptr)) != 0)
        return rv
    }

    /// Gets the frame clock for the window. The frame clock for a window
    /// never changes unless the window is reparented to a new toplevel
    /// window.
    @inlinable func getFrameClock() -> FrameClockRef! {
        let rv = FrameClockRef(gconstpointer: gconstpointer(gdk_window_get_frame_clock(window_ptr)))
        return rv
    }

    /// Obtains the bounding box of the window, including window manager
    /// titlebar/borders if any. The frame position is given in root window
    /// coordinates. To get the position of the window itself (rather than
    /// the frame) in root window coordinates, use `gdk_window_get_origin()`.
    @inlinable func getFrameExtents<RectangleT: RectangleProtocol>(rect: RectangleT) {
        gdk_window_get_frame_extents(window_ptr, rect.rectangle_ptr)
    
    }

    /// Obtains the `GdkFullscreenMode` of the `window`.
    @inlinable func getFullscreenMode() -> GdkFullscreenMode {
        let rv = gdk_window_get_fullscreen_mode(window_ptr)
        return rv
    }

    /// Any of the return location arguments to this function may be `nil`,
    /// if you aren’t interested in getting the value of that field.
    /// 
    /// The X and Y coordinates returned are relative to the parent window
    /// of `window`, which for toplevels usually means relative to the
    /// window decorations (titlebar, etc.) rather than relative to the
    /// root window (screen-size background window).
    /// 
    /// On the X11 platform, the geometry is obtained from the X server,
    /// so reflects the latest position of `window`; this may be out-of-sync
    /// with the position of `window` delivered in the most-recently-processed
    /// `GdkEventConfigure`. `gdk_window_get_position()` in contrast gets the
    /// position from the most recent configure event.
    /// 
    /// Note: If `window` is not a toplevel, it is much better
    /// to call `gdk_window_get_position()`, `gdk_window_get_width()` and
    /// `gdk_window_get_height()` instead, because it avoids the roundtrip to
    /// the X server and because these functions support the full 32-bit
    /// coordinate space, whereas `gdk_window_get_geometry()` is restricted to
    /// the 16-bit coordinates of X11.
    @inlinable func getGeometry(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil, width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        gdk_window_get_geometry(window_ptr, x, y, width, height)
    
    }

    /// Returns the group leader window for `window`. See `gdk_window_set_group()`.
    @inlinable func getGroup() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_group(window_ptr))) else { return nil }
        return rv
    }

    /// Returns the height of the given `window`.
    /// 
    /// On the X11 platform the returned size is the size reported in the
    /// most-recently-processed configure event, rather than the current
    /// size on the X server.
    @inlinable func getHeight() -> Int {
        let rv = Int(gdk_window_get_height(window_ptr))
        return rv
    }

    /// Determines whether or not the window manager is hinted that `window`
    /// has modal behaviour.
    @inlinable func getModalHint() -> Bool {
        let rv = ((gdk_window_get_modal_hint(window_ptr)) != 0)
        return rv
    }

    /// Obtains the position of a window in root window coordinates.
    /// (Compare with `gdk_window_get_position()` and
    /// `gdk_window_get_geometry()` which return the position of a window
    /// relative to its parent window.)
    @inlinable func getOrigin(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil) -> Int {
        let rv = Int(gdk_window_get_origin(window_ptr, x, y))
        return rv
    }

    /// Obtains the parent of `window`, as known to GDK. Does not query the
    /// X server; thus this returns the parent as passed to `gdk_window_new()`,
    /// not the actual parent. This should never matter unless you’re using
    /// Xlib calls mixed with GDK calls on the X11 platform. It may also
    /// matter for toplevel windows, because the window manager may choose
    /// to reparent them.
    /// 
    /// Note that you should use `gdk_window_get_effective_parent()` when
    /// writing generic code that walks up a window hierarchy, because
    /// `gdk_window_get_parent()` will most likely not do what you expect if
    /// there are offscreen windows in the hierarchy.
    @inlinable func getParent() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_parent(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether input to the window is passed through to the window
    /// below.
    /// 
    /// See `gdk_window_set_pass_through()` for details
    @inlinable func getPassThrough() -> Bool {
        let rv = ((gdk_window_get_pass_through(window_ptr)) != 0)
        return rv
    }

    /// Obtains the current pointer position and modifier state.
    /// The position is given in coordinates relative to the upper left
    /// corner of `window`.
    ///
    /// **get_pointer is deprecated:**
    /// Use gdk_window_get_device_position() instead.
    @available(*, deprecated) @inlinable func getPointer(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil, mask: UnsafeMutablePointer<GdkModifierType>! = nil) -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_pointer(window_ptr, x, y, mask))) else { return nil }
        return rv
    }

    /// Obtains the position of the window as reported in the
    /// most-recently-processed `GdkEventConfigure`. Contrast with
    /// `gdk_window_get_geometry()` which queries the X server for the
    /// current window position, regardless of which events have been
    /// received or processed.
    /// 
    /// The position coordinates are relative to the window’s parent window.
    @inlinable func getPosition(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil) {
        gdk_window_get_position(window_ptr, x, y)
    
    }

    /// Obtains the position of a window position in root
    /// window coordinates. This is similar to
    /// `gdk_window_get_origin()` but allows you to pass
    /// in any position in the window, not just the origin.
    @inlinable func getRootCoords(x: Int, y: Int, rootX: UnsafeMutablePointer<gint>!, rootY: UnsafeMutablePointer<gint>!) {
        gdk_window_get_root_coords(window_ptr, gint(x), gint(y), rootX, rootY)
    
    }

    /// Obtains the top-left corner of the window manager frame in root
    /// window coordinates.
    @inlinable func getRootOrigin(x: UnsafeMutablePointer<gint>!, y: UnsafeMutablePointer<gint>!) {
        gdk_window_get_root_origin(window_ptr, x, y)
    
    }

    /// Returns the internal scale factor that maps from window coordiantes
    /// to the actual device pixels. On traditional systems this is 1, but
    /// on very high density outputs this can be a higher value (often 2).
    /// 
    /// A higher value means that drawing is automatically scaled up to
    /// a higher resolution, so any code doing drawing will automatically look
    /// nicer. However, if you are supplying pixel-based data the scale
    /// value can be used to determine whether to use a pixel resource
    /// with higher resolution data.
    /// 
    /// The scale of a window may change during runtime, if this happens
    /// a configure event will be sent to the toplevel window.
    @inlinable func getScaleFactor() -> Int {
        let rv = Int(gdk_window_get_scale_factor(window_ptr))
        return rv
    }

    /// Gets the `GdkScreen` associated with a `GdkWindow`.
    @inlinable func getScreen() -> ScreenRef! {
        let rv = ScreenRef(gconstpointer: gconstpointer(gdk_window_get_screen(window_ptr)))
        return rv
    }

    /// Returns the event mask for `window` corresponding to the device class specified
    /// by `source`.
    @inlinable func getSourceEvents(source: GdkInputSource) -> EventMask {
        let rv = EventMask(gdk_window_get_source_events(window_ptr, source))
        return rv
    }

    /// Gets the bitwise OR of the currently active window state flags,
    /// from the `GdkWindowState` enumeration.
    @inlinable func getState() -> WindowState {
        let rv = WindowState(gdk_window_get_state(window_ptr))
        return rv
    }

    /// Returns `true` if the window is aware of the existence of multiple
    /// devices.
    @inlinable func getSupportMultidevice() -> Bool {
        let rv = ((gdk_window_get_support_multidevice(window_ptr)) != 0)
        return rv
    }

    /// Gets the toplevel window that’s an ancestor of `window`.
    /// 
    /// Any window type but `GDK_WINDOW_CHILD` is considered a
    /// toplevel window, as is a `GDK_WINDOW_CHILD` window that
    /// has a root window as parent.
    /// 
    /// Note that you should use `gdk_window_get_effective_toplevel()` when
    /// you want to get to a window’s toplevel as seen on screen, because
    /// `gdk_window_get_toplevel()` will most likely not do what you expect
    /// if there are offscreen windows in the hierarchy.
    @inlinable func getToplevel() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_toplevel(window_ptr))) else { return nil }
        return rv
    }

    /// This function returns the type hint set for a window.
    @inlinable func getTypeHint() -> GdkWindowTypeHint {
        let rv = gdk_window_get_type_hint(window_ptr)
        return rv
    }

    /// Transfers ownership of the update area from `window` to the caller
    /// of the function. That is, after calling this function, `window` will
    /// no longer have an invalid/dirty region; the update area is removed
    /// from `window` and handed to you. If a window has no update area,
    /// `gdk_window_get_update_area()` returns `nil`. You are responsible for
    /// calling `cairo_region_destroy()` on the returned region if it’s non-`nil`.
    @inlinable func getUpdateArea() -> Cairo.RegionRef! {
        let rv = Cairo.RegionRef(gdk_window_get_update_area(window_ptr))
        return rv
    }

    /// Retrieves the user data for `window`, which is normally the widget
    /// that `window` belongs to. See `gdk_window_set_user_data()`.
    @inlinable func getUser(data: UnsafeMutablePointer<gpointer?>?) {
        gdk_window_get_user_data(window_ptr, data)
    
    }

    /// Computes the region of the `window` that is potentially visible.
    /// This does not necessarily take into account if the window is
    /// obscured by other windows, but no area outside of this region
    /// is visible.
    @inlinable func getVisibleRegion() -> Cairo.RegionRef! {
        let rv = Cairo.RegionRef(gdk_window_get_visible_region(window_ptr))
        return rv
    }

    /// Gets the `GdkVisual` describing the pixel format of `window`.
    @inlinable func getVisual() -> VisualRef! {
        let rv = VisualRef(gconstpointer: gconstpointer(gdk_window_get_visual(window_ptr)))
        return rv
    }

    /// Returns the width of the given `window`.
    /// 
    /// On the X11 platform the returned size is the size reported in the
    /// most-recently-processed configure event, rather than the current
    /// size on the X server.
    @inlinable func getWidth() -> Int {
        let rv = Int(gdk_window_get_width(window_ptr))
        return rv
    }

    /// Gets the type of the window. See `GdkWindowType`.
    @inlinable func getWindowType() -> GdkWindowType {
        let rv = gdk_window_get_window_type(window_ptr)
        return rv
    }

    /// Checks whether the window has a native window or not. Note that
    /// you can use `gdk_window_ensure_native()` if a native window is needed.
    @inlinable func hasNative() -> Bool {
        let rv = ((gdk_window_has_native(window_ptr)) != 0)
        return rv
    }

    /// For toplevel windows, withdraws them, so they will no longer be
    /// known to the window manager; for all windows, unmaps them, so
    /// they won’t be displayed. Normally done automatically as
    /// part of `gtk_widget_hide()`.
    @inlinable func hide() {
        gdk_window_hide(window_ptr)
    
    }

    /// Asks to iconify (minimize) `window`. The window manager may choose
    /// to ignore the request, but normally will honor it. Using
    /// `gtk_window_iconify()` is preferred, if you have a `GtkWindow` widget.
    /// 
    /// This function only makes sense when `window` is a toplevel window.
    @inlinable func iconify() {
        gdk_window_iconify(window_ptr)
    
    }

    /// Like `gdk_window_shape_combine_region()`, but the shape applies
    /// only to event handling. Mouse events which happen while
    /// the pointer position corresponds to an unset bit in the
    /// mask will be passed on the window below `window`.
    /// 
    /// An input shape is typically used with RGBA windows.
    /// The alpha channel of the window defines which pixels are
    /// invisible and allows for nicely antialiased borders,
    /// and the input shape controls where the window is
    /// “clickable”.
    /// 
    /// On the X11 platform, this requires version 1.1 of the
    /// shape extension.
    /// 
    /// On the Win32 platform, this functionality is not present and the
    /// function does nothing.
    @inlinable func inputShapeCombineRegion<RegionT: Cairo.RegionProtocol>(shapeRegion: RegionT, offsetX: Int, offsetY: Int) {
        gdk_window_input_shape_combine_region(window_ptr, shapeRegion._ptr, gint(offsetX), gint(offsetY))
    
    }

    /// Adds `region` to the update area for `window`. The update area is the
    /// region that needs to be redrawn, or “dirty region.” The call
    /// `gdk_window_process_updates()` sends one or more expose events to the
    /// window, which together cover the entire update area. An
    /// application would normally redraw the contents of `window` in
    /// response to those expose events.
    /// 
    /// GDK will call `gdk_window_process_all_updates()` on your behalf
    /// whenever your program returns to the main loop and becomes idle, so
    /// normally there’s no need to do that manually, you just need to
    /// invalidate regions that you know should be redrawn.
    /// 
    /// The `child_func` parameter controls whether the region of
    /// each child window that intersects `region` will also be invalidated.
    /// Only children for which `child_func` returns `TRUE` will have the area
    /// invalidated.
    @inlinable func invalidateMaybeRecurse<RegionT: Cairo.RegionProtocol>(region: RegionT, childFunc: GdkWindowChildFunc? = nil, userData: gpointer! = nil) {
        gdk_window_invalidate_maybe_recurse(window_ptr, region._ptr, childFunc, userData)
    
    }

    /// A convenience wrapper around `gdk_window_invalidate_region()` which
    /// invalidates a rectangular region. See
    /// `gdk_window_invalidate_region()` for details.
    @inlinable func invalidate(rect: RectangleRef? = nil, invalidateChildren: Bool) {
        gdk_window_invalidate_rect(window_ptr, rect?.rectangle_ptr, gboolean((invalidateChildren) ? 1 : 0))
    
    }
    /// A convenience wrapper around `gdk_window_invalidate_region()` which
    /// invalidates a rectangular region. See
    /// `gdk_window_invalidate_region()` for details.
    @inlinable func invalidate<RectangleT: RectangleProtocol>(rect: RectangleT?, invalidateChildren: Bool) {
        gdk_window_invalidate_rect(window_ptr, rect?.rectangle_ptr, gboolean((invalidateChildren) ? 1 : 0))
    
    }

    /// Adds `region` to the update area for `window`. The update area is the
    /// region that needs to be redrawn, or “dirty region.” The call
    /// `gdk_window_process_updates()` sends one or more expose events to the
    /// window, which together cover the entire update area. An
    /// application would normally redraw the contents of `window` in
    /// response to those expose events.
    /// 
    /// GDK will call `gdk_window_process_all_updates()` on your behalf
    /// whenever your program returns to the main loop and becomes idle, so
    /// normally there’s no need to do that manually, you just need to
    /// invalidate regions that you know should be redrawn.
    /// 
    /// The `invalidate_children` parameter controls whether the region of
    /// each child window that intersects `region` will also be invalidated.
    /// If `false`, then the update area for child windows will remain
    /// unaffected. See gdk_window_invalidate_maybe_recurse if you need
    /// fine grained control over which children are invalidated.
    @inlinable func invalidate<RegionT: Cairo.RegionProtocol>(region: RegionT, invalidateChildren: Bool) {
        gdk_window_invalidate_region(window_ptr, region._ptr, gboolean((invalidateChildren) ? 1 : 0))
    
    }

    /// Lowers `window` to the bottom of the Z-order (stacking order), so that
    /// other windows with the same parent window appear above `window`.
    /// This is true whether or not the other windows are visible.
    /// 
    /// If `window` is a toplevel, the window manager may choose to deny the
    /// request to move the window in the Z-order, `gdk_window_lower()` only
    /// requests the restack, does not guarantee it.
    /// 
    /// Note that `gdk_window_show()` raises the window again, so don’t call this
    /// function before `gdk_window_show()`. (Try `gdk_window_show_unraised()`.)
    @inlinable func lower() {
        gdk_window_lower(window_ptr)
    
    }

    /// If you call this during a paint (e.g. between `gdk_window_begin_paint_region()`
    /// and `gdk_window_end_paint()` then GDK will mark the current clip region of the
    /// window as being drawn. This is required when mixing GL rendering via
    /// `gdk_cairo_draw_from_gl()` and cairo rendering, as otherwise GDK has no way
    /// of knowing when something paints over the GL-drawn regions.
    /// 
    /// This is typically called automatically by GTK+ and you don't need
    /// to care about this.
    @inlinable func markPaintFromClip<ContextT: Cairo.ContextProtocol>(cr: ContextT) {
        gdk_window_mark_paint_from_clip(window_ptr, cr._ptr)
    
    }

    /// Maximizes the window. If the window was already maximized, then
    /// this function does nothing.
    /// 
    /// On X11, asks the window manager to maximize `window`, if the window
    /// manager supports this operation. Not all window managers support
    /// this, and some deliberately ignore it or don’t have a concept of
    /// “maximized”; so you can’t rely on the maximization actually
    /// happening. But it will happen with most standard window managers,
    /// and GDK makes a best effort to get it to happen.
    /// 
    /// On Windows, reliably maximizes the window.
    @inlinable func maximize() {
        gdk_window_maximize(window_ptr)
    
    }

    /// Merges the input shape masks for any child windows into the
    /// input shape mask for `window`. i.e. the union of all input masks
    /// for `window` and its children will become the new input mask
    /// for `window`. See `gdk_window_input_shape_combine_region()`.
    /// 
    /// This function is distinct from `gdk_window_set_child_input_shapes()`
    /// because it includes `window`’s input shape mask in the set of
    /// shapes to be merged.
    @inlinable func mergeChildInputShapes() {
        gdk_window_merge_child_input_shapes(window_ptr)
    
    }

    /// Merges the shape masks for any child windows into the
    /// shape mask for `window`. i.e. the union of all masks
    /// for `window` and its children will become the new mask
    /// for `window`. See `gdk_window_shape_combine_region()`.
    /// 
    /// This function is distinct from `gdk_window_set_child_shapes()`
    /// because it includes `window`’s shape mask in the set of shapes to
    /// be merged.
    @inlinable func mergeChildShapes() {
        gdk_window_merge_child_shapes(window_ptr)
    
    }

    /// Repositions a window relative to its parent window.
    /// For toplevel windows, window managers may ignore or modify the move;
    /// you should probably use `gtk_window_move()` on a `GtkWindow` widget
    /// anyway, instead of using GDK functions. For child windows,
    /// the move will reliably succeed.
    /// 
    /// If you’re also planning to resize the window, use `gdk_window_move_resize()`
    /// to both move and resize simultaneously, for a nicer visual effect.
    @inlinable func move(x: Int, y: Int) {
        gdk_window_move(window_ptr, gint(x), gint(y))
    
    }

    /// Move the part of `window` indicated by `region` by `dy` pixels in the Y
    /// direction and `dx` pixels in the X direction. The portions of `region`
    /// that not covered by the new position of `region` are invalidated.
    /// 
    /// Child windows are not moved.
    @inlinable func move<RegionT: Cairo.RegionProtocol>(region: RegionT, dx: Int, dy: Int) {
        gdk_window_move_region(window_ptr, region._ptr, gint(dx), gint(dy))
    
    }

    /// Equivalent to calling `gdk_window_move()` and `gdk_window_resize()`,
    /// except that both operations are performed at once, avoiding strange
    /// visual effects. (i.e. the user may be able to see the window first
    /// move, then resize, if you don’t use `gdk_window_move_resize()`.)
    @inlinable func moveResize(x: Int, y: Int, width: Int, height: Int) {
        gdk_window_move_resize(window_ptr, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Moves `window` to `rect`, aligning their anchor points.
    /// 
    /// `rect` is relative to the top-left corner of the window that `window` is
    /// transient for. `rect_anchor` and `window_anchor` determine anchor points on
    /// `rect` and `window` to pin together. `rect`'s anchor point can optionally be
    /// offset by `rect_anchor_dx` and `rect_anchor_dy`, which is equivalent to
    /// offsetting the position of `window`.
    /// 
    /// `anchor_hints` determines how `window` will be moved if the anchor points cause
    /// it to move off-screen. For example, `GDK_ANCHOR_FLIP_X` will replace
    /// `GDK_GRAVITY_NORTH_WEST` with `GDK_GRAVITY_NORTH_EAST` and vice versa if
    /// `window` extends beyond the left or right edges of the monitor.
    /// 
    /// Connect to the `GdkWindow::moved`-to-rect signal to find out how it was
    /// actually positioned.
    @inlinable func moveTo<RectangleT: RectangleProtocol>(rect: RectangleT, rectAnchor: GdkGravity, windowAnchor: GdkGravity, anchorHints: AnchorHints, rectAnchorDx: Int, rectAnchorDy: Int) {
        gdk_window_move_to_rect(window_ptr, rect.rectangle_ptr, rectAnchor, windowAnchor, anchorHints.value, gint(rectAnchorDx), gint(rectAnchorDy))
    
    }

    /// Like `gdk_window_get_children()`, but does not copy the list of
    /// children, so the list does not need to be freed.
    @inlinable func peekChildren() -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_window_peek_children(window_ptr))
        return rv
    }

    /// Sends one or more expose events to `window`. The areas in each
    /// expose event will cover the entire update area for the window (see
    /// `gdk_window_invalidate_region()` for details). Normally GDK calls
    /// `gdk_window_process_all_updates()` on your behalf, so there’s no
    /// need to call this function unless you want to force expose events
    /// to be delivered immediately and synchronously (vs. the usual
    /// case, where GDK delivers them in an idle handler). Occasionally
    /// this is useful to produce nicer scrolling behavior, for example.
    ///
    /// **process_updates is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func processUpdates(updateChildren: Bool) {
        gdk_window_process_updates(window_ptr, gboolean((updateChildren) ? 1 : 0))
    
    }

    /// Raises `window` to the top of the Z-order (stacking order), so that
    /// other windows with the same parent window appear below `window`.
    /// This is true whether or not the windows are visible.
    /// 
    /// If `window` is a toplevel, the window manager may choose to deny the
    /// request to move the window in the Z-order, `gdk_window_raise()` only
    /// requests the restack, does not guarantee it.
    @inlinable func raise() {
        gdk_window_raise(window_ptr)
    
    }

    /// Registers a window as a potential drop destination.
    @inlinable func registerDnd() {
        gdk_window_register_dnd(window_ptr)
    
    }

    /// Remove a filter previously added with `gdk_window_add_filter()`.
    @inlinable func removeFilter(function: GdkFilterFunc?, data: gpointer! = nil) {
        gdk_window_remove_filter(window_ptr, function, data)
    
    }

    /// Reparents `window` into the given `new_parent`. The window being
    /// reparented will be unmapped as a side effect.
    @inlinable func reparent<WindowT: WindowProtocol>(newParent: WindowT, x: Int, y: Int) {
        gdk_window_reparent(window_ptr, newParent.window_ptr, gint(x), gint(y))
    
    }

    /// Resizes `window`; for toplevel windows, asks the window manager to resize
    /// the window. The window manager may not allow the resize. When using GTK+,
    /// use `gtk_window_resize()` instead of this low-level GDK function.
    /// 
    /// Windows may not be resized below 1x1.
    /// 
    /// If you’re also planning to move the window, use `gdk_window_move_resize()`
    /// to both move and resize simultaneously, for a nicer visual effect.
    @inlinable func resize(width: Int, height: Int) {
        gdk_window_resize(window_ptr, gint(width), gint(height))
    
    }

    /// Changes the position of  `window` in the Z-order (stacking order), so that
    /// it is above `sibling` (if `above` is `true`) or below `sibling` (if `above` is
    /// `false`).
    /// 
    /// If `sibling` is `nil`, then this either raises (if `above` is `true`) or
    /// lowers the window.
    /// 
    /// If `window` is a toplevel, the window manager may choose to deny the
    /// request to move the window in the Z-order, `gdk_window_restack()` only
    /// requests the restack, does not guarantee it.
    @inlinable func restack(sibling: WindowRef? = nil, above: Bool) {
        gdk_window_restack(window_ptr, sibling?.window_ptr, gboolean((above) ? 1 : 0))
    
    }
    /// Changes the position of  `window` in the Z-order (stacking order), so that
    /// it is above `sibling` (if `above` is `true`) or below `sibling` (if `above` is
    /// `false`).
    /// 
    /// If `sibling` is `nil`, then this either raises (if `above` is `true`) or
    /// lowers the window.
    /// 
    /// If `window` is a toplevel, the window manager may choose to deny the
    /// request to move the window in the Z-order, `gdk_window_restack()` only
    /// requests the restack, does not guarantee it.
    @inlinable func restack<WindowT: WindowProtocol>(sibling: WindowT?, above: Bool) {
        gdk_window_restack(window_ptr, sibling?.window_ptr, gboolean((above) ? 1 : 0))
    
    }

    /// Scroll the contents of `window`, both pixels and children, by the
    /// given amount. `window` itself does not move. Portions of the window
    /// that the scroll operation brings in from offscreen areas are
    /// invalidated. The invalidated region may be bigger than what would
    /// strictly be necessary.
    /// 
    /// For X11, a minimum area will be invalidated if the window has no
    /// subwindows, or if the edges of the window’s parent do not extend
    /// beyond the edges of the window. In other cases, a multi-step process
    /// is used to scroll the window which may produce temporary visual
    /// artifacts and unnecessary invalidations.
    @inlinable func scroll(dx: Int, dy: Int) {
        gdk_window_scroll(window_ptr, gint(dx), gint(dy))
    
    }

    /// Setting `accept_focus` to `false` hints the desktop environment that the
    /// window doesn’t want to receive input focus.
    /// 
    /// On X, it is the responsibility of the window manager to interpret this
    /// hint. ICCCM-compliant window manager usually respect it.
    @inlinable func set(acceptFocus: Bool) {
        gdk_window_set_accept_focus(window_ptr, gboolean((acceptFocus) ? 1 : 0))
    
    }

    /// Sets the background color of `window`.
    /// 
    /// However, when using GTK+, influence the background of a widget
    /// using a style class or CSS — if you’re an application — or with
    /// `gtk_style_context_set_background()` — if you're implementing a
    /// custom widget.
    ///
    /// **set_background is deprecated:**
    /// Don't use this function
    @available(*, deprecated) @inlinable func setBackground<ColorT: ColorProtocol>(color: ColorT) {
        gdk_window_set_background(window_ptr, color.color_ptr)
    
    }

    /// Sets the background of `window`.
    /// 
    /// A background of `nil` means that the window won't have any background. On the
    /// X11 backend it's also possible to inherit the background from the parent
    /// window using `gdk_x11_get_parent_relative_pattern()`.
    /// 
    /// The windowing system will normally fill a window with its background
    /// when the window is obscured then exposed.
    ///
    /// **set_background_pattern is deprecated:**
    /// Don't use this function
    @available(*, deprecated) @inlinable func setBackground(pattern: Cairo.PatternRef? = nil) {
        gdk_window_set_background_pattern(window_ptr, pattern?._ptr)
    
    }
    /// Sets the background of `window`.
    /// 
    /// A background of `nil` means that the window won't have any background. On the
    /// X11 backend it's also possible to inherit the background from the parent
    /// window using `gdk_x11_get_parent_relative_pattern()`.
    /// 
    /// The windowing system will normally fill a window with its background
    /// when the window is obscured then exposed.
    ///
    /// **set_background_pattern is deprecated:**
    /// Don't use this function
    @available(*, deprecated) @inlinable func setBackground<PatternT: Cairo.PatternProtocol>(pattern: PatternT?) {
        gdk_window_set_background_pattern(window_ptr, pattern?._ptr)
    
    }

    /// Sets the background color of `window`.
    /// 
    /// See also `gdk_window_set_background_pattern()`.
    ///
    /// **set_background_rgba is deprecated:**
    /// Don't use this function
    @available(*, deprecated) @inlinable func setBackground<RGBAT: RGBAProtocol>(rgba: RGBAT) {
        gdk_window_set_background_rgba(window_ptr, rgba.rgba_ptr)
    
    }

    /// Sets the input shape mask of `window` to the union of input shape masks
    /// for all children of `window`, ignoring the input shape mask of `window`
    /// itself. Contrast with `gdk_window_merge_child_input_shapes()` which includes
    /// the input shape mask of `window` in the masks to be merged.
    @inlinable func setChildInputShapes() {
        gdk_window_set_child_input_shapes(window_ptr)
    
    }

    /// Sets the shape mask of `window` to the union of shape masks
    /// for all children of `window`, ignoring the shape mask of `window`
    /// itself. Contrast with `gdk_window_merge_child_shapes()` which includes
    /// the shape mask of `window` in the masks to be merged.
    @inlinable func setChildShapes() {
        gdk_window_set_child_shapes(window_ptr)
    
    }

    /// Sets a `GdkWindow` as composited, or unsets it. Composited
    /// windows do not automatically have their contents drawn to
    /// the screen. Drawing is redirected to an offscreen buffer
    /// and an expose event is emitted on the parent of the composited
    /// window. It is the responsibility of the parent’s expose handler
    /// to manually merge the off-screen content onto the screen in
    /// whatever way it sees fit.
    /// 
    /// It only makes sense for child windows to be composited; see
    /// `gdk_window_set_opacity()` if you need translucent toplevel
    /// windows.
    /// 
    /// An additional effect of this call is that the area of this
    /// window is no longer clipped from regions marked for
    /// invalidation on its parent. Draws done on the parent
    /// window are also no longer clipped by the child.
    /// 
    /// This call is only supported on some systems (currently,
    /// only X11 with new enough Xcomposite and Xdamage extensions).
    /// You must call `gdk_display_supports_composite()` to check if
    /// setting a window as composited is supported before
    /// attempting to do so.
    ///
    /// **set_composited is deprecated:**
    /// Compositing is an outdated technology that
    ///   only ever worked on X11.
    @available(*, deprecated) @inlinable func set(composited: Bool) {
        gdk_window_set_composited(window_ptr, gboolean((composited) ? 1 : 0))
    
    }

    /// Sets the default mouse pointer for a `GdkWindow`.
    /// 
    /// Note that `cursor` must be for the same display as `window`.
    /// 
    /// Use `gdk_cursor_new_for_display()` or `gdk_cursor_new_from_pixbuf()` to
    /// create the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    /// Passing `nil` for the `cursor` argument to `gdk_window_set_cursor()` means
    /// that `window` will use the cursor of its parent window. Most windows
    /// should use this default.
    @inlinable func set(cursor: CursorRef? = nil) {
        gdk_window_set_cursor(window_ptr, cursor?.cursor_ptr)
    
    }
    /// Sets the default mouse pointer for a `GdkWindow`.
    /// 
    /// Note that `cursor` must be for the same display as `window`.
    /// 
    /// Use `gdk_cursor_new_for_display()` or `gdk_cursor_new_from_pixbuf()` to
    /// create the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    /// Passing `nil` for the `cursor` argument to `gdk_window_set_cursor()` means
    /// that `window` will use the cursor of its parent window. Most windows
    /// should use this default.
    @inlinable func set<CursorT: CursorProtocol>(cursor: CursorT?) {
        gdk_window_set_cursor(window_ptr, cursor?.cursor_ptr)
    
    }

    /// “Decorations” are the features the window manager adds to a toplevel `GdkWindow`.
    /// This function sets the traditional Motif window manager hints that tell the
    /// window manager which decorations you would like your window to have.
    /// Usually you should use `gtk_window_set_decorated()` on a `GtkWindow` instead of
    /// using the GDK function directly.
    /// 
    /// The `decorations` argument is the logical OR of the fields in
    /// the `GdkWMDecoration` enumeration. If `GDK_DECOR_ALL` is included in the
    /// mask, the other bits indicate which decorations should be turned off.
    /// If `GDK_DECOR_ALL` is not included, then the other bits indicate
    /// which decorations should be turned on.
    /// 
    /// Most window managers honor a decorations hint of 0 to disable all decorations,
    /// but very few honor all possible combinations of bits.
    @inlinable func set(decorations: WMDecoration) {
        gdk_window_set_decorations(window_ptr, decorations.value)
    
    }

    /// Sets a specific `GdkCursor` for a given device when it gets inside `window`.
    /// Use `gdk_cursor_new_for_display()` or `gdk_cursor_new_from_pixbuf()` to create
    /// the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`. Passing
    /// `nil` for the `cursor` argument to `gdk_window_set_cursor()` means that
    /// `window` will use the cursor of its parent window. Most windows should
    /// use this default.
    @inlinable func setDeviceCursor<CursorT: CursorProtocol, DeviceT: DeviceProtocol>(device: DeviceT, cursor: CursorT) {
        gdk_window_set_device_cursor(window_ptr, device.device_ptr, cursor.cursor_ptr)
    
    }

    /// Sets the event mask for a given device (Normally a floating device, not
    /// attached to any visible pointer) to `window`. For example, an event mask
    /// including `GDK_BUTTON_PRESS_MASK` means the window should report button
    /// press events. The event mask is the bitwise OR of values from the
    /// `GdkEventMask` enumeration.
    /// 
    /// See the [input handling overview](#event-masks) for details.
    @inlinable func setDeviceEvents<DeviceT: DeviceProtocol>(device: DeviceT, eventMask: EventMask) {
        gdk_window_set_device_events(window_ptr, device.device_ptr, eventMask.value)
    
    }

    /// Determines whether or not extra unprocessed motion events in
    /// the event queue can be discarded. If `true` only the most recent
    /// event will be delivered.
    /// 
    /// Some types of applications, e.g. paint programs, need to see all
    /// motion events and will benefit from turning off event compression.
    /// 
    /// By default, event compression is enabled.
    @inlinable func set(eventCompression: Bool) {
        gdk_window_set_event_compression(window_ptr, gboolean((eventCompression) ? 1 : 0))
    
    }

    /// The event mask for a window determines which events will be reported
    /// for that window from all master input devices. For example, an event mask
    /// including `GDK_BUTTON_PRESS_MASK` means the window should report button
    /// press events. The event mask is the bitwise OR of values from the
    /// `GdkEventMask` enumeration.
    /// 
    /// See the [input handling overview](#event-masks) for details.
    @inlinable func setEvents(eventMask: EventMask) {
        gdk_window_set_events(window_ptr, eventMask.value)
    
    }

    /// Setting `focus_on_map` to `false` hints the desktop environment that the
    /// window doesn’t want to receive input focus when it is mapped.
    /// focus_on_map should be turned off for windows that aren’t triggered
    /// interactively (such as popups from network activity).
    /// 
    /// On X, it is the responsibility of the window manager to interpret
    /// this hint. Window managers following the freedesktop.org window
    /// manager extension specification should respect it.
    @inlinable func set(focusOnMap: Bool) {
        gdk_window_set_focus_on_map(window_ptr, gboolean((focusOnMap) ? 1 : 0))
    
    }

    /// Specifies whether the `window` should span over all monitors (in a multi-head
    /// setup) or only the current monitor when in fullscreen mode.
    /// 
    /// The `mode` argument is from the `GdkFullscreenMode` enumeration.
    /// If `GDK_FULLSCREEN_ON_ALL_MONITORS` is specified, the fullscreen `window` will
    /// span over all monitors from the `GdkScreen`.
    /// 
    /// On X11, searches through the list of monitors from the `GdkScreen` the ones
    /// which delimit the 4 edges of the entire `GdkScreen` and will ask the window
    /// manager to span the `window` over these monitors.
    /// 
    /// If the XINERAMA extension is not available or not usable, this function
    /// has no effect.
    /// 
    /// Not all window managers support this, so you can’t rely on the fullscreen
    /// window to span over the multiple monitors when `GDK_FULLSCREEN_ON_ALL_MONITORS`
    /// is specified.
    @inlinable func setFullscreen(mode: GdkFullscreenMode) {
        gdk_window_set_fullscreen_mode(window_ptr, mode)
    
    }

    /// Sets hints about the window management functions to make available
    /// via buttons on the window frame.
    /// 
    /// On the X backend, this function sets the traditional Motif window
    /// manager hint for this purpose. However, few window managers do
    /// anything reliable or interesting with this hint. Many ignore it
    /// entirely.
    /// 
    /// The `functions` argument is the logical OR of values from the
    /// `GdkWMFunction` enumeration. If the bitmask includes `GDK_FUNC_ALL`,
    /// then the other bits indicate which functions to disable; if
    /// it doesn’t include `GDK_FUNC_ALL`, it indicates which functions to
    /// enable.
    @inlinable func set(functions: WMFunction) {
        gdk_window_set_functions(window_ptr, functions.value)
    
    }

    /// Sets the geometry hints for `window`. Hints flagged in `geom_mask`
    /// are set, hints not flagged in `geom_mask` are unset.
    /// To unset all hints, use a `geom_mask` of 0 and a `geometry` of `nil`.
    /// 
    /// This function provides hints to the windowing system about
    /// acceptable sizes for a toplevel window. The purpose of
    /// this is to constrain user resizing, but the windowing system
    /// will typically  (but is not required to) also constrain the
    /// current size of the window to the provided values and
    /// constrain programatic resizing via `gdk_window_resize()` or
    /// `gdk_window_move_resize()`.
    /// 
    /// Note that on X11, this effect has no effect on windows
    /// of type `GDK_WINDOW_TEMP` or windows where override redirect
    /// has been turned on via `gdk_window_set_override_redirect()`
    /// since these windows are not resizable by the user.
    /// 
    /// Since you can’t count on the windowing system doing the
    /// constraints for programmatic resizes, you should generally
    /// call `gdk_window_constrain_size()` yourself to determine
    /// appropriate sizes.
    @inlinable func setGeometryHints<GeometryT: GeometryProtocol>(geometry: GeometryT, geomMask: WindowHints) {
        gdk_window_set_geometry_hints(window_ptr, geometry._ptr, geomMask.value)
    
    }

    /// Sets the group leader window for `window`. By default,
    /// GDK sets the group leader for all toplevel windows
    /// to a global window implicitly created by GDK. With this function
    /// you can override this default.
    /// 
    /// The group leader window allows the window manager to distinguish
    /// all windows that belong to a single application. It may for example
    /// allow users to minimize/unminimize all windows belonging to an
    /// application at once. You should only set a non-default group window
    /// if your application pretends to be multiple applications.
    @inlinable func setGroup(leader: WindowRef? = nil) {
        gdk_window_set_group(window_ptr, leader?.window_ptr)
    
    }
    /// Sets the group leader window for `window`. By default,
    /// GDK sets the group leader for all toplevel windows
    /// to a global window implicitly created by GDK. With this function
    /// you can override this default.
    /// 
    /// The group leader window allows the window manager to distinguish
    /// all windows that belong to a single application. It may for example
    /// allow users to minimize/unminimize all windows belonging to an
    /// application at once. You should only set a non-default group window
    /// if your application pretends to be multiple applications.
    @inlinable func setGroup<WindowT: WindowProtocol>(leader: WindowT?) {
        gdk_window_set_group(window_ptr, leader?.window_ptr)
    
    }

    /// Sets a list of icons for the window. One of these will be used
    /// to represent the window when it has been iconified. The icon is
    /// usually shown in an icon box or some sort of task bar. Which icon
    /// size is shown depends on the window manager. The window manager
    /// can scale the icon  but setting several size icons can give better
    /// image quality since the window manager may only need to scale the
    /// icon by a small amount or not at all.
    /// 
    /// Note that some platforms don't support window icons.
    @inlinable func setIconList<ListT: GLib.ListProtocol>(pixbufs: ListT) {
        gdk_window_set_icon_list(window_ptr, pixbufs._ptr)
    
    }

    /// Windows may have a name used while minimized, distinct from the
    /// name they display in their titlebar. Most of the time this is a bad
    /// idea from a user interface standpoint. But you can set such a name
    /// with this function, if you like.
    /// 
    /// After calling this with a non-`nil` `name`, calls to `gdk_window_set_title()`
    /// will not update the icon title.
    /// 
    /// Using `nil` for `name` unsets the icon title; further calls to
    /// `gdk_window_set_title()` will again update the icon title as well.
    /// 
    /// Note that some platforms don't support window icons.
    @inlinable func setIcon(name: UnsafePointer<gchar>? = nil) {
        gdk_window_set_icon_name(window_ptr, name)
    
    }

    /// Registers an invalidate handler for a specific window. This
    /// will get called whenever a region in the window or its children
    /// is invalidated.
    /// 
    /// This can be used to record the invalidated region, which is
    /// useful if you are keeping an offscreen copy of some region
    /// and want to keep it up to date. You can also modify the
    /// invalidated region in case you’re doing some effect where
    /// e.g. a child widget appears in multiple places.
    @inlinable func setInvalidate(handler: GdkWindowInvalidateHandlerFunc?) {
        gdk_window_set_invalidate_handler(window_ptr, handler)
    
    }

    /// Set if `window` must be kept above other windows. If the
    /// window was already above, then this function does nothing.
    /// 
    /// On X11, asks the window manager to keep `window` above, if the window
    /// manager supports this operation. Not all window managers support
    /// this, and some deliberately ignore it or don’t have a concept of
    /// “keep above”; so you can’t rely on the window being kept above.
    /// But it will happen with most standard window managers,
    /// and GDK makes a best effort to get it to happen.
    @inlinable func setKeepAbove(setting: Bool) {
        gdk_window_set_keep_above(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Set if `window` must be kept below other windows. If the
    /// window was already below, then this function does nothing.
    /// 
    /// On X11, asks the window manager to keep `window` below, if the window
    /// manager supports this operation. Not all window managers support
    /// this, and some deliberately ignore it or don’t have a concept of
    /// “keep below”; so you can’t rely on the window being kept below.
    /// But it will happen with most standard window managers,
    /// and GDK makes a best effort to get it to happen.
    @inlinable func setKeepBelow(setting: Bool) {
        gdk_window_set_keep_below(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// The application can use this hint to tell the window manager
    /// that a certain window has modal behaviour. The window manager
    /// can use this information to handle modal windows in a special
    /// way.
    /// 
    /// You should only use this on windows for which you have
    /// previously called `gdk_window_set_transient_for()`
    @inlinable func setModalHint(modal: Bool) {
        gdk_window_set_modal_hint(window_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// Set `window` to render as partially transparent,
    /// with opacity 0 being fully transparent and 1 fully opaque. (Values
    /// of the opacity parameter are clamped to the [0,1] range.)
    /// 
    /// For toplevel windows this depends on support from the windowing system
    /// that may not always be there. For instance, On X11, this works only on
    /// X screens with a compositing manager running. On Wayland, there is no
    /// per-window opacity value that the compositor would apply. Instead, use
    /// `gdk_window_set_opaque_region (window, NULL)` to tell the compositor
    /// that the entire window is (potentially) non-opaque, and draw your content
    /// with alpha, or use `gtk_widget_set_opacity()` to set an overall opacity
    /// for your widgets.
    /// 
    /// For child windows this function only works for non-native windows.
    /// 
    /// For setting up per-pixel alpha topelevels, see `gdk_screen_get_rgba_visual()`,
    /// and for non-toplevels, see `gdk_window_set_composited()`.
    /// 
    /// Support for non-toplevel windows was added in 3.8.
    @inlinable func set(opacity: Double) {
        gdk_window_set_opacity(window_ptr, gdouble(opacity))
    
    }

    /// For optimisation purposes, compositing window managers may
    /// like to not draw obscured regions of windows, or turn off blending
    /// during for these regions. With RGB windows with no transparency,
    /// this is just the shape of the window, but with ARGB32 windows, the
    /// compositor does not know what regions of the window are transparent
    /// or not.
    /// 
    /// This function only works for toplevel windows.
    /// 
    /// GTK+ will update this property automatically if
    /// the `window` background is opaque, as we know where the opaque regions
    /// are. If your window background is not opaque, please update this
    /// property in your `GtkWidget::style`-updated handler.
    @inlinable func setOpaque(region: Cairo.RegionRef? = nil) {
        gdk_window_set_opaque_region(window_ptr, region?._ptr)
    
    }
    /// For optimisation purposes, compositing window managers may
    /// like to not draw obscured regions of windows, or turn off blending
    /// during for these regions. With RGB windows with no transparency,
    /// this is just the shape of the window, but with ARGB32 windows, the
    /// compositor does not know what regions of the window are transparent
    /// or not.
    /// 
    /// This function only works for toplevel windows.
    /// 
    /// GTK+ will update this property automatically if
    /// the `window` background is opaque, as we know where the opaque regions
    /// are. If your window background is not opaque, please update this
    /// property in your `GtkWidget::style`-updated handler.
    @inlinable func setOpaque<RegionT: Cairo.RegionProtocol>(region: RegionT?) {
        gdk_window_set_opaque_region(window_ptr, region?._ptr)
    
    }

    /// An override redirect window is not under the control of the window manager.
    /// This means it won’t have a titlebar, won’t be minimizable, etc. - it will
    /// be entirely under the control of the application. The window manager
    /// can’t see the override redirect window at all.
    /// 
    /// Override redirect should only be used for short-lived temporary
    /// windows, such as popup menus. `GtkMenu` uses an override redirect
    /// window in its implementation, for example.
    @inlinable func set(overrideRedirect: Bool) {
        gdk_window_set_override_redirect(window_ptr, gboolean((overrideRedirect) ? 1 : 0))
    
    }

    /// Sets whether input to the window is passed through to the window
    /// below.
    /// 
    /// The default value of this is `false`, which means that pointer
    /// events that happen inside the window are send first to the window,
    /// but if the event is not selected by the event mask then the event
    /// is sent to the parent window, and so on up the hierarchy.
    /// 
    /// If `pass_through` is `true` then such pointer events happen as if the
    /// window wasn't there at all, and thus will be sent first to any
    /// windows below `window`. This is useful if the window is used in a
    /// transparent fashion. In the terminology of the web this would be called
    /// "pointer-events: none".
    /// 
    /// Note that a window with `pass_through` `true` can still have a subwindow
    /// without pass through, so you can get events on a subset of a window. And in
    /// that cases you would get the in-between related events such as the pointer
    /// enter/leave events on its way to the destination window.
    @inlinable func set(passThrough: Bool) {
        gdk_window_set_pass_through(window_ptr, gboolean((passThrough) ? 1 : 0))
    
    }

    /// When using GTK+, typically you should use `gtk_window_set_role()` instead
    /// of this low-level function.
    /// 
    /// The window manager and session manager use a window’s role to
    /// distinguish it from other kinds of window in the same application.
    /// When an application is restarted after being saved in a previous
    /// session, all windows with the same title and role are treated as
    /// interchangeable.  So if you have two windows with the same title
    /// that should be distinguished for session management purposes, you
    /// should set the role on those windows. It doesn’t matter what string
    /// you use for the role, as long as you have a different role for each
    /// non-interchangeable kind of window.
    @inlinable func set(role: UnsafePointer<gchar>!) {
        gdk_window_set_role(window_ptr, role)
    
    }

    /// Newer GTK+ windows using client-side decorations use extra geometry
    /// around their frames for effects like shadows and invisible borders.
    /// Window managers that want to maximize windows or snap to edges need
    /// to know where the extents of the actual frame lie, so that users
    /// don’t feel like windows are snapping against random invisible edges.
    /// 
    /// Note that this property is automatically updated by GTK+, so this
    /// function should only be used by applications which do not use GTK+
    /// to create toplevel windows.
    @inlinable func setShadowWidth(`left`: Int, `right`: Int, top: Int, bottom: Int) {
        gdk_window_set_shadow_width(window_ptr, gint(`left`), gint(`right`), gint(top), gint(bottom))
    
    }

    /// Toggles whether a window should appear in a pager (workspace
    /// switcher, or other desktop utility program that displays a small
    /// thumbnail representation of the windows on the desktop). If a
    /// window’s semantic type as specified with `gdk_window_set_type_hint()`
    /// already fully describes the window, this function should
    /// not be called in addition, instead you should
    /// allow the window to be treated according to standard policy for
    /// its semantic type.
    @inlinable func setSkipPagerHint(skipsPager: Bool) {
        gdk_window_set_skip_pager_hint(window_ptr, gboolean((skipsPager) ? 1 : 0))
    
    }

    /// Toggles whether a window should appear in a task list or window
    /// list. If a window’s semantic type as specified with
    /// `gdk_window_set_type_hint()` already fully describes the window, this
    /// function should not be called in addition,
    /// instead you should allow the window to be treated according to
    /// standard policy for its semantic type.
    @inlinable func setSkipTaskbarHint(skipsTaskbar: Bool) {
        gdk_window_set_skip_taskbar_hint(window_ptr, gboolean((skipsTaskbar) ? 1 : 0))
    
    }

    /// Sets the event mask for any floating device (i.e. not attached to any
    /// visible pointer) that has the source defined as `source`. This event
    /// mask will be applied both to currently existing, newly added devices
    /// after this call, and devices being attached/detached.
    @inlinable func setSourceEvents(source: GdkInputSource, eventMask: EventMask) {
        gdk_window_set_source_events(window_ptr, source, eventMask.value)
    
    }

    /// When using GTK+, typically you should use `gtk_window_set_startup_id()`
    /// instead of this low-level function.
    @inlinable func set(startupId: UnsafePointer<gchar>!) {
        gdk_window_set_startup_id(window_ptr, startupId)
    
    }

    /// Used to set the bit gravity of the given window to static, and flag
    /// it so all children get static subwindow gravity. This is used if you
    /// are implementing scary features that involve deep knowledge of the
    /// windowing system. Don’t worry about it.
    ///
    /// **set_static_gravities is deprecated:**
    /// static gravities haven't worked on anything but X11
    ///   for a long time.
    @available(*, deprecated) @inlinable func setStaticGravities(useStatic: Bool) -> Bool {
        let rv = ((gdk_window_set_static_gravities(window_ptr, gboolean((useStatic) ? 1 : 0))) != 0)
        return rv
    }

    /// This function will enable multidevice features in `window`.
    /// 
    /// Multidevice aware windows will need to handle properly multiple,
    /// per device enter/leave events, device grabs and grab ownerships.
    @inlinable func set(supportMultidevice: Bool) {
        gdk_window_set_support_multidevice(window_ptr, gboolean((supportMultidevice) ? 1 : 0))
    
    }

    /// Sets the title of a toplevel window, to be displayed in the titlebar.
    /// If you haven’t explicitly set the icon name for the window
    /// (using `gdk_window_set_icon_name()`), the icon name will be set to
    /// `title` as well. `title` must be in UTF-8 encoding (as with all
    /// user-readable strings in GDK/GTK+). `title` may not be `nil`.
    @inlinable func set(title: UnsafePointer<gchar>!) {
        gdk_window_set_title(window_ptr, title)
    
    }

    /// Indicates to the window manager that `window` is a transient dialog
    /// associated with the application window `parent`. This allows the
    /// window manager to do things like center `window` on `parent` and
    /// keep `window` above `parent`.
    /// 
    /// See `gtk_window_set_transient_for()` if you’re using `GtkWindow` or
    /// `GtkDialog`.
    @inlinable func setTransientFor<WindowT: WindowProtocol>(parent: WindowT) {
        gdk_window_set_transient_for(window_ptr, parent.window_ptr)
    
    }

    /// The application can use this call to provide a hint to the window
    /// manager about the functionality of a window. The window manager
    /// can use this information when determining the decoration and behaviour
    /// of the window.
    /// 
    /// The hint must be set before the window is mapped.
    @inlinable func setType(hint: GdkWindowTypeHint) {
        gdk_window_set_type_hint(window_ptr, hint)
    
    }

    /// Toggles whether a window needs the user's
    /// urgent attention.
    @inlinable func setUrgencyHint(urgent: Bool) {
        gdk_window_set_urgency_hint(window_ptr, gboolean((urgent) ? 1 : 0))
    
    }

    /// For most purposes this function is deprecated in favor of
    /// `g_object_set_data()`. However, for historical reasons GTK+ stores
    /// the `GtkWidget` that owns a `GdkWindow` as user data on the
    /// `GdkWindow`. So, custom widget implementations should use
    /// this function for that. If GTK+ receives an event for a `GdkWindow`,
    /// and the user data for the window is non-`nil`, GTK+ will assume the
    /// user data is a `GtkWidget`, and forward the event to that widget.
    @inlinable func set(userData: GLibObject.ObjectRef? = nil) {
        gdk_window_set_user_data(window_ptr, userData?.object_ptr)
    
    }
    /// For most purposes this function is deprecated in favor of
    /// `g_object_set_data()`. However, for historical reasons GTK+ stores
    /// the `GtkWidget` that owns a `GdkWindow` as user data on the
    /// `GdkWindow`. So, custom widget implementations should use
    /// this function for that. If GTK+ receives an event for a `GdkWindow`,
    /// and the user data for the window is non-`nil`, GTK+ will assume the
    /// user data is a `GtkWidget`, and forward the event to that widget.
    @inlinable func set<ObjectT: GLibObject.ObjectProtocol>(userData: ObjectT?) {
        gdk_window_set_user_data(window_ptr, userData?.object_ptr)
    
    }

    /// Makes pixels in `window` outside `shape_region` be transparent,
    /// so that the window may be nonrectangular.
    /// 
    /// If `shape_region` is `nil`, the shape will be unset, so the whole
    /// window will be opaque again. `offset_x` and `offset_y` are ignored
    /// if `shape_region` is `nil`.
    /// 
    /// On the X11 platform, this uses an X server extension which is
    /// widely available on most common platforms, but not available on
    /// very old X servers, and occasionally the implementation will be
    /// buggy. On servers without the shape extension, this function
    /// will do nothing.
    /// 
    /// This function works on both toplevel and child windows.
    @inlinable func shapeCombineRegion(shapeRegion: Cairo.RegionRef? = nil, offsetX: Int, offsetY: Int) {
        gdk_window_shape_combine_region(window_ptr, shapeRegion?._ptr, gint(offsetX), gint(offsetY))
    
    }
    /// Makes pixels in `window` outside `shape_region` be transparent,
    /// so that the window may be nonrectangular.
    /// 
    /// If `shape_region` is `nil`, the shape will be unset, so the whole
    /// window will be opaque again. `offset_x` and `offset_y` are ignored
    /// if `shape_region` is `nil`.
    /// 
    /// On the X11 platform, this uses an X server extension which is
    /// widely available on most common platforms, but not available on
    /// very old X servers, and occasionally the implementation will be
    /// buggy. On servers without the shape extension, this function
    /// will do nothing.
    /// 
    /// This function works on both toplevel and child windows.
    @inlinable func shapeCombineRegion<RegionT: Cairo.RegionProtocol>(shapeRegion: RegionT?, offsetX: Int, offsetY: Int) {
        gdk_window_shape_combine_region(window_ptr, shapeRegion?._ptr, gint(offsetX), gint(offsetY))
    
    }

    /// Like `gdk_window_show_unraised()`, but also raises the window to the
    /// top of the window stack (moves the window to the front of the
    /// Z-order).
    /// 
    /// This function maps a window so it’s visible onscreen. Its opposite
    /// is `gdk_window_hide()`.
    /// 
    /// When implementing a `GtkWidget`, you should call this function on the widget's
    /// `GdkWindow` as part of the “map” method.
    @inlinable func show() {
        gdk_window_show(window_ptr)
    
    }

    /// Shows a `GdkWindow` onscreen, but does not modify its stacking
    /// order. In contrast, `gdk_window_show()` will raise the window
    /// to the top of the window stack.
    /// 
    /// On the X11 platform, in Xlib terms, this function calls
    /// `XMapWindow()` (it also updates some internal GDK state, which means
    /// that you can’t really use `XMapWindow()` directly on a GDK window).
    @inlinable func showUnraised() {
        gdk_window_show_unraised(window_ptr)
    
    }

    /// Asks the windowing system to show the window menu. The window menu
    /// is the menu shown when right-clicking the titlebar on traditional
    /// windows managed by the window manager. This is useful for windows
    /// using client-side decorations, activating it with a right-click
    /// on the window decorations.
    @inlinable func showWindowMenu<EventT: EventProtocol>(event: EventT) -> Bool {
        let rv = ((gdk_window_show_window_menu(window_ptr, event.event_ptr)) != 0)
        return rv
    }

    /// “Pins” a window such that it’s on all workspaces and does not scroll
    /// with viewports, for window managers that have scrollable viewports.
    /// (When using `GtkWindow`, `gtk_window_stick()` may be more useful.)
    /// 
    /// On the X11 platform, this function depends on window manager
    /// support, so may have no effect with many window managers. However,
    /// GDK will do the best it can to convince the window manager to stick
    /// the window. For window managers that don’t support this operation,
    /// there’s nothing you can do to force it to happen.
    @inlinable func stick() {
        gdk_window_stick(window_ptr)
    
    }

    /// Thaws a window frozen with
    /// `gdk_window_freeze_toplevel_updates_libgtk_only()`.
    /// 
    /// This function is not part of the GDK public API and is only
    /// for use by GTK+.
    ///
    /// **thaw_toplevel_updates_libgtk_only is deprecated:**
    /// This symbol was never meant to be used outside of GTK+
    @available(*, deprecated) @inlinable func thawToplevelUpdatesLibgtkOnly() {
        gdk_window_thaw_toplevel_updates_libgtk_only(window_ptr)
    
    }

    /// Thaws a window frozen with `gdk_window_freeze_updates()`.
    @inlinable func thawUpdates() {
        gdk_window_thaw_updates(window_ptr)
    
    }

    /// Moves the window out of fullscreen mode. If the window was not
    /// fullscreen, does nothing.
    /// 
    /// On X11, asks the window manager to move `window` out of the fullscreen
    /// state, if the window manager supports this operation. Not all
    /// window managers support this, and some deliberately ignore it or
    /// don’t have a concept of “fullscreen”; so you can’t rely on the
    /// unfullscreenification actually happening. But it will happen with
    /// most standard window managers, and GDK makes a best effort to get
    /// it to happen.
    @inlinable func unfullscreen() {
        gdk_window_unfullscreen(window_ptr)
    
    }

    /// Unmaximizes the window. If the window wasn’t maximized, then this
    /// function does nothing.
    /// 
    /// On X11, asks the window manager to unmaximize `window`, if the
    /// window manager supports this operation. Not all window managers
    /// support this, and some deliberately ignore it or don’t have a
    /// concept of “maximized”; so you can’t rely on the unmaximization
    /// actually happening. But it will happen with most standard window
    /// managers, and GDK makes a best effort to get it to happen.
    /// 
    /// On Windows, reliably unmaximizes the window.
    @inlinable func unmaximize() {
        gdk_window_unmaximize(window_ptr)
    
    }

    /// Reverse operation for `gdk_window_stick()`; see `gdk_window_stick()`,
    /// and `gtk_window_unstick()`.
    @inlinable func unstick() {
        gdk_window_unstick(window_ptr)
    
    }

    /// Withdraws a window (unmaps it and asks the window manager to forget about it).
    /// This function is not really useful as `gdk_window_hide()` automatically
    /// withdraws toplevel windows before hiding them.
    @inlinable func withdraw() {
        gdk_window_withdraw(window_ptr)
    
    }

    /// Creates a Cairo context for drawing to `window`.
    /// 
    /// Note that calling `cairo_reset_clip()` on the resulting `cairo_t` will
    /// produce undefined results, so avoid it at all costs.
    /// 
    /// Typically, this function is used to draw on a `GdkWindow` out of the paint
    /// cycle of the toolkit; this should be avoided, as it breaks various assumptions
    /// and optimizations.
    /// 
    /// If you are drawing on a native `GdkWindow` in response to a `GDK_EXPOSE` event
    /// you should use `gdk_window_begin_draw_frame()` and `gdk_drawing_context_get_cairo_context()`
    /// instead. GTK will automatically do this for you when drawing a widget.
    ///
    /// **cairo_create is deprecated:**
    /// Use gdk_window_begin_draw_frame() and
    ///   gdk_drawing_context_get_cairo_context() instead
    @available(*, deprecated) @inlinable func cairoCreate() -> Cairo.ContextRef! {
        let rv = Cairo.ContextRef(gdk_cairo_create(window_ptr))
        return rv
    }

    /// This is the main way to draw GL content in GTK+. It takes a render buffer ID
    /// (`source_type` == `GL_RENDERBUFFER`) or a texture id (`source_type` == `GL_TEXTURE`)
    /// and draws it onto `cr` with an OVER operation, respecting the current clip.
    /// The top left corner of the rectangle specified by `x`, `y`, `width` and `height`
    /// will be drawn at the current (0,0) position of the cairo_t.
    /// 
    /// This will work for *all* cairo_t, as long as `window` is realized, but the
    /// fallback implementation that reads back the pixels from the buffer may be
    /// used in the general case. In the case of direct drawing to a window with
    /// no special effects applied to `cr` it will however use a more efficient
    /// approach.
    /// 
    /// For `GL_RENDERBUFFER` the code will always fall back to software for buffers
    /// with alpha components, so make sure you use `GL_TEXTURE` if using alpha.
    /// 
    /// Calling this may change the current GL context.
    @inlinable func cairoDrawFromGl<ContextT: Cairo.ContextProtocol>(cr: ContextT, source: Int, sourceType: Int, bufferScale: Int, x: Int, y: Int, width: Int, height: Int) {
        gdk_cairo_draw_from_gl(cr._ptr, window_ptr, gint(source), gint(sourceType), gint(bufferScale), gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Sets the given window as the source pattern for `cr`.
    /// 
    /// The pattern has an extend mode of `CAIRO_EXTEND_NONE` and is aligned
    /// so that the origin of `window` is `x`, `y`. The window contains all its
    /// subwindows when rendering.
    /// 
    /// Note that the contents of `window` are undefined outside of the
    /// visible part of `window`, so use this function with care.
    @inlinable func cairoSetSourceWindow<ContextT: Cairo.ContextProtocol>(cr: ContextT, x: Double, y: Double) {
        gdk_cairo_set_source_window(cr._ptr, window_ptr, gdouble(x), gdouble(y))
    
    }

    /// Creates an image surface with the same contents as
    /// the pixbuf.
    @inlinable func cairoSurfaceCreateFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT, scale: Int) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gdk_cairo_surface_create_from_pixbuf(pixbuf.pixbuf_ptr, gint(scale), window_ptr))
        return rv
    }

    /// Starts a drag and creates a new drag context for it.
    /// This function assumes that the drag is controlled by the
    /// client pointer device, use `gdk_drag_begin_for_device()` to
    /// begin a drag with a different device.
    /// 
    /// This function is called by the drag source.
    @inlinable func dragBegin<ListT: GLib.ListProtocol>(targets: ListT) -> DragContextRef! {
        let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin(window_ptr, targets._ptr)))
        return rv
    }

    /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source.
    @inlinable func dragBeginFor<DeviceT: DeviceProtocol, ListT: GLib.ListProtocol>(device: DeviceT, targets: ListT) -> DragContextRef! {
        let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin_for_device(window_ptr, device.device_ptr, targets._ptr)))
        return rv
    }

    /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source.
    @inlinable func dragBeginFromPoint<DeviceT: DeviceProtocol, ListT: GLib.ListProtocol>(device: DeviceT, targets: ListT, xRoot: Int, yRoot: Int) -> DragContextRef! {
        let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin_from_point(window_ptr, device.device_ptr, targets._ptr, gint(xRoot), gint(yRoot))))
        return rv
    }

    /// Finds the destination window and DND protocol to use at the
    /// given pointer position.
    /// 
    /// This function is called by the drag source to obtain the
    /// `dest_window` and `protocol` parameters for `gdk_drag_motion()`.
    @inlinable func dragFindWindowForScreen<DragContextT: DragContextProtocol, ScreenT: ScreenProtocol>(context: DragContextT, screen: ScreenT, xRoot: Int, yRoot: Int, destWindow: UnsafeMutablePointer<UnsafeMutablePointer<GdkWindow>?>!, `protocol`: UnsafeMutablePointer<GdkDragProtocol>!) {
        gdk_drag_find_window_for_screen(context.drag_context_ptr, window_ptr, screen.screen_ptr, gint(xRoot), gint(yRoot), destWindow, `protocol`)
    
    }

    /// Updates the drag context when the pointer moves or the
    /// set of actions changes.
    /// 
    /// This function is called by the drag source.
    /// 
    /// This function does not need to be called in managed drag and drop
    /// operations. See `gdk_drag_context_manage_dnd()` for more information.
    @inlinable func dragMotion<DragContextT: DragContextProtocol>(context: DragContextT, `protocol`: GdkDragProtocol, xRoot: Int, yRoot: Int, suggestedAction: DragAction, possibleActions: DragAction, time_: guint32) -> Bool {
        let rv = ((gdk_drag_motion(context.drag_context_ptr, window_ptr, `protocol`, gint(xRoot), gint(yRoot), suggestedAction.value, possibleActions.value, time_)) != 0)
        return rv
    }

    /// Grabs the keyboard so that all events are passed to this
    /// application until the keyboard is ungrabbed with `gdk_keyboard_ungrab()`.
    /// This overrides any previous keyboard grab by this client.
    /// 
    /// If you set up anything at the time you take the grab that needs to be cleaned
    /// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
    /// are emitted when the grab ends unvoluntarily.
    ///
    /// **keyboard_grab is deprecated:**
    /// Use gdk_device_grab() instead.
    @available(*, deprecated) @inlinable func keyboardGrab(ownerEvents: Bool, time_: guint32) -> GdkGrabStatus {
        let rv = gdk_keyboard_grab(window_ptr, gboolean((ownerEvents) ? 1 : 0), time_)
        return rv
    }

    /// Gets the window that `window` is embedded in.
    @inlinable func offscreenWindowGetEmbedder() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_offscreen_window_get_embedder(window_ptr))) else { return nil }
        return rv
    }

    /// Gets the offscreen surface that an offscreen window renders into.
    /// If you need to keep this around over window resizes, you need to
    /// add a reference to it.
    @inlinable func offscreenWindowGetSurface() -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gdk_offscreen_window_get_surface(window_ptr))
        return rv
    }

    /// Sets `window` to be embedded in `embedder`.
    /// 
    /// To fully embed an offscreen window, in addition to calling this
    /// function, it is also necessary to handle the `GdkWindow::pick`-embedded-child
    /// signal on the `embedder` and the `GdkWindow::to`-embedder and
    /// `GdkWindow::from`-embedder signals on `window`.
    @inlinable func offscreenWindowSet<WindowT: WindowProtocol>(embedder: WindowT) {
        gdk_offscreen_window_set_embedder(window_ptr, embedder.window_ptr)
    
    }

    /// Transfers image data from a `GdkWindow` and converts it to an `RGB(A)`
    /// representation inside a `GdkPixbuf`. In other words, copies
    /// image data from a server-side drawable to a client-side `RGB(A)` buffer.
    /// This allows you to efficiently read individual pixels on the client side.
    /// 
    /// This function will create an RGB pixbuf with 8 bits per channel with
    /// the size specified by the `width` and `height` arguments scaled by the
    /// scale factor of `window`. The pixbuf will contain an alpha channel if
    /// the `window` contains one.
    /// 
    /// If the window is off the screen, then there is no image data in the
    /// obscured/offscreen regions to be placed in the pixbuf. The contents of
    /// portions of the pixbuf corresponding to the offscreen region are undefined.
    /// 
    /// If the window you’re obtaining data from is partially obscured by
    /// other windows, then the contents of the pixbuf areas corresponding
    /// to the obscured regions are undefined.
    /// 
    /// If the window is not mapped (typically because it’s iconified/minimized
    /// or not on the current workspace), then `nil` will be returned.
    /// 
    /// If memory can’t be allocated for the return value, `nil` will be returned
    /// instead.
    /// 
    /// (In short, there are several ways this function can fail, and if it fails
    ///  it returns `nil`; so check the return value.)
    @inlinable func pixbufGetFromWindow(srcX: Int, srcY: Int, width: Int, height: Int) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_get_from_window(window_ptr, gint(srcX), gint(srcY), gint(width), gint(height))))
        return rv
    }

    /// Grabs the pointer (usually a mouse) so that all events are passed to this
    /// application until the pointer is ungrabbed with `gdk_pointer_ungrab()`, or
    /// the grab window becomes unviewable.
    /// This overrides any previous pointer grab by this client.
    /// 
    /// Pointer grabs are used for operations which need complete control over mouse
    /// events, even if the mouse leaves the application.
    /// For example in GTK+ it is used for Drag and Drop, for dragging the handle in
    /// the `GtkHPaned` and `GtkVPaned` widgets.
    /// 
    /// Note that if the event mask of an X window has selected both button press and
    /// button release events, then a button press event will cause an automatic
    /// pointer grab until the button is released.
    /// X does this automatically since most applications expect to receive button
    /// press and release events in pairs.
    /// It is equivalent to a pointer grab on the window with `owner_events` set to
    /// `true`.
    /// 
    /// If you set up anything at the time you take the grab that needs to be cleaned
    /// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
    /// are emitted when the grab ends unvoluntarily.
    ///
    /// **pointer_grab is deprecated:**
    /// Use gdk_device_grab() instead.
    @available(*, deprecated) @inlinable func pointerGrab(ownerEvents: Bool, eventMask: EventMask, confineTo: WindowRef? = nil, cursor: CursorRef? = nil, time_: guint32) -> GdkGrabStatus {
        let rv = gdk_pointer_grab(window_ptr, gboolean((ownerEvents) ? 1 : 0), eventMask.value, confineTo?.window_ptr, cursor?.cursor_ptr, time_)
        return rv
    }
    /// Grabs the pointer (usually a mouse) so that all events are passed to this
    /// application until the pointer is ungrabbed with `gdk_pointer_ungrab()`, or
    /// the grab window becomes unviewable.
    /// This overrides any previous pointer grab by this client.
    /// 
    /// Pointer grabs are used for operations which need complete control over mouse
    /// events, even if the mouse leaves the application.
    /// For example in GTK+ it is used for Drag and Drop, for dragging the handle in
    /// the `GtkHPaned` and `GtkVPaned` widgets.
    /// 
    /// Note that if the event mask of an X window has selected both button press and
    /// button release events, then a button press event will cause an automatic
    /// pointer grab until the button is released.
    /// X does this automatically since most applications expect to receive button
    /// press and release events in pairs.
    /// It is equivalent to a pointer grab on the window with `owner_events` set to
    /// `true`.
    /// 
    /// If you set up anything at the time you take the grab that needs to be cleaned
    /// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
    /// are emitted when the grab ends unvoluntarily.
    ///
    /// **pointer_grab is deprecated:**
    /// Use gdk_device_grab() instead.
    @available(*, deprecated) @inlinable func pointerGrab<CursorT: CursorProtocol, WindowT: WindowProtocol>(ownerEvents: Bool, eventMask: EventMask, confineTo: WindowT?, cursor: CursorT?, time_: guint32) -> GdkGrabStatus {
        let rv = gdk_pointer_grab(window_ptr, gboolean((ownerEvents) ? 1 : 0), eventMask.value, confineTo?.window_ptr, cursor?.cursor_ptr, time_)
        return rv
    }

    /// Changes the contents of a property on a window.
    @inlinable func propertyChange<AtomT: AtomProtocol>(property: AtomT!, type: AtomT!, format: Int, mode: GdkPropMode, data: UnsafePointer<guchar>!, nelements: Int) {
        gdk_property_change(window_ptr, property._ptr, type._ptr, gint(format), mode, data, gint(nelements))
    
    }

    /// Deletes a property from a window.
    @inlinable func propertyDelete(property: GdkAtom!) {
        gdk_property_delete(window_ptr, property)
    
    }


    // *** propertyGet() causes a syntax error and is therefore not available!


    /// Retrieves the contents of a selection in a given
    /// form.
    @inlinable func selectionConvert(selection: GdkAtom!, target: GdkAtom!, time_: guint32) {
        gdk_selection_convert(window_ptr, selection, target, time_)
    
    }

    /// Sets the owner of the given selection.
    @inlinable func selectionOwnerSet(selection: GdkAtom!, time_: guint32, sendEvent: Bool) -> Bool {
        let rv = ((gdk_selection_owner_set(window_ptr, selection, time_, gboolean((sendEvent) ? 1 : 0))) != 0)
        return rv
    }

    /// Sets the `GdkWindow` `owner` as the current owner of the selection `selection`.
    @inlinable func selectionOwnerSetFor<DisplayT: DisplayProtocol>(display: DisplayT, selection: GdkAtom!, time_: guint32, sendEvent: Bool) -> Bool {
        let rv = ((gdk_selection_owner_set_for_display(display.display_ptr, window_ptr, selection, time_, gboolean((sendEvent) ? 1 : 0))) != 0)
        return rv
    }

    /// Retrieves selection data that was stored by the selection
    /// data in response to a call to `gdk_selection_convert()`. This function
    /// will not be used by applications, who should use the `GtkClipboard`
    /// API instead.
    @inlinable func selectionPropertyGet(data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propertyType: UnsafeMutablePointer<GdkAtom?>, propertyFormat: UnsafeMutablePointer<gint>!) -> Int {
        let rv = Int(gdk_selection_property_get(window_ptr, data, propertyType, propertyFormat))
        return rv
    }

    /// Sends a response to SelectionRequest event.
    @inlinable func selectionSendNotify(selection: GdkAtom!, target: GdkAtom!, property: GdkAtom!, time_: guint32) {
        gdk_selection_send_notify(window_ptr, selection, target, property, time_)
    
    }

    /// Send a response to SelectionRequest event.
    @inlinable func selectionSendNotifyFor<DisplayT: DisplayProtocol>(display: DisplayT, selection: GdkAtom!, target: GdkAtom!, property: GdkAtom!, time_: guint32) {
        gdk_selection_send_notify_for_display(display.display_ptr, window_ptr, selection, target, property, time_)
    
    }

    @inlinable func synthesizeWindowState(unsetFlags: WindowState, setFlags: WindowState) {
        gdk_synthesize_window_state(window_ptr, unsetFlags.value, setFlags.value)
    
    }

    /// Retrieves a pixel from `window` to force the windowing
    /// system to carry out any pending rendering commands.
    /// 
    /// This function is intended to be used to synchronize with rendering
    /// pipelines, to benchmark windowing system rendering operations.
    @inlinable func testRenderSync() {
        gdk_test_render_sync(window_ptr)
    
    }

    /// This function is intended to be used in GTK+ test programs.
    /// It will warp the mouse pointer to the given (`x`,`y`) coordinates
    /// within `window` and simulate a button press or release event.
    /// Because the mouse pointer needs to be warped to the target
    /// location, use of this function outside of test programs that
    /// run in their own virtual windowing system (e.g. Xvfb) is not
    /// recommended.
    /// 
    /// Also, `gdk_test_simulate_button()` is a fairly low level function,
    /// for most testing purposes, `gtk_test_widget_click()` is the right
    /// function to call which will generate a button press event followed
    /// by its accompanying button release event.
    @inlinable func testSimulateButton(x: Int, y: Int, button: Int, modifiers: ModifierType, buttonPressrelease: GdkEventType) -> Bool {
        let rv = ((gdk_test_simulate_button(window_ptr, gint(x), gint(y), guint(button), modifiers.value, buttonPressrelease)) != 0)
        return rv
    }

    /// This function is intended to be used in GTK+ test programs.
    /// If (`x`,`y`) are > (-1,-1), it will warp the mouse pointer to
    /// the given (`x`,`y`) coordinates within `window` and simulate a
    /// key press or release event.
    /// 
    /// When the mouse pointer is warped to the target location, use
    /// of this function outside of test programs that run in their
    /// own virtual windowing system (e.g. Xvfb) is not recommended.
    /// If (`x`,`y`) are passed as (-1,-1), the mouse pointer will not
    /// be warped and `window` origin will be used as mouse pointer
    /// location for the event.
    /// 
    /// Also, `gdk_test_simulate_key()` is a fairly low level function,
    /// for most testing purposes, `gtk_test_widget_send_key()` is the
    /// right function to call which will generate a key press event
    /// followed by its accompanying key release event.
    @inlinable func testSimulateKey(x: Int, y: Int, keyval: Int, modifiers: ModifierType, keyPressrelease: GdkEventType) -> Bool {
        let rv = ((gdk_test_simulate_key(window_ptr, gint(x), gint(y), guint(keyval), modifiers.value, keyPressrelease)) != 0)
        return rv
    }
    /// Determines whether or not the desktop environment shuld be hinted that
    /// the window does not want to receive input focus.
    @inlinable var acceptFocus: Bool {
        /// Determines whether or not the desktop environment shuld be hinted that
        /// the window does not want to receive input focus.
        get {
            let rv = ((gdk_window_get_accept_focus(window_ptr)) != 0)
            return rv
        }
        /// Setting `accept_focus` to `false` hints the desktop environment that the
        /// window doesn’t want to receive input focus.
        /// 
        /// On X, it is the responsibility of the window manager to interpret this
        /// hint. ICCCM-compliant window manager usually respect it.
        nonmutating set {
            gdk_window_set_accept_focus(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the pattern used to clear the background on `window`.
    ///
    /// **get_background_pattern is deprecated:**
    /// Don't use this function
    @inlinable var backgroundPattern: Cairo.PatternRef! {
        /// Gets the pattern used to clear the background on `window`.
        ///
        /// **get_background_pattern is deprecated:**
        /// Don't use this function
        @available(*, deprecated) get {
            let rv = Cairo.PatternRef(gdk_window_get_background_pattern(window_ptr))
            return rv
        }
        /// Sets the background of `window`.
        /// 
        /// A background of `nil` means that the window won't have any background. On the
        /// X11 backend it's also possible to inherit the background from the parent
        /// window using `gdk_x11_get_parent_relative_pattern()`.
        /// 
        /// The windowing system will normally fill a window with its background
        /// when the window is obscured then exposed.
        ///
        /// **set_background_pattern is deprecated:**
        /// Don't use this function
        @available(*, deprecated) nonmutating set {
            gdk_window_set_background_pattern(window_ptr, UnsafeMutablePointer<cairo_pattern_t>(newValue?._ptr))
        }
    }

    /// Gets the list of children of `window` known to GDK.
    /// This function only returns children created via GDK,
    /// so for example it’s useless when used with the root window;
    /// it only returns windows an application created itself.
    /// 
    /// The returned list must be freed, but the elements in the
    /// list need not be.
    @inlinable var children: GLib.ListRef! {
        /// Gets the list of children of `window` known to GDK.
        /// This function only returns children created via GDK,
        /// so for example it’s useless when used with the root window;
        /// it only returns windows an application created itself.
        /// 
        /// The returned list must be freed, but the elements in the
        /// list need not be.
        get {
            let rv = GLib.ListRef(gdk_window_get_children(window_ptr))
            return rv
        }
    }

    /// Computes the region of a window that potentially can be written
    /// to by drawing primitives. This region may not take into account
    /// other factors such as if the window is obscured by other windows,
    /// but no area outside of this region will be affected by drawing
    /// primitives.
    @inlinable var clipRegion: Cairo.RegionRef! {
        /// Computes the region of a window that potentially can be written
        /// to by drawing primitives. This region may not take into account
        /// other factors such as if the window is obscured by other windows,
        /// but no area outside of this region will be affected by drawing
        /// primitives.
        get {
            let rv = Cairo.RegionRef(gdk_window_get_clip_region(window_ptr))
            return rv
        }
    }

    /// Determines whether `window` is composited.
    /// 
    /// See `gdk_window_set_composited()`.
    ///
    /// **get_composited is deprecated:**
    /// Compositing is an outdated technology that
    ///   only ever worked on X11.
    @inlinable var composited: Bool {
        /// Determines whether `window` is composited.
        /// 
        /// See `gdk_window_set_composited()`.
        ///
        /// **get_composited is deprecated:**
        /// Compositing is an outdated technology that
        ///   only ever worked on X11.
        @available(*, deprecated) get {
            let rv = ((gdk_window_get_composited(window_ptr)) != 0)
            return rv
        }
        /// Sets a `GdkWindow` as composited, or unsets it. Composited
        /// windows do not automatically have their contents drawn to
        /// the screen. Drawing is redirected to an offscreen buffer
        /// and an expose event is emitted on the parent of the composited
        /// window. It is the responsibility of the parent’s expose handler
        /// to manually merge the off-screen content onto the screen in
        /// whatever way it sees fit.
        /// 
        /// It only makes sense for child windows to be composited; see
        /// `gdk_window_set_opacity()` if you need translucent toplevel
        /// windows.
        /// 
        /// An additional effect of this call is that the area of this
        /// window is no longer clipped from regions marked for
        /// invalidation on its parent. Draws done on the parent
        /// window are also no longer clipped by the child.
        /// 
        /// This call is only supported on some systems (currently,
        /// only X11 with new enough Xcomposite and Xdamage extensions).
        /// You must call `gdk_display_supports_composite()` to check if
        /// setting a window as composited is supported before
        /// attempting to do so.
        ///
        /// **set_composited is deprecated:**
        /// Compositing is an outdated technology that
        ///   only ever worked on X11.
        @available(*, deprecated) nonmutating set {
            gdk_window_set_composited(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The mouse pointer for a `GdkWindow`. See `gdk_window_set_cursor()` and
    /// `gdk_window_get_cursor()` for details.
    @inlinable var cursor: CursorRef! {
        /// Retrieves a `GdkCursor` pointer for the cursor currently set on the
        /// specified `GdkWindow`, or `nil`.  If the return value is `nil` then
        /// there is no custom cursor set on the specified window, and it is
        /// using the cursor for its parent window.
        get {
            let rv = CursorRef(gconstpointer: gconstpointer(gdk_window_get_cursor(window_ptr)))
            return rv
        }
        /// Sets the default mouse pointer for a `GdkWindow`.
        /// 
        /// Note that `cursor` must be for the same display as `window`.
        /// 
        /// Use `gdk_cursor_new_for_display()` or `gdk_cursor_new_from_pixbuf()` to
        /// create the cursor. To make the cursor invisible, use `GDK_BLANK_CURSOR`.
        /// Passing `nil` for the `cursor` argument to `gdk_window_set_cursor()` means
        /// that `window` will use the cursor of its parent window. Most windows
        /// should use this default.
        nonmutating set {
            gdk_window_set_cursor(window_ptr, UnsafeMutablePointer<GdkCursor>(newValue?.cursor_ptr))
        }
    }

    /// Gets the `GdkDisplay` associated with a `GdkWindow`.
    @inlinable var display: DisplayRef! {
        /// Gets the `GdkDisplay` associated with a `GdkWindow`.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_window_get_display(window_ptr)))
            return rv
        }
    }

    /// Obtains the parent of `window`, as known to GDK. Works like
    /// `gdk_window_get_parent()` for normal windows, but returns the
    /// window’s embedder for offscreen windows.
    /// 
    /// See also: `gdk_offscreen_window_get_embedder()`
    @inlinable var effectiveParent: WindowRef! {
        /// Obtains the parent of `window`, as known to GDK. Works like
        /// `gdk_window_get_parent()` for normal windows, but returns the
        /// window’s embedder for offscreen windows.
        /// 
        /// See also: `gdk_offscreen_window_get_embedder()`
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_effective_parent(window_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the toplevel window that’s an ancestor of `window`.
    /// 
    /// Works like `gdk_window_get_toplevel()`, but treats an offscreen window's
    /// embedder as its parent, using `gdk_window_get_effective_parent()`.
    /// 
    /// See also: `gdk_offscreen_window_get_embedder()`
    @inlinable var effectiveToplevel: WindowRef! {
        /// Gets the toplevel window that’s an ancestor of `window`.
        /// 
        /// Works like `gdk_window_get_toplevel()`, but treats an offscreen window's
        /// embedder as its parent, using `gdk_window_get_effective_parent()`.
        /// 
        /// See also: `gdk_offscreen_window_get_embedder()`
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_effective_toplevel(window_ptr))) else { return nil }
            return rv
        }
    }

    /// Get the current event compression setting for this window.
    @inlinable var eventCompression: Bool {
        /// Get the current event compression setting for this window.
        get {
            let rv = ((gdk_window_get_event_compression(window_ptr)) != 0)
            return rv
        }
        /// Determines whether or not extra unprocessed motion events in
        /// the event queue can be discarded. If `true` only the most recent
        /// event will be delivered.
        /// 
        /// Some types of applications, e.g. paint programs, need to see all
        /// motion events and will benefit from turning off event compression.
        /// 
        /// By default, event compression is enabled.
        nonmutating set {
            gdk_window_set_event_compression(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the event mask for `window` for all master input devices. See
    /// `gdk_window_set_events()`.
    @inlinable var events: EventMask {
        /// Gets the event mask for `window` for all master input devices. See
        /// `gdk_window_set_events()`.
        get {
            let rv = EventMask(gdk_window_get_events(window_ptr))
            return rv
        }
        /// The event mask for a window determines which events will be reported
        /// for that window from all master input devices. For example, an event mask
        /// including `GDK_BUTTON_PRESS_MASK` means the window should report button
        /// press events. The event mask is the bitwise OR of values from the
        /// `GdkEventMask` enumeration.
        /// 
        /// See the [input handling overview](#event-masks) for details.
        nonmutating set {
            gdk_window_set_events(window_ptr, newValue.value)
        }
    }

    /// Determines whether or not the desktop environment should be hinted that the
    /// window does not want to receive input focus when it is mapped.
    @inlinable var focusOnMap: Bool {
        /// Determines whether or not the desktop environment should be hinted that the
        /// window does not want to receive input focus when it is mapped.
        get {
            let rv = ((gdk_window_get_focus_on_map(window_ptr)) != 0)
            return rv
        }
        /// Setting `focus_on_map` to `false` hints the desktop environment that the
        /// window doesn’t want to receive input focus when it is mapped.
        /// focus_on_map should be turned off for windows that aren’t triggered
        /// interactively (such as popups from network activity).
        /// 
        /// On X, it is the responsibility of the window manager to interpret
        /// this hint. Window managers following the freedesktop.org window
        /// manager extension specification should respect it.
        nonmutating set {
            gdk_window_set_focus_on_map(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the frame clock for the window. The frame clock for a window
    /// never changes unless the window is reparented to a new toplevel
    /// window.
    @inlinable var frameClock: FrameClockRef! {
        /// Gets the frame clock for the window. The frame clock for a window
        /// never changes unless the window is reparented to a new toplevel
        /// window.
        get {
            let rv = FrameClockRef(gconstpointer: gconstpointer(gdk_window_get_frame_clock(window_ptr)))
            return rv
        }
    }

    /// Obtains the `GdkFullscreenMode` of the `window`.
    @inlinable var fullscreenMode: GdkFullscreenMode {
        /// Obtains the `GdkFullscreenMode` of the `window`.
        get {
            let rv = gdk_window_get_fullscreen_mode(window_ptr)
            return rv
        }
        /// Specifies whether the `window` should span over all monitors (in a multi-head
        /// setup) or only the current monitor when in fullscreen mode.
        /// 
        /// The `mode` argument is from the `GdkFullscreenMode` enumeration.
        /// If `GDK_FULLSCREEN_ON_ALL_MONITORS` is specified, the fullscreen `window` will
        /// span over all monitors from the `GdkScreen`.
        /// 
        /// On X11, searches through the list of monitors from the `GdkScreen` the ones
        /// which delimit the 4 edges of the entire `GdkScreen` and will ask the window
        /// manager to span the `window` over these monitors.
        /// 
        /// If the XINERAMA extension is not available or not usable, this function
        /// has no effect.
        /// 
        /// Not all window managers support this, so you can’t rely on the fullscreen
        /// window to span over the multiple monitors when `GDK_FULLSCREEN_ON_ALL_MONITORS`
        /// is specified.
        nonmutating set {
            gdk_window_set_fullscreen_mode(window_ptr, newValue)
        }
    }

    /// Returns the group leader window for `window`. See `gdk_window_set_group()`.
    @inlinable var group: WindowRef! {
        /// Returns the group leader window for `window`. See `gdk_window_set_group()`.
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_group(window_ptr))) else { return nil }
            return rv
        }
        /// Sets the group leader window for `window`. By default,
        /// GDK sets the group leader for all toplevel windows
        /// to a global window implicitly created by GDK. With this function
        /// you can override this default.
        /// 
        /// The group leader window allows the window manager to distinguish
        /// all windows that belong to a single application. It may for example
        /// allow users to minimize/unminimize all windows belonging to an
        /// application at once. You should only set a non-default group window
        /// if your application pretends to be multiple applications.
        nonmutating set {
            gdk_window_set_group(window_ptr, window_ptr)
        }
    }

    /// Returns the height of the given `window`.
    /// 
    /// On the X11 platform the returned size is the size reported in the
    /// most-recently-processed configure event, rather than the current
    /// size on the X server.
    @inlinable var height: Int {
        /// Returns the height of the given `window`.
        /// 
        /// On the X11 platform the returned size is the size reported in the
        /// most-recently-processed configure event, rather than the current
        /// size on the X server.
        get {
            let rv = Int(gdk_window_get_height(window_ptr))
            return rv
        }
    }

    /// Check to see if a window is destroyed..
    @inlinable var isDestroyed: Bool {
        /// Check to see if a window is destroyed..
        get {
            let rv = ((gdk_window_is_destroyed(window_ptr)) != 0)
            return rv
        }
    }

    /// Determines whether or not the window is an input only window.
    @inlinable var isInputOnly: Bool {
        /// Determines whether or not the window is an input only window.
        get {
            let rv = ((gdk_window_is_input_only(window_ptr)) != 0)
            return rv
        }
    }

    /// Determines whether or not the window is shaped.
    @inlinable var isShaped: Bool {
        /// Determines whether or not the window is shaped.
        get {
            let rv = ((gdk_window_is_shaped(window_ptr)) != 0)
            return rv
        }
    }

    /// Check if the window and all ancestors of the window are
    /// mapped. (This is not necessarily "viewable" in the X sense, since
    /// we only check as far as we have GDK window parents, not to the root
    /// window.)
    @inlinable var isViewable: Bool {
        /// Check if the window and all ancestors of the window are
        /// mapped. (This is not necessarily "viewable" in the X sense, since
        /// we only check as far as we have GDK window parents, not to the root
        /// window.)
        get {
            let rv = ((gdk_window_is_viewable(window_ptr)) != 0)
            return rv
        }
    }

    /// Checks whether the window has been mapped (with `gdk_window_show()` or
    /// `gdk_window_show_unraised()`).
    @inlinable var isVisible: Bool {
        /// Checks whether the window has been mapped (with `gdk_window_show()` or
        /// `gdk_window_show_unraised()`).
        get {
            let rv = ((gdk_window_is_visible(window_ptr)) != 0)
            return rv
        }
    }

    /// Determines whether or not the window manager is hinted that `window`
    /// has modal behaviour.
    @inlinable var modalHint: Bool {
        /// Determines whether or not the window manager is hinted that `window`
        /// has modal behaviour.
        get {
            let rv = ((gdk_window_get_modal_hint(window_ptr)) != 0)
            return rv
        }
        /// The application can use this hint to tell the window manager
        /// that a certain window has modal behaviour. The window manager
        /// can use this information to handle modal windows in a special
        /// way.
        /// 
        /// You should only use this on windows for which you have
        /// previously called `gdk_window_set_transient_for()`
        nonmutating set {
            gdk_window_set_modal_hint(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Obtains the parent of `window`, as known to GDK. Does not query the
    /// X server; thus this returns the parent as passed to `gdk_window_new()`,
    /// not the actual parent. This should never matter unless you’re using
    /// Xlib calls mixed with GDK calls on the X11 platform. It may also
    /// matter for toplevel windows, because the window manager may choose
    /// to reparent them.
    /// 
    /// Note that you should use `gdk_window_get_effective_parent()` when
    /// writing generic code that walks up a window hierarchy, because
    /// `gdk_window_get_parent()` will most likely not do what you expect if
    /// there are offscreen windows in the hierarchy.
    @inlinable var parent: WindowRef! {
        /// Obtains the parent of `window`, as known to GDK. Does not query the
        /// X server; thus this returns the parent as passed to `gdk_window_new()`,
        /// not the actual parent. This should never matter unless you’re using
        /// Xlib calls mixed with GDK calls on the X11 platform. It may also
        /// matter for toplevel windows, because the window manager may choose
        /// to reparent them.
        /// 
        /// Note that you should use `gdk_window_get_effective_parent()` when
        /// writing generic code that walks up a window hierarchy, because
        /// `gdk_window_get_parent()` will most likely not do what you expect if
        /// there are offscreen windows in the hierarchy.
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_parent(window_ptr))) else { return nil }
            return rv
        }
    }

    /// Returns whether input to the window is passed through to the window
    /// below.
    /// 
    /// See `gdk_window_set_pass_through()` for details
    @inlinable var passThrough: Bool {
        /// Returns whether input to the window is passed through to the window
        /// below.
        /// 
        /// See `gdk_window_set_pass_through()` for details
        get {
            let rv = ((gdk_window_get_pass_through(window_ptr)) != 0)
            return rv
        }
        /// Sets whether input to the window is passed through to the window
        /// below.
        /// 
        /// The default value of this is `false`, which means that pointer
        /// events that happen inside the window are send first to the window,
        /// but if the event is not selected by the event mask then the event
        /// is sent to the parent window, and so on up the hierarchy.
        /// 
        /// If `pass_through` is `true` then such pointer events happen as if the
        /// window wasn't there at all, and thus will be sent first to any
        /// windows below `window`. This is useful if the window is used in a
        /// transparent fashion. In the terminology of the web this would be called
        /// "pointer-events: none".
        /// 
        /// Note that a window with `pass_through` `true` can still have a subwindow
        /// without pass through, so you can get events on a subset of a window. And in
        /// that cases you would get the in-between related events such as the pointer
        /// enter/leave events on its way to the destination window.
        nonmutating set {
            gdk_window_set_pass_through(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the internal scale factor that maps from window coordiantes
    /// to the actual device pixels. On traditional systems this is 1, but
    /// on very high density outputs this can be a higher value (often 2).
    /// 
    /// A higher value means that drawing is automatically scaled up to
    /// a higher resolution, so any code doing drawing will automatically look
    /// nicer. However, if you are supplying pixel-based data the scale
    /// value can be used to determine whether to use a pixel resource
    /// with higher resolution data.
    /// 
    /// The scale of a window may change during runtime, if this happens
    /// a configure event will be sent to the toplevel window.
    @inlinable var scaleFactor: Int {
        /// Returns the internal scale factor that maps from window coordiantes
        /// to the actual device pixels. On traditional systems this is 1, but
        /// on very high density outputs this can be a higher value (often 2).
        /// 
        /// A higher value means that drawing is automatically scaled up to
        /// a higher resolution, so any code doing drawing will automatically look
        /// nicer. However, if you are supplying pixel-based data the scale
        /// value can be used to determine whether to use a pixel resource
        /// with higher resolution data.
        /// 
        /// The scale of a window may change during runtime, if this happens
        /// a configure event will be sent to the toplevel window.
        get {
            let rv = Int(gdk_window_get_scale_factor(window_ptr))
            return rv
        }
    }

    /// Gets the `GdkScreen` associated with a `GdkWindow`.
    @inlinable var screen: ScreenRef! {
        /// Gets the `GdkScreen` associated with a `GdkWindow`.
        get {
            let rv = ScreenRef(gconstpointer: gconstpointer(gdk_window_get_screen(window_ptr)))
            return rv
        }
    }

    /// Gets the bitwise OR of the currently active window state flags,
    /// from the `GdkWindowState` enumeration.
    @inlinable var state: WindowState {
        /// Gets the bitwise OR of the currently active window state flags,
        /// from the `GdkWindowState` enumeration.
        get {
            let rv = WindowState(gdk_window_get_state(window_ptr))
            return rv
        }
    }

    /// Returns `true` if the window is aware of the existence of multiple
    /// devices.
    @inlinable var supportMultidevice: Bool {
        /// Returns `true` if the window is aware of the existence of multiple
        /// devices.
        get {
            let rv = ((gdk_window_get_support_multidevice(window_ptr)) != 0)
            return rv
        }
        /// This function will enable multidevice features in `window`.
        /// 
        /// Multidevice aware windows will need to handle properly multiple,
        /// per device enter/leave events, device grabs and grab ownerships.
        nonmutating set {
            gdk_window_set_support_multidevice(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the toplevel window that’s an ancestor of `window`.
    /// 
    /// Any window type but `GDK_WINDOW_CHILD` is considered a
    /// toplevel window, as is a `GDK_WINDOW_CHILD` window that
    /// has a root window as parent.
    /// 
    /// Note that you should use `gdk_window_get_effective_toplevel()` when
    /// you want to get to a window’s toplevel as seen on screen, because
    /// `gdk_window_get_toplevel()` will most likely not do what you expect
    /// if there are offscreen windows in the hierarchy.
    @inlinable var toplevel: WindowRef! {
        /// Gets the toplevel window that’s an ancestor of `window`.
        /// 
        /// Any window type but `GDK_WINDOW_CHILD` is considered a
        /// toplevel window, as is a `GDK_WINDOW_CHILD` window that
        /// has a root window as parent.
        /// 
        /// Note that you should use `gdk_window_get_effective_toplevel()` when
        /// you want to get to a window’s toplevel as seen on screen, because
        /// `gdk_window_get_toplevel()` will most likely not do what you expect
        /// if there are offscreen windows in the hierarchy.
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_window_get_toplevel(window_ptr))) else { return nil }
            return rv
        }
    }

    /// This function returns the type hint set for a window.
    @inlinable var typeHint: GdkWindowTypeHint {
        /// This function returns the type hint set for a window.
        get {
            let rv = gdk_window_get_type_hint(window_ptr)
            return rv
        }
        /// The application can use this call to provide a hint to the window
        /// manager about the functionality of a window. The window manager
        /// can use this information when determining the decoration and behaviour
        /// of the window.
        /// 
        /// The hint must be set before the window is mapped.
        nonmutating set {
            gdk_window_set_type_hint(window_ptr, newValue)
        }
    }

    /// Transfers ownership of the update area from `window` to the caller
    /// of the function. That is, after calling this function, `window` will
    /// no longer have an invalid/dirty region; the update area is removed
    /// from `window` and handed to you. If a window has no update area,
    /// `gdk_window_get_update_area()` returns `nil`. You are responsible for
    /// calling `cairo_region_destroy()` on the returned region if it’s non-`nil`.
    @inlinable var updateArea: Cairo.RegionRef! {
        /// Transfers ownership of the update area from `window` to the caller
        /// of the function. That is, after calling this function, `window` will
        /// no longer have an invalid/dirty region; the update area is removed
        /// from `window` and handed to you. If a window has no update area,
        /// `gdk_window_get_update_area()` returns `nil`. You are responsible for
        /// calling `cairo_region_destroy()` on the returned region if it’s non-`nil`.
        get {
            let rv = Cairo.RegionRef(gdk_window_get_update_area(window_ptr))
            return rv
        }
    }

    /// Computes the region of the `window` that is potentially visible.
    /// This does not necessarily take into account if the window is
    /// obscured by other windows, but no area outside of this region
    /// is visible.
    @inlinable var visibleRegion: Cairo.RegionRef! {
        /// Computes the region of the `window` that is potentially visible.
        /// This does not necessarily take into account if the window is
        /// obscured by other windows, but no area outside of this region
        /// is visible.
        get {
            let rv = Cairo.RegionRef(gdk_window_get_visible_region(window_ptr))
            return rv
        }
    }

    /// Gets the `GdkVisual` describing the pixel format of `window`.
    @inlinable var visual: VisualRef! {
        /// Gets the `GdkVisual` describing the pixel format of `window`.
        get {
            let rv = VisualRef(gconstpointer: gconstpointer(gdk_window_get_visual(window_ptr)))
            return rv
        }
    }

    /// Returns the width of the given `window`.
    /// 
    /// On the X11 platform the returned size is the size reported in the
    /// most-recently-processed configure event, rather than the current
    /// size on the X server.
    @inlinable var width: Int {
        /// Returns the width of the given `window`.
        /// 
        /// On the X11 platform the returned size is the size reported in the
        /// most-recently-processed configure event, rather than the current
        /// size on the X server.
        get {
            let rv = Int(gdk_window_get_width(window_ptr))
            return rv
        }
    }

    /// Gets the type of the window. See `GdkWindowType`.
    @inlinable var windowType: GdkWindowType {
        /// Gets the type of the window. See `GdkWindowType`.
        get {
            let rv = gdk_window_get_window_type(window_ptr)
            return rv
        }
    }


}



