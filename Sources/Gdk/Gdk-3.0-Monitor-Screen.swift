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

// MARK: - Monitor Class

/// The `MonitorProtocol` protocol exposes the methods and properties of an underlying `GdkMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Monitor`.
/// Alternatively, use `MonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GdkMonitor objects represent the individual outputs that are
/// associated with a `GdkDisplay`. GdkDisplay has APIs to enumerate
/// monitors with `gdk_display_get_n_monitors()` and `gdk_display_get_monitor()`, and
/// to find particular monitors with `gdk_display_get_primary_monitor()` or
/// `gdk_display_get_monitor_at_window()`.
/// 
/// GdkMonitor was introduced in GTK+ 3.22 and supersedes earlier
/// APIs in GdkScreen to obtain monitor-related information.
public protocol MonitorProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkMonitor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkMonitor` instance.
    var monitor_ptr: UnsafeMutablePointer<GdkMonitor>! { get }

}

/// The `MonitorRef` type acts as a lightweight Swift reference to an underlying `GdkMonitor` instance.
/// It exposes methods that can operate on this data type through `MonitorProtocol` conformance.
/// Use `MonitorRef` only as an `unowned` reference to an existing `GdkMonitor` instance.
///
/// GdkMonitor objects represent the individual outputs that are
/// associated with a `GdkDisplay`. GdkDisplay has APIs to enumerate
/// monitors with `gdk_display_get_n_monitors()` and `gdk_display_get_monitor()`, and
/// to find particular monitors with `gdk_display_get_primary_monitor()` or
/// `gdk_display_get_monitor_at_window()`.
/// 
/// GdkMonitor was introduced in GTK+ 3.22 and supersedes earlier
/// APIs in GdkScreen to obtain monitor-related information.
public struct MonitorRef: MonitorProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MonitorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkMonitor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkMonitor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkMonitor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkMonitor>?) {
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

    /// Reference intialiser for a related type that implements `MonitorProtocol`
    @inlinable init<T: MonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MonitorProtocol>(_ other: T) -> MonitorRef { MonitorRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Monitor` type acts as a reference-counted owner of an underlying `GdkMonitor` instance.
/// It provides the methods that can operate on this data type through `MonitorProtocol` conformance.
/// Use `Monitor` as a strong reference or owner of a `GdkMonitor` instance.
///
/// GdkMonitor objects represent the individual outputs that are
/// associated with a `GdkDisplay`. GdkDisplay has APIs to enumerate
/// monitors with `gdk_display_get_n_monitors()` and `gdk_display_get_monitor()`, and
/// to find particular monitors with `gdk_display_get_primary_monitor()` or
/// `gdk_display_get_monitor_at_window()`.
/// 
/// GdkMonitor was introduced in GTK+ 3.22 and supersedes earlier
/// APIs in GdkScreen to obtain monitor-related information.
open class Monitor: GLibObject.Object, MonitorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Monitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkMonitor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Monitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkMonitor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Monitor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Monitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Monitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Monitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkMonitor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkMonitor`.
    /// i.e., ownership is transferred to the `Monitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkMonitor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MonitorProtocol`
    /// Will retain `GdkMonitor`.
    /// - Parameter other: an instance of a related type that implements `MonitorProtocol`
    @inlinable public init<T: MonitorProtocol>(monitor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MonitorPropertyName: String, PropertyNameProtocol {
    case display = "display"
    case geometry = "geometry"
    case heightMm = "height-mm"
    case manufacturer = "manufacturer"
    case model = "model"
    case refreshRate = "refresh-rate"
    case scaleFactor = "scale-factor"
    case subpixelLayout = "subpixel-layout"
    case widthMm = "width-mm"
    case workarea = "workarea"
}

public extension MonitorProtocol {
    /// Bind a `MonitorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MonitorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Monitor property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MonitorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Monitor property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MonitorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Monitor
public extension MonitorProtocol {
    /// - Note: Representation of signal named `invalidate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onInvalidate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MonitorRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "invalidate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::display`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::display", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::geometry`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyGeometry(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::geometry", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::height-mm`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHeightMm(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::height-mm", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::manufacturer`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyManufacturer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::manufacturer", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::model`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyModel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::model", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::refresh-rate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRefreshRate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::refresh-rate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::scale-factor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyScaleFactor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::scale-factor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::subpixel-layout`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySubpixelLayout(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::subpixel-layout", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::width-mm`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWidthMm(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::width-mm", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::workarea`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWorkarea(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::workarea", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Monitor Class: MonitorProtocol extension (methods and fields)
public extension MonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkMonitor` instance.
    @inlinable var monitor_ptr: UnsafeMutablePointer<GdkMonitor>! { return ptr?.assumingMemoryBound(to: GdkMonitor.self) }

    /// Gets the display that this monitor belongs to.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_monitor_get_display(monitor_ptr)))
        return rv
    }

    /// Retrieves the size and position of an individual monitor within the
    /// display coordinate space. The returned geometry is in  ”application pixels”,
    /// not in ”device pixels” (see `gdk_monitor_get_scale_factor()`).
    @inlinable func get<RectangleT: RectangleProtocol>(geometry: RectangleT) {
        gdk_monitor_get_geometry(monitor_ptr, geometry.rectangle_ptr)
    
    }

    /// Gets the height in millimeters of the monitor.
    @inlinable func getHeightMm() -> Int {
        let rv = Int(gdk_monitor_get_height_mm(monitor_ptr))
        return rv
    }

    /// Gets the name or PNP ID of the monitor's manufacturer, if available.
    /// 
    /// Note that this value might also vary depending on actual
    /// display backend.
    /// 
    /// PNP ID registry is located at https://uefi.org/pnp_id_list
    @inlinable func getManufacturer() -> String! {
        let rv = gdk_monitor_get_manufacturer(monitor_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the a string identifying the monitor model, if available.
    @inlinable func getModel() -> String! {
        let rv = gdk_monitor_get_model(monitor_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the refresh rate of the monitor, if available.
    /// 
    /// The value is in milli-Hertz, so a refresh rate of 60Hz
    /// is returned as 60000.
    @inlinable func getRefreshRate() -> Int {
        let rv = Int(gdk_monitor_get_refresh_rate(monitor_ptr))
        return rv
    }

    /// Gets the internal scale factor that maps from monitor coordinates
    /// to the actual device pixels. On traditional systems this is 1, but
    /// on very high density outputs this can be a higher value (often 2).
    /// 
    /// This can be used if you want to create pixel based data for a
    /// particular monitor, but most of the time you’re drawing to a window
    /// where it is better to use `gdk_window_get_scale_factor()` instead.
    @inlinable func getScaleFactor() -> Int {
        let rv = Int(gdk_monitor_get_scale_factor(monitor_ptr))
        return rv
    }

    /// Gets information about the layout of red, green and blue
    /// primaries for each pixel in this monitor, if available.
    @inlinable func getSubpixelLayout() -> GdkSubpixelLayout {
        let rv = gdk_monitor_get_subpixel_layout(monitor_ptr)
        return rv
    }

    /// Gets the width in millimeters of the monitor.
    @inlinable func getWidthMm() -> Int {
        let rv = Int(gdk_monitor_get_width_mm(monitor_ptr))
        return rv
    }

    /// Retrieves the size and position of the “work area” on a monitor
    /// within the display coordinate space. The returned geometry is in
    /// ”application pixels”, not in ”device pixels” (see
    /// `gdk_monitor_get_scale_factor()`).
    /// 
    /// The work area should be considered when positioning menus and
    /// similar popups, to avoid placing them below panels, docks or other
    /// desktop components.
    /// 
    /// Note that not all backends may have a concept of workarea. This
    /// function will return the monitor geometry if a workarea is not
    /// available, or does not apply.
    @inlinable func get<RectangleT: RectangleProtocol>(workarea: RectangleT) {
        gdk_monitor_get_workarea(monitor_ptr, workarea.rectangle_ptr)
    
    }
    @inlinable var display: DisplayRef! {
        /// Gets the display that this monitor belongs to.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_monitor_get_display(monitor_ptr)))
            return rv
        }
    }

    /// Gets the height in millimeters of the monitor.
    @inlinable var heightMm: Int {
        /// Gets the height in millimeters of the monitor.
        get {
            let rv = Int(gdk_monitor_get_height_mm(monitor_ptr))
            return rv
        }
    }

    /// Gets whether this monitor should be considered primary
    /// (see `gdk_display_get_primary_monitor()`).
    @inlinable var isPrimary: Bool {
        /// Gets whether this monitor should be considered primary
        /// (see `gdk_display_get_primary_monitor()`).
        get {
            let rv = ((gdk_monitor_is_primary(monitor_ptr)) != 0)
            return rv
        }
    }

    @inlinable var manufacturer: String! {
        /// Gets the name or PNP ID of the monitor's manufacturer, if available.
        /// 
        /// Note that this value might also vary depending on actual
        /// display backend.
        /// 
        /// PNP ID registry is located at https://uefi.org/pnp_id_list
        get {
            let rv = gdk_monitor_get_manufacturer(monitor_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var model: String! {
        /// Gets the a string identifying the monitor model, if available.
        get {
            let rv = gdk_monitor_get_model(monitor_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the refresh rate of the monitor, if available.
    /// 
    /// The value is in milli-Hertz, so a refresh rate of 60Hz
    /// is returned as 60000.
    @inlinable var refreshRate: Int {
        /// Gets the refresh rate of the monitor, if available.
        /// 
        /// The value is in milli-Hertz, so a refresh rate of 60Hz
        /// is returned as 60000.
        get {
            let rv = Int(gdk_monitor_get_refresh_rate(monitor_ptr))
            return rv
        }
    }

    /// Gets the internal scale factor that maps from monitor coordinates
    /// to the actual device pixels. On traditional systems this is 1, but
    /// on very high density outputs this can be a higher value (often 2).
    /// 
    /// This can be used if you want to create pixel based data for a
    /// particular monitor, but most of the time you’re drawing to a window
    /// where it is better to use `gdk_window_get_scale_factor()` instead.
    @inlinable var scaleFactor: Int {
        /// Gets the internal scale factor that maps from monitor coordinates
        /// to the actual device pixels. On traditional systems this is 1, but
        /// on very high density outputs this can be a higher value (often 2).
        /// 
        /// This can be used if you want to create pixel based data for a
        /// particular monitor, but most of the time you’re drawing to a window
        /// where it is better to use `gdk_window_get_scale_factor()` instead.
        get {
            let rv = Int(gdk_monitor_get_scale_factor(monitor_ptr))
            return rv
        }
    }

    /// Gets information about the layout of red, green and blue
    /// primaries for each pixel in this monitor, if available.
    @inlinable var subpixelLayout: GdkSubpixelLayout {
        /// Gets information about the layout of red, green and blue
        /// primaries for each pixel in this monitor, if available.
        get {
            let rv = gdk_monitor_get_subpixel_layout(monitor_ptr)
            return rv
        }
    }

    /// Gets the width in millimeters of the monitor.
    @inlinable var widthMm: Int {
        /// Gets the width in millimeters of the monitor.
        get {
            let rv = Int(gdk_monitor_get_width_mm(monitor_ptr))
            return rv
        }
    }


}



// MARK: - Screen Class

/// The `ScreenProtocol` protocol exposes the methods and properties of an underlying `GdkScreen` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Screen`.
/// Alternatively, use `ScreenRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkScreen` objects are the GDK representation of the screen on
/// which windows can be displayed and on which the pointer moves.
/// X originally identified screens with physical screens, but
/// nowadays it is more common to have a single `GdkScreen` which
/// combines several physical monitors (see `gdk_screen_get_n_monitors()`).
/// 
/// GdkScreen is used throughout GDK and GTK+ to specify which screen
/// the top level windows are to be displayed on. it is also used to
/// query the screen specification and default settings such as
/// the default visual (`gdk_screen_get_system_visual()`), the dimensions
/// of the physical monitors (`gdk_screen_get_monitor_geometry()`), etc.
public protocol ScreenProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkScreen` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkScreen` instance.
    var screen_ptr: UnsafeMutablePointer<GdkScreen>! { get }

}

/// The `ScreenRef` type acts as a lightweight Swift reference to an underlying `GdkScreen` instance.
/// It exposes methods that can operate on this data type through `ScreenProtocol` conformance.
/// Use `ScreenRef` only as an `unowned` reference to an existing `GdkScreen` instance.
///
/// `GdkScreen` objects are the GDK representation of the screen on
/// which windows can be displayed and on which the pointer moves.
/// X originally identified screens with physical screens, but
/// nowadays it is more common to have a single `GdkScreen` which
/// combines several physical monitors (see `gdk_screen_get_n_monitors()`).
/// 
/// GdkScreen is used throughout GDK and GTK+ to specify which screen
/// the top level windows are to be displayed on. it is also used to
/// query the screen specification and default settings such as
/// the default visual (`gdk_screen_get_system_visual()`), the dimensions
/// of the physical monitors (`gdk_screen_get_monitor_geometry()`), etc.
public struct ScreenRef: ScreenProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkScreen` instance.
    /// For type-safe access, use the generated, typed pointer `screen_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScreenRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkScreen>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkScreen>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkScreen>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkScreen>?) {
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

    /// Reference intialiser for a related type that implements `ScreenProtocol`
    @inlinable init<T: ScreenProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ScreenProtocol>(_ other: T) -> ScreenRef { ScreenRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default screen for the default display. (See
    /// gdk_display_get_default ()).
    @inlinable static func getDefault() -> ScreenRef! {
        guard let rv = ScreenRef(gconstpointer: gconstpointer(gdk_screen_get_default())) else { return nil }
        return rv
    }
}

/// The `Screen` type acts as a reference-counted owner of an underlying `GdkScreen` instance.
/// It provides the methods that can operate on this data type through `ScreenProtocol` conformance.
/// Use `Screen` as a strong reference or owner of a `GdkScreen` instance.
///
/// `GdkScreen` objects are the GDK representation of the screen on
/// which windows can be displayed and on which the pointer moves.
/// X originally identified screens with physical screens, but
/// nowadays it is more common to have a single `GdkScreen` which
/// combines several physical monitors (see `gdk_screen_get_n_monitors()`).
/// 
/// GdkScreen is used throughout GDK and GTK+ to specify which screen
/// the top level windows are to be displayed on. it is also used to
/// query the screen specification and default settings such as
/// the default visual (`gdk_screen_get_system_visual()`), the dimensions
/// of the physical monitors (`gdk_screen_get_monitor_geometry()`), etc.
open class Screen: GLibObject.Object, ScreenProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Screen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkScreen>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Screen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkScreen>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Screen` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Screen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Screen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkScreen>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Screen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkScreen>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkScreen`.
    /// i.e., ownership is transferred to the `Screen` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkScreen>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ScreenProtocol`
    /// Will retain `GdkScreen`.
    /// - Parameter other: an instance of a related type that implements `ScreenProtocol`
    @inlinable public init<T: ScreenProtocol>(screen other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScreenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the default screen for the default display. (See
    /// gdk_display_get_default ()).
    @inlinable public static func getDefault() -> Screen! {
        guard let rv = Screen(gconstpointer: gconstpointer(gdk_screen_get_default())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ScreenPropertyName: String, PropertyNameProtocol {
    case fontOptions = "font-options"
    case resolution = "resolution"
}

public extension ScreenProtocol {
    /// Bind a `ScreenPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ScreenPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Screen property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ScreenPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Screen property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ScreenPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Screen
public extension ScreenProtocol {
    /// The `composited`-changed signal is emitted when the composited
    /// status of the screen changes
    /// - Note: Representation of signal named `composited-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onCompositedChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScreenRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ScreenRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScreenRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "composited-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `monitors`-changed signal is emitted when the number, size
    /// or position of the monitors attached to the screen change.
    /// 
    /// Only for X11 and OS X for now. A future implementation for Win32
    /// may be a possibility.
    /// - Note: Representation of signal named `monitors-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onMonitorsChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScreenRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ScreenRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScreenRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "monitors-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `size`-changed signal is emitted when the pixel width or
    /// height of a screen changes.
    /// - Note: Representation of signal named `size-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSizeChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScreenRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ScreenRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScreenRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "size-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::font-options`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFontOptions(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScreenRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ScreenRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScreenRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::font-options", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::resolution`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyResolution(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScreenRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ScreenRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScreenRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::resolution", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Screen Class: ScreenProtocol extension (methods and fields)
public extension ScreenProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkScreen` instance.
    @inlinable var screen_ptr: UnsafeMutablePointer<GdkScreen>! { return ptr?.assumingMemoryBound(to: GdkScreen.self) }

    /// Returns the screen’s currently active window.
    /// 
    /// On X11, this is done by inspecting the _NET_ACTIVE_WINDOW property
    /// on the root window, as described in the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
    /// If there is no currently currently active
    /// window, or the window manager does not support the
    /// _NET_ACTIVE_WINDOW hint, this function returns `nil`.
    /// 
    /// On other platforms, this function may return `nil`, depending on whether
    /// it is implementable on that platform.
    /// 
    /// The returned window should be unrefed using `g_object_unref()` when
    /// no longer needed.
    ///
    /// **get_active_window is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func getActiveWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_screen_get_active_window(screen_ptr)))
        return rv
    }

    /// Gets the display to which the `screen` belongs.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_screen_get_display(screen_ptr)))
        return rv
    }

    /// Gets any options previously set with `gdk_screen_set_font_options()`.
    @inlinable func getFontOptions() -> Cairo.FontOptionsRef! {
        let rv = Cairo.FontOptionsRef(gdk_screen_get_font_options(screen_ptr))
        return rv
    }

    /// Gets the height of `screen` in pixels. The returned size is in
    /// ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    ///
    /// **get_height is deprecated:**
    /// Use per-monitor information instead
    @available(*, deprecated) @inlinable func getHeight() -> Int {
        let rv = Int(gdk_screen_get_height(screen_ptr))
        return rv
    }

    /// Returns the height of `screen` in millimeters.
    /// 
    /// Note that this value is somewhat ill-defined when the screen
    /// has multiple monitors of different resolution. It is recommended
    /// to use the monitor dimensions instead.
    ///
    /// **get_height_mm is deprecated:**
    /// Use per-monitor information instead
    @available(*, deprecated) @inlinable func getHeightMm() -> Int {
        let rv = Int(gdk_screen_get_height_mm(screen_ptr))
        return rv
    }

    /// Returns the monitor number in which the point (`x`,`y`) is located.
    ///
    /// **get_monitor_at_point is deprecated:**
    /// Use gdk_display_get_monitor_at_point() instead
    @available(*, deprecated) @inlinable func getMonitorAtPoint(x: Int, y: Int) -> Int {
        let rv = Int(gdk_screen_get_monitor_at_point(screen_ptr, gint(x), gint(y)))
        return rv
    }

    /// Returns the number of the monitor in which the largest area of the
    /// bounding rectangle of `window` resides.
    ///
    /// **get_monitor_at_window is deprecated:**
    /// Use gdk_display_get_monitor_at_window() instead
    @available(*, deprecated) @inlinable func getMonitorAt<WindowT: WindowProtocol>(window: WindowT) -> Int {
        let rv = Int(gdk_screen_get_monitor_at_window(screen_ptr, window.window_ptr))
        return rv
    }

    /// Retrieves the `GdkRectangle` representing the size and position of
    /// the individual monitor within the entire screen area. The returned
    /// geometry is in ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    /// 
    /// Monitor numbers start at 0. To obtain the number of monitors of
    /// `screen`, use `gdk_screen_get_n_monitors()`.
    /// 
    /// Note that the size of the entire screen area can be retrieved via
    /// `gdk_screen_get_width()` and `gdk_screen_get_height()`.
    ///
    /// **get_monitor_geometry is deprecated:**
    /// Use gdk_monitor_get_geometry() instead
    @available(*, deprecated) @inlinable func getMonitorGeometry(monitorNum: Int, dest: RectangleRef? = nil) {
        gdk_screen_get_monitor_geometry(screen_ptr, gint(monitorNum), dest?.rectangle_ptr)
    
    }
    /// Retrieves the `GdkRectangle` representing the size and position of
    /// the individual monitor within the entire screen area. The returned
    /// geometry is in ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    /// 
    /// Monitor numbers start at 0. To obtain the number of monitors of
    /// `screen`, use `gdk_screen_get_n_monitors()`.
    /// 
    /// Note that the size of the entire screen area can be retrieved via
    /// `gdk_screen_get_width()` and `gdk_screen_get_height()`.
    ///
    /// **get_monitor_geometry is deprecated:**
    /// Use gdk_monitor_get_geometry() instead
    @available(*, deprecated) @inlinable func getMonitorGeometry<RectangleT: RectangleProtocol>(monitorNum: Int, dest: RectangleT?) {
        gdk_screen_get_monitor_geometry(screen_ptr, gint(monitorNum), dest?.rectangle_ptr)
    
    }

    /// Gets the height in millimeters of the specified monitor.
    ///
    /// **get_monitor_height_mm is deprecated:**
    /// Use gdk_monitor_get_height_mm() instead
    @available(*, deprecated) @inlinable func getMonitorHeightMm(monitorNum: Int) -> Int {
        let rv = Int(gdk_screen_get_monitor_height_mm(screen_ptr, gint(monitorNum)))
        return rv
    }

    /// Returns the output name of the specified monitor.
    /// Usually something like VGA, DVI, or TV, not the actual
    /// product name of the display device.
    ///
    /// **get_monitor_plug_name is deprecated:**
    /// Use gdk_monitor_get_model() instead
    @available(*, deprecated) @inlinable func getMonitorPlugName(monitorNum: Int) -> String! {
        let rv = gdk_screen_get_monitor_plug_name(screen_ptr, gint(monitorNum)).map({ String(cString: $0) })
        return rv
    }

    /// Returns the internal scale factor that maps from monitor coordinates
    /// to the actual device pixels. On traditional systems this is 1, but
    /// on very high density outputs this can be a higher value (often 2).
    /// 
    /// This can be used if you want to create pixel based data for a
    /// particular monitor, but most of the time you’re drawing to a window
    /// where it is better to use `gdk_window_get_scale_factor()` instead.
    ///
    /// **get_monitor_scale_factor is deprecated:**
    /// Use gdk_monitor_get_scale_factor() instead
    @available(*, deprecated) @inlinable func getMonitorScaleFactor(monitorNum: Int) -> Int {
        let rv = Int(gdk_screen_get_monitor_scale_factor(screen_ptr, gint(monitorNum)))
        return rv
    }

    /// Gets the width in millimeters of the specified monitor, if available.
    ///
    /// **get_monitor_width_mm is deprecated:**
    /// Use gdk_monitor_get_width_mm() instead
    @available(*, deprecated) @inlinable func getMonitorWidthMm(monitorNum: Int) -> Int {
        let rv = Int(gdk_screen_get_monitor_width_mm(screen_ptr, gint(monitorNum)))
        return rv
    }

    /// Retrieves the `GdkRectangle` representing the size and position of
    /// the “work area” on a monitor within the entire screen area. The returned
    /// geometry is in ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    /// 
    /// The work area should be considered when positioning menus and
    /// similar popups, to avoid placing them below panels, docks or other
    /// desktop components.
    /// 
    /// Note that not all backends may have a concept of workarea. This
    /// function will return the monitor geometry if a workarea is not
    /// available, or does not apply.
    /// 
    /// Monitor numbers start at 0. To obtain the number of monitors of
    /// `screen`, use `gdk_screen_get_n_monitors()`.
    ///
    /// **get_monitor_workarea is deprecated:**
    /// Use gdk_monitor_get_workarea() instead
    @available(*, deprecated) @inlinable func getMonitorWorkarea(monitorNum: Int, dest: RectangleRef? = nil) {
        gdk_screen_get_monitor_workarea(screen_ptr, gint(monitorNum), dest?.rectangle_ptr)
    
    }
    /// Retrieves the `GdkRectangle` representing the size and position of
    /// the “work area” on a monitor within the entire screen area. The returned
    /// geometry is in ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    /// 
    /// The work area should be considered when positioning menus and
    /// similar popups, to avoid placing them below panels, docks or other
    /// desktop components.
    /// 
    /// Note that not all backends may have a concept of workarea. This
    /// function will return the monitor geometry if a workarea is not
    /// available, or does not apply.
    /// 
    /// Monitor numbers start at 0. To obtain the number of monitors of
    /// `screen`, use `gdk_screen_get_n_monitors()`.
    ///
    /// **get_monitor_workarea is deprecated:**
    /// Use gdk_monitor_get_workarea() instead
    @available(*, deprecated) @inlinable func getMonitorWorkarea<RectangleT: RectangleProtocol>(monitorNum: Int, dest: RectangleT?) {
        gdk_screen_get_monitor_workarea(screen_ptr, gint(monitorNum), dest?.rectangle_ptr)
    
    }

    /// Returns the number of monitors which `screen` consists of.
    ///
    /// **get_n_monitors is deprecated:**
    /// Use gdk_display_get_n_monitors() instead
    @available(*, deprecated) @inlinable func getNMonitors() -> Int {
        let rv = Int(gdk_screen_get_n_monitors(screen_ptr))
        return rv
    }

    /// Gets the index of `screen` among the screens in the display
    /// to which it belongs. (See `gdk_screen_get_display()`)
    ///
    /// **get_number is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func getNumber() -> Int {
        let rv = Int(gdk_screen_get_number(screen_ptr))
        return rv
    }

    /// Gets the primary monitor for `screen`.  The primary monitor
    /// is considered the monitor where the “main desktop” lives.
    /// While normal application windows typically allow the window
    /// manager to place the windows, specialized desktop applications
    /// such as panels should place themselves on the primary monitor.
    /// 
    /// If no primary monitor is configured by the user, the return value
    /// will be 0, defaulting to the first monitor.
    ///
    /// **get_primary_monitor is deprecated:**
    /// Use gdk_display_get_primary_monitor() instead
    @available(*, deprecated) @inlinable func getPrimaryMonitor() -> Int {
        let rv = Int(gdk_screen_get_primary_monitor(screen_ptr))
        return rv
    }

    /// Gets the resolution for font handling on the screen; see
    /// `gdk_screen_set_resolution()` for full details.
    @inlinable func getResolution() -> Double {
        let rv = Double(gdk_screen_get_resolution(screen_ptr))
        return rv
    }

    /// Gets a visual to use for creating windows with an alpha channel.
    /// The windowing system on which GTK+ is running
    /// may not support this capability, in which case `nil` will
    /// be returned. Even if a non-`nil` value is returned, its
    /// possible that the window’s alpha channel won’t be honored
    /// when displaying the window on the screen: in particular, for
    /// X an appropriate windowing manager and compositing manager
    /// must be running to provide appropriate display.
    /// 
    /// This functionality is not implemented in the Windows backend.
    /// 
    /// For setting an overall opacity for a top-level window, see
    /// `gdk_window_set_opacity()`.
    @inlinable func getRgbaVisual() -> VisualRef! {
        let rv = VisualRef(gconstpointer: gconstpointer(gdk_screen_get_rgba_visual(screen_ptr)))
        return rv
    }

    /// Gets the root window of `screen`.
    @inlinable func getRootWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_screen_get_root_window(screen_ptr)))
        return rv
    }

    /// Retrieves a desktop-wide setting such as double-click time
    /// for the `GdkScreen` `screen`.
    /// 
    /// FIXME needs a list of valid settings here, or a link to
    /// more information.
    @inlinable func getSetting<ValueT: GLibObject.ValueProtocol>(name: UnsafePointer<gchar>!, value: ValueT) -> Bool {
        let rv = ((gdk_screen_get_setting(screen_ptr, name, value.value_ptr)) != 0)
        return rv
    }

    /// Get the system’s default visual for `screen`.
    /// This is the visual for the root window of the display.
    /// The return value should not be freed.
    @inlinable func getSystemVisual() -> VisualRef! {
        let rv = VisualRef(gconstpointer: gconstpointer(gdk_screen_get_system_visual(screen_ptr)))
        return rv
    }

    /// Obtains a list of all toplevel windows known to GDK on the screen `screen`.
    /// A toplevel window is a child of the root window (see
    /// `gdk_get_default_root_window()`).
    /// 
    /// The returned list should be freed with `g_list_free()`, but
    /// its elements need not be freed.
    @inlinable func getToplevelWindows() -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_screen_get_toplevel_windows(screen_ptr))
        return rv
    }

    /// Gets the width of `screen` in pixels. The returned size is in
    /// ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    ///
    /// **get_width is deprecated:**
    /// Use per-monitor information instead
    @available(*, deprecated) @inlinable func getWidth() -> Int {
        let rv = Int(gdk_screen_get_width(screen_ptr))
        return rv
    }

    /// Gets the width of `screen` in millimeters.
    /// 
    /// Note that this value is somewhat ill-defined when the screen
    /// has multiple monitors of different resolution. It is recommended
    /// to use the monitor dimensions instead.
    ///
    /// **get_width_mm is deprecated:**
    /// Use per-monitor information instead
    @available(*, deprecated) @inlinable func getWidthMm() -> Int {
        let rv = Int(gdk_screen_get_width_mm(screen_ptr))
        return rv
    }

    /// Returns a `GList` of `GdkWindows` representing the current
    /// window stack.
    /// 
    /// On X11, this is done by inspecting the _NET_CLIENT_LIST_STACKING
    /// property on the root window, as described in the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
    /// If the window manager does not support the
    /// _NET_CLIENT_LIST_STACKING hint, this function returns `nil`.
    /// 
    /// On other platforms, this function may return `nil`, depending on whether
    /// it is implementable on that platform.
    /// 
    /// The returned list is newly allocated and owns references to the
    /// windows it contains, so it should be freed using `g_list_free()` and
    /// its windows unrefed using `g_object_unref()` when no longer needed.
    @inlinable func getWindowStack() -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_screen_get_window_stack(screen_ptr))
        return rv
    }

    /// Lists the available visuals for the specified `screen`.
    /// A visual describes a hardware image data format.
    /// For example, a visual might support 24-bit color, or 8-bit color,
    /// and might expect pixels to be in a certain format.
    /// 
    /// Call `g_list_free()` on the return value when you’re finished with it.
    @inlinable func listVisuals() -> GLib.ListRef! {
        let rv = GLib.ListRef(gdk_screen_list_visuals(screen_ptr))
        return rv
    }

    /// Determines the name to pass to `gdk_display_open()` to get
    /// a `GdkDisplay` with this screen as the default screen.
    ///
    /// **make_display_name is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func makeDisplayName() -> String! {
        let rv = gdk_screen_make_display_name(screen_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets the default font options for the screen. These
    /// options will be set on any `PangoContext`’s newly created
    /// with `gdk_pango_context_get_for_screen()`. Changing the
    /// default set of font options does not affect contexts that
    /// have already been created.
    @inlinable func setFont(options: Cairo.FontOptionsRef? = nil) {
        gdk_screen_set_font_options(screen_ptr, options?._ptr)
    
    }
    /// Sets the default font options for the screen. These
    /// options will be set on any `PangoContext`’s newly created
    /// with `gdk_pango_context_get_for_screen()`. Changing the
    /// default set of font options does not affect contexts that
    /// have already been created.
    @inlinable func setFont<FontOptionsT: Cairo.FontOptionsProtocol>(options: FontOptionsT?) {
        gdk_screen_set_font_options(screen_ptr, options?._ptr)
    
    }

    /// Sets the resolution for font handling on the screen. This is a
    /// scale factor between points specified in a `PangoFontDescription`
    /// and cairo units. The default value is 96, meaning that a 10 point
    /// font will be 13 units high. (10 * 96. / 72. = 13.3).
    @inlinable func setResolution(dpi: Double) {
        gdk_screen_set_resolution(screen_ptr, gdouble(dpi))
    
    }

    /// Finds the destination window and DND protocol to use at the
    /// given pointer position.
    /// 
    /// This function is called by the drag source to obtain the
    /// `dest_window` and `protocol` parameters for `gdk_drag_motion()`.
    @inlinable func dragFindWindowForScreen<DragContextT: DragContextProtocol, WindowT: WindowProtocol>(context: DragContextT, dragWindow: WindowT, xRoot: Int, yRoot: Int, destWindow: UnsafeMutablePointer<UnsafeMutablePointer<GdkWindow>?>!, `protocol`: UnsafeMutablePointer<GdkDragProtocol>!) {
        gdk_drag_find_window_for_screen(context.drag_context_ptr, dragWindow.window_ptr, screen_ptr, gint(xRoot), gint(yRoot), destWindow, `protocol`)
    
    }

    /// Creates a `PangoContext` for `screen`.
    /// 
    /// The context must be freed when you’re finished with it.
    /// 
    /// When using GTK+, normally you should use `gtk_widget_get_pango_context()`
    /// instead of this function, to get the appropriate context for
    /// the widget you intend to render text onto.
    /// 
    /// The newly created context will have the default font options
    /// (see `cairo_font_options_t`) for the screen; if these options
    /// change it will not be updated. Using `gtk_widget_get_pango_context()`
    /// is more convenient if you want to keep a context around and track
    /// changes to the screen’s font rendering settings.
    @inlinable func pangoContextGetForScreen() -> Pango.ContextRef! {
        let rv = Pango.ContextRef(gdk_pango_context_get_for_screen(screen_ptr))
        return rv
    }
    /// Returns the screen’s currently active window.
    /// 
    /// On X11, this is done by inspecting the _NET_ACTIVE_WINDOW property
    /// on the root window, as described in the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
    /// If there is no currently currently active
    /// window, or the window manager does not support the
    /// _NET_ACTIVE_WINDOW hint, this function returns `nil`.
    /// 
    /// On other platforms, this function may return `nil`, depending on whether
    /// it is implementable on that platform.
    /// 
    /// The returned window should be unrefed using `g_object_unref()` when
    /// no longer needed.
    ///
    /// **get_active_window is deprecated:**
    /// This method is deprecated.
    @inlinable var activeWindow: WindowRef! {
        /// Returns the screen’s currently active window.
        /// 
        /// On X11, this is done by inspecting the _NET_ACTIVE_WINDOW property
        /// on the root window, as described in the
        /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
        /// If there is no currently currently active
        /// window, or the window manager does not support the
        /// _NET_ACTIVE_WINDOW hint, this function returns `nil`.
        /// 
        /// On other platforms, this function may return `nil`, depending on whether
        /// it is implementable on that platform.
        /// 
        /// The returned window should be unrefed using `g_object_unref()` when
        /// no longer needed.
        ///
        /// **get_active_window is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_screen_get_active_window(screen_ptr)))
            return rv
        }
    }

    /// Gets the display to which the `screen` belongs.
    @inlinable var display: DisplayRef! {
        /// Gets the display to which the `screen` belongs.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_screen_get_display(screen_ptr)))
            return rv
        }
    }

    /// Gets any options previously set with `gdk_screen_set_font_options()`.
    @inlinable var fontOptions: Cairo.FontOptionsRef! {
        /// Gets any options previously set with `gdk_screen_set_font_options()`.
        get {
            let rv = Cairo.FontOptionsRef(gdk_screen_get_font_options(screen_ptr))
            return rv
        }
        /// Sets the default font options for the screen. These
        /// options will be set on any `PangoContext`’s newly created
        /// with `gdk_pango_context_get_for_screen()`. Changing the
        /// default set of font options does not affect contexts that
        /// have already been created.
        nonmutating set {
            gdk_screen_set_font_options(screen_ptr, UnsafePointer<cairo_font_options_t>(newValue?._ptr))
        }
    }

    /// Gets the height of `screen` in pixels. The returned size is in
    /// ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    ///
    /// **get_height is deprecated:**
    /// Use per-monitor information instead
    @inlinable var height: Int {
        /// Gets the height of `screen` in pixels. The returned size is in
        /// ”application pixels”, not in ”device pixels” (see
        /// `gdk_screen_get_monitor_scale_factor()`).
        ///
        /// **get_height is deprecated:**
        /// Use per-monitor information instead
        @available(*, deprecated) get {
            let rv = Int(gdk_screen_get_height(screen_ptr))
            return rv
        }
    }

    /// Returns the height of `screen` in millimeters.
    /// 
    /// Note that this value is somewhat ill-defined when the screen
    /// has multiple monitors of different resolution. It is recommended
    /// to use the monitor dimensions instead.
    ///
    /// **get_height_mm is deprecated:**
    /// Use per-monitor information instead
    @inlinable var heightMm: Int {
        /// Returns the height of `screen` in millimeters.
        /// 
        /// Note that this value is somewhat ill-defined when the screen
        /// has multiple monitors of different resolution. It is recommended
        /// to use the monitor dimensions instead.
        ///
        /// **get_height_mm is deprecated:**
        /// Use per-monitor information instead
        @available(*, deprecated) get {
            let rv = Int(gdk_screen_get_height_mm(screen_ptr))
            return rv
        }
    }

    /// Returns whether windows with an RGBA visual can reasonably
    /// be expected to have their alpha channel drawn correctly on
    /// the screen.
    /// 
    /// On X11 this function returns whether a compositing manager is
    /// compositing `screen`.
    @inlinable var isComposited: Bool {
        /// Returns whether windows with an RGBA visual can reasonably
        /// be expected to have their alpha channel drawn correctly on
        /// the screen.
        /// 
        /// On X11 this function returns whether a compositing manager is
        /// compositing `screen`.
        get {
            let rv = ((gdk_screen_is_composited(screen_ptr)) != 0)
            return rv
        }
    }

    /// Returns the number of monitors which `screen` consists of.
    ///
    /// **get_n_monitors is deprecated:**
    /// Use gdk_display_get_n_monitors() instead
    @inlinable var nMonitors: Int {
        /// Returns the number of monitors which `screen` consists of.
        ///
        /// **get_n_monitors is deprecated:**
        /// Use gdk_display_get_n_monitors() instead
        @available(*, deprecated) get {
            let rv = Int(gdk_screen_get_n_monitors(screen_ptr))
            return rv
        }
    }

    /// Gets the index of `screen` among the screens in the display
    /// to which it belongs. (See `gdk_screen_get_display()`)
    ///
    /// **get_number is deprecated:**
    /// This method is deprecated.
    @inlinable var number: Int {
        /// Gets the index of `screen` among the screens in the display
        /// to which it belongs. (See `gdk_screen_get_display()`)
        ///
        /// **get_number is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = Int(gdk_screen_get_number(screen_ptr))
            return rv
        }
    }

    /// Gets the primary monitor for `screen`.  The primary monitor
    /// is considered the monitor where the “main desktop” lives.
    /// While normal application windows typically allow the window
    /// manager to place the windows, specialized desktop applications
    /// such as panels should place themselves on the primary monitor.
    /// 
    /// If no primary monitor is configured by the user, the return value
    /// will be 0, defaulting to the first monitor.
    ///
    /// **get_primary_monitor is deprecated:**
    /// Use gdk_display_get_primary_monitor() instead
    @inlinable var primaryMonitor: Int {
        /// Gets the primary monitor for `screen`.  The primary monitor
        /// is considered the monitor where the “main desktop” lives.
        /// While normal application windows typically allow the window
        /// manager to place the windows, specialized desktop applications
        /// such as panels should place themselves on the primary monitor.
        /// 
        /// If no primary monitor is configured by the user, the return value
        /// will be 0, defaulting to the first monitor.
        ///
        /// **get_primary_monitor is deprecated:**
        /// Use gdk_display_get_primary_monitor() instead
        @available(*, deprecated) get {
            let rv = Int(gdk_screen_get_primary_monitor(screen_ptr))
            return rv
        }
    }

    @inlinable var resolution: Double {
        /// Gets the resolution for font handling on the screen; see
        /// `gdk_screen_set_resolution()` for full details.
        get {
            let rv = Double(gdk_screen_get_resolution(screen_ptr))
            return rv
        }
        /// Sets the resolution for font handling on the screen. This is a
        /// scale factor between points specified in a `PangoFontDescription`
        /// and cairo units. The default value is 96, meaning that a 10 point
        /// font will be 13 units high. (10 * 96. / 72. = 13.3).
        nonmutating set {
            gdk_screen_set_resolution(screen_ptr, gdouble(newValue))
        }
    }

    /// Gets a visual to use for creating windows with an alpha channel.
    /// The windowing system on which GTK+ is running
    /// may not support this capability, in which case `nil` will
    /// be returned. Even if a non-`nil` value is returned, its
    /// possible that the window’s alpha channel won’t be honored
    /// when displaying the window on the screen: in particular, for
    /// X an appropriate windowing manager and compositing manager
    /// must be running to provide appropriate display.
    /// 
    /// This functionality is not implemented in the Windows backend.
    /// 
    /// For setting an overall opacity for a top-level window, see
    /// `gdk_window_set_opacity()`.
    @inlinable var rgbaVisual: VisualRef! {
        /// Gets a visual to use for creating windows with an alpha channel.
        /// The windowing system on which GTK+ is running
        /// may not support this capability, in which case `nil` will
        /// be returned. Even if a non-`nil` value is returned, its
        /// possible that the window’s alpha channel won’t be honored
        /// when displaying the window on the screen: in particular, for
        /// X an appropriate windowing manager and compositing manager
        /// must be running to provide appropriate display.
        /// 
        /// This functionality is not implemented in the Windows backend.
        /// 
        /// For setting an overall opacity for a top-level window, see
        /// `gdk_window_set_opacity()`.
        get {
            let rv = VisualRef(gconstpointer: gconstpointer(gdk_screen_get_rgba_visual(screen_ptr)))
            return rv
        }
    }

    /// Gets the root window of `screen`.
    @inlinable var rootWindow: WindowRef! {
        /// Gets the root window of `screen`.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_screen_get_root_window(screen_ptr)))
            return rv
        }
    }

    /// Get the system’s default visual for `screen`.
    /// This is the visual for the root window of the display.
    /// The return value should not be freed.
    @inlinable var systemVisual: VisualRef! {
        /// Get the system’s default visual for `screen`.
        /// This is the visual for the root window of the display.
        /// The return value should not be freed.
        get {
            let rv = VisualRef(gconstpointer: gconstpointer(gdk_screen_get_system_visual(screen_ptr)))
            return rv
        }
    }

    /// Obtains a list of all toplevel windows known to GDK on the screen `screen`.
    /// A toplevel window is a child of the root window (see
    /// `gdk_get_default_root_window()`).
    /// 
    /// The returned list should be freed with `g_list_free()`, but
    /// its elements need not be freed.
    @inlinable var toplevelWindows: GLib.ListRef! {
        /// Obtains a list of all toplevel windows known to GDK on the screen `screen`.
        /// A toplevel window is a child of the root window (see
        /// `gdk_get_default_root_window()`).
        /// 
        /// The returned list should be freed with `g_list_free()`, but
        /// its elements need not be freed.
        get {
            let rv = GLib.ListRef(gdk_screen_get_toplevel_windows(screen_ptr))
            return rv
        }
    }

    /// Gets the width of `screen` in pixels. The returned size is in
    /// ”application pixels”, not in ”device pixels” (see
    /// `gdk_screen_get_monitor_scale_factor()`).
    ///
    /// **get_width is deprecated:**
    /// Use per-monitor information instead
    @inlinable var width: Int {
        /// Gets the width of `screen` in pixels. The returned size is in
        /// ”application pixels”, not in ”device pixels” (see
        /// `gdk_screen_get_monitor_scale_factor()`).
        ///
        /// **get_width is deprecated:**
        /// Use per-monitor information instead
        @available(*, deprecated) get {
            let rv = Int(gdk_screen_get_width(screen_ptr))
            return rv
        }
    }

    /// Gets the width of `screen` in millimeters.
    /// 
    /// Note that this value is somewhat ill-defined when the screen
    /// has multiple monitors of different resolution. It is recommended
    /// to use the monitor dimensions instead.
    ///
    /// **get_width_mm is deprecated:**
    /// Use per-monitor information instead
    @inlinable var widthMm: Int {
        /// Gets the width of `screen` in millimeters.
        /// 
        /// Note that this value is somewhat ill-defined when the screen
        /// has multiple monitors of different resolution. It is recommended
        /// to use the monitor dimensions instead.
        ///
        /// **get_width_mm is deprecated:**
        /// Use per-monitor information instead
        @available(*, deprecated) get {
            let rv = Int(gdk_screen_get_width_mm(screen_ptr))
            return rv
        }
    }

    /// Returns a `GList` of `GdkWindows` representing the current
    /// window stack.
    /// 
    /// On X11, this is done by inspecting the _NET_CLIENT_LIST_STACKING
    /// property on the root window, as described in the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
    /// If the window manager does not support the
    /// _NET_CLIENT_LIST_STACKING hint, this function returns `nil`.
    /// 
    /// On other platforms, this function may return `nil`, depending on whether
    /// it is implementable on that platform.
    /// 
    /// The returned list is newly allocated and owns references to the
    /// windows it contains, so it should be freed using `g_list_free()` and
    /// its windows unrefed using `g_object_unref()` when no longer needed.
    @inlinable var windowStack: GLib.ListRef! {
        /// Returns a `GList` of `GdkWindows` representing the current
        /// window stack.
        /// 
        /// On X11, this is done by inspecting the _NET_CLIENT_LIST_STACKING
        /// property on the root window, as described in the
        /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
        /// If the window manager does not support the
        /// _NET_CLIENT_LIST_STACKING hint, this function returns `nil`.
        /// 
        /// On other platforms, this function may return `nil`, depending on whether
        /// it is implementable on that platform.
        /// 
        /// The returned list is newly allocated and owns references to the
        /// windows it contains, so it should be freed using `g_list_free()` and
        /// its windows unrefed using `g_object_unref()` when no longer needed.
        get {
            let rv = GLib.ListRef(gdk_screen_get_window_stack(screen_ptr))
            return rv
        }
    }


}


