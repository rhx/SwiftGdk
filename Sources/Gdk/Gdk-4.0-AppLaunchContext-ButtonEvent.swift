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

// MARK: - AppLaunchContext Class

/// The `AppLaunchContextProtocol` protocol exposes the methods and properties of an underlying `GdkAppLaunchContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppLaunchContext`.
/// Alternatively, use `AppLaunchContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GdkAppLaunchContext is an implementation of `GAppLaunchContext` that
/// handles launching an application in a graphical context. It provides
/// startup notification and allows to launch applications on a specific
/// screen or workspace.
/// 
/// ## Launching an application
/// 
/// (C Language Example):
/// ```C
/// GdkAppLaunchContext *context;
/// 
/// context = gdk_display_get_app_launch_context (display);
/// 
/// gdk_app_launch_context_set_display (display);
/// gdk_app_launch_context_set_timestamp (gdk_event_get_time (event));
/// 
/// if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
///   g_warning ("Launching failed: %s\n", error->message);
/// 
/// g_object_unref (context);
/// ```
/// 
public protocol AppLaunchContextProtocol: GIO.AppLaunchContextProtocol {
        /// Untyped pointer to the underlying `GdkAppLaunchContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkAppLaunchContext` instance.
    var app_launch_context_ptr: UnsafeMutablePointer<GdkAppLaunchContext>! { get }

    /// Required Initialiser for types conforming to `AppLaunchContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `AppLaunchContextRef` type acts as a lightweight Swift reference to an underlying `GdkAppLaunchContext` instance.
/// It exposes methods that can operate on this data type through `AppLaunchContextProtocol` conformance.
/// Use `AppLaunchContextRef` only as an `unowned` reference to an existing `GdkAppLaunchContext` instance.
///
/// GdkAppLaunchContext is an implementation of `GAppLaunchContext` that
/// handles launching an application in a graphical context. It provides
/// startup notification and allows to launch applications on a specific
/// screen or workspace.
/// 
/// ## Launching an application
/// 
/// (C Language Example):
/// ```C
/// GdkAppLaunchContext *context;
/// 
/// context = gdk_display_get_app_launch_context (display);
/// 
/// gdk_app_launch_context_set_display (display);
/// gdk_app_launch_context_set_timestamp (gdk_event_get_time (event));
/// 
/// if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
///   g_warning ("Launching failed: %s\n", error->message);
/// 
/// g_object_unref (context);
/// ```
/// 
public struct AppLaunchContextRef: AppLaunchContextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkAppLaunchContext` instance.
    /// For type-safe access, use the generated, typed pointer `app_launch_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppLaunchContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkAppLaunchContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkAppLaunchContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkAppLaunchContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkAppLaunchContext>?) {
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

    /// Reference intialiser for a related type that implements `AppLaunchContextProtocol`
    @inlinable init<T: AppLaunchContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AppLaunchContextProtocol>(_ other: T) -> AppLaunchContextRef { AppLaunchContextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppLaunchContext` type acts as a reference-counted owner of an underlying `GdkAppLaunchContext` instance.
/// It provides the methods that can operate on this data type through `AppLaunchContextProtocol` conformance.
/// Use `AppLaunchContext` as a strong reference or owner of a `GdkAppLaunchContext` instance.
///
/// GdkAppLaunchContext is an implementation of `GAppLaunchContext` that
/// handles launching an application in a graphical context. It provides
/// startup notification and allows to launch applications on a specific
/// screen or workspace.
/// 
/// ## Launching an application
/// 
/// (C Language Example):
/// ```C
/// GdkAppLaunchContext *context;
/// 
/// context = gdk_display_get_app_launch_context (display);
/// 
/// gdk_app_launch_context_set_display (display);
/// gdk_app_launch_context_set_timestamp (gdk_event_get_time (event));
/// 
/// if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
///   g_warning ("Launching failed: %s\n", error->message);
/// 
/// g_object_unref (context);
/// ```
/// 
open class AppLaunchContext: GIO.AppLaunchContext, AppLaunchContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkAppLaunchContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkAppLaunchContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkAppLaunchContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkAppLaunchContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkAppLaunchContext`.
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkAppLaunchContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AppLaunchContextProtocol`
    /// Will retain `GdkAppLaunchContext`.
    /// - Parameter other: an instance of a related type that implements `AppLaunchContextProtocol`
    @inlinable public init<T: AppLaunchContextProtocol>(_ other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum AppLaunchContextPropertyName: String, PropertyNameProtocol {
    case display = "display"
}

public extension AppLaunchContextProtocol {
    /// Bind a `AppLaunchContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AppLaunchContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AppLaunchContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AppLaunchContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AppLaunchContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AppLaunchContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum AppLaunchContextSignalName: String, SignalNameProtocol {
    /// The `launch-failed` signal is emitted when a `GAppInfo` launch
    /// fails. The startup notification id is provided, so that the launcher
    /// can cancel the startup notification.
    case launchFailed = "launch-failed"
    /// The `launched` signal is emitted when a `GAppInfo` is successfully
    /// launched. The `platform_data` is an GVariant dictionary mapping
    /// strings to variants (ie a{sv}), which contains additional,
    /// platform-specific data about this launch. On UNIX, at least the
    /// "pid" and "startup-notification-id" keys will be present.
    case launched = "launched"
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
    case notifyDisplay = "notify::display"
}

// MARK: AppLaunchContext has no signals
// MARK: AppLaunchContext Class: AppLaunchContextProtocol extension (methods and fields)
public extension AppLaunchContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkAppLaunchContext` instance.
    @inlinable var app_launch_context_ptr: UnsafeMutablePointer<GdkAppLaunchContext>! { return ptr?.assumingMemoryBound(to: GdkAppLaunchContext.self) }

    /// Gets the `GdkDisplay` that `context` is for.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_app_launch_context_get_display(app_launch_context_ptr)))
        return rv
    }

    /// Sets the workspace on which applications will be launched when
    /// using this context when running under a window manager that
    /// supports multiple workspaces, as described in the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
    /// 
    /// When the workspace is not specified or `desktop` is set to -1,
    /// it is up to the window manager to pick one, typically it will
    /// be the current workspace.
    @inlinable func set(desktop: Int) {
        gdk_app_launch_context_set_desktop(app_launch_context_ptr, gint(desktop))
    
    }

    /// Sets the icon for applications that are launched with this
    /// context.
    /// 
    /// Window Managers can use this information when displaying startup
    /// notification.
    /// 
    /// See also `gdk_app_launch_context_set_icon_name()`.
    @inlinable func set(icon: GIO.IconRef? = nil) {
        gdk_app_launch_context_set_icon(app_launch_context_ptr, icon?.icon_ptr)
    
    }
    /// Sets the icon for applications that are launched with this
    /// context.
    /// 
    /// Window Managers can use this information when displaying startup
    /// notification.
    /// 
    /// See also `gdk_app_launch_context_set_icon_name()`.
    @inlinable func set<IconT: GIO.IconProtocol>(icon: IconT?) {
        gdk_app_launch_context_set_icon(app_launch_context_ptr, icon?.icon_ptr)
    
    }

    /// Sets the icon for applications that are launched with this context.
    /// The `icon_name` will be interpreted in the same way as the Icon field
    /// in desktop files. See also `gdk_app_launch_context_set_icon()`.
    /// 
    /// If both `icon` and `icon_name` are set, the `icon_name` takes priority.
    /// If neither `icon` or `icon_name` is set, the icon is taken from either
    /// the file that is passed to launched application or from the `GAppInfo`
    /// for the launched application itself.
    @inlinable func set(iconName: UnsafePointer<CChar>? = nil) {
        gdk_app_launch_context_set_icon_name(app_launch_context_ptr, iconName)
    
    }

    /// Sets the timestamp of `context`. The timestamp should ideally
    /// be taken from the event that triggered the launch.
    /// 
    /// Window managers can use this information to avoid moving the
    /// focus to the newly launched application when the user is busy
    /// typing in another window. This is also known as 'focus stealing
    /// prevention'.
    @inlinable func set(timestamp: guint32) {
        gdk_app_launch_context_set_timestamp(app_launch_context_ptr, timestamp)
    
    }
    @inlinable var display: DisplayRef! {
        /// Gets the `GdkDisplay` that `context` is for.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_app_launch_context_get_display(app_launch_context_ptr)))
            return rv
        }
    }


}



// MARK: - ButtonEvent Class

/// The `ButtonEventProtocol` protocol exposes the methods and properties of an underlying `GdkButtonEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonEvent`.
/// Alternatively, use `ButtonEventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An event related to a button on a pointer device/
public protocol ButtonEventProtocol: EventProtocol {
        /// Untyped pointer to the underlying `GdkButtonEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkButtonEvent` instance.
    var button_event_ptr: UnsafeMutablePointer<GdkButtonEvent>! { get }

    /// Required Initialiser for types conforming to `ButtonEventProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ButtonEventRef` type acts as a lightweight Swift reference to an underlying `GdkButtonEvent` instance.
/// It exposes methods that can operate on this data type through `ButtonEventProtocol` conformance.
/// Use `ButtonEventRef` only as an `unowned` reference to an existing `GdkButtonEvent` instance.
///
/// An event related to a button on a pointer device/
public struct ButtonEventRef: ButtonEventProtocol {
        /// Untyped pointer to the underlying `GdkButtonEvent` instance.
    /// For type-safe access, use the generated, typed pointer `button_event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonEventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkButtonEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkButtonEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkButtonEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkButtonEvent>?) {
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

    /// Reference intialiser for a related type that implements `ButtonEventProtocol`
    @inlinable init<T: ButtonEventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonEvent` type acts as a reference-counted owner of an underlying `GdkButtonEvent` instance.
/// It provides the methods that can operate on this data type through `ButtonEventProtocol` conformance.
/// Use `ButtonEvent` as a strong reference or owner of a `GdkButtonEvent` instance.
///
/// An event related to a button on a pointer device/
open class ButtonEvent: Event, ButtonEventProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkButtonEvent>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkButtonEvent>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonEvent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkButtonEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkButtonEvent>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkButtonEvent`.
    /// i.e., ownership is transferred to the `ButtonEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkButtonEvent>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ButtonEventProtocol`
    /// Will retain `GdkButtonEvent`.
    /// - Parameter other: an instance of a related type that implements `ButtonEventProtocol`
    @inlinable public init<T: ButtonEventProtocol>(buttonEvent other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ButtonEvent properties

// MARK: no ButtonEvent signals

// MARK: ButtonEvent has no signals
// MARK: ButtonEvent Class: ButtonEventProtocol extension (methods and fields)
public extension ButtonEventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkButtonEvent` instance.
    @inlinable var button_event_ptr: UnsafeMutablePointer<GdkButtonEvent>! { return ptr?.assumingMemoryBound(to: GdkButtonEvent.self) }

    /// Extract the button number from a button event.
    @inlinable func getButton() -> Int {
        let rv = Int(gdk_button_event_get_button(event_ptr))
        return rv
    }
    /// Extract the button number from a button event.
    @inlinable var button: Int {
        /// Extract the button number from a button event.
        get {
            let rv = Int(gdk_button_event_get_button(event_ptr))
            return rv
        }
    }


}



