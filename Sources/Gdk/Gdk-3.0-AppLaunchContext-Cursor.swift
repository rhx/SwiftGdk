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
/// gdk_app_launch_context_set_screen (screen);
/// gdk_app_launch_context_set_timestamp (event->time);
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
/// gdk_app_launch_context_set_screen (screen);
/// gdk_app_launch_context_set_timestamp (event->time);
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

        /// Creates a new `GdkAppLaunchContext`.
    ///
    /// **new is deprecated:**
    /// Use gdk_display_get_app_launch_context() instead
    @available(*, deprecated) @inlinable init() {
        let rv = gdk_app_launch_context_new()
        ptr = UnsafeMutableRawPointer(rv)
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
/// gdk_app_launch_context_set_screen (screen);
/// gdk_app_launch_context_set_timestamp (event->time);
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

    /// Creates a new `GdkAppLaunchContext`.
    ///
    /// **new is deprecated:**
    /// Use gdk_display_get_app_launch_context() instead
    @available(*, deprecated) @inlinable override public init() {
        let rv = gdk_app_launch_context_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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

// MARK: AppLaunchContext has no signals// MARK: AppLaunchContext Class: AppLaunchContextProtocol extension (methods and fields)
public extension AppLaunchContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkAppLaunchContext` instance.
    @inlinable var app_launch_context_ptr: UnsafeMutablePointer<GdkAppLaunchContext>! { return ptr?.assumingMemoryBound(to: GdkAppLaunchContext.self) }

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

    /// Sets the display on which applications will be launched when
    /// using this context. See also `gdk_app_launch_context_set_screen()`.
    ///
    /// **set_display is deprecated:**
    /// Use gdk_display_get_app_launch_context() instead
    @available(*, deprecated) @inlinable func set<DisplayT: DisplayProtocol>(display: DisplayT) {
        gdk_app_launch_context_set_display(app_launch_context_ptr, display.display_ptr)
    
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

    /// Sets the screen on which applications will be launched when
    /// using this context. See also `gdk_app_launch_context_set_display()`.
    /// 
    /// If both `screen` and `display` are set, the `screen` takes priority.
    /// If neither `screen` or `display` are set, the default screen and
    /// display are used.
    @inlinable func set<ScreenT: ScreenProtocol>(screen: ScreenT) {
        gdk_app_launch_context_set_screen(app_launch_context_ptr, screen.screen_ptr)
    
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


}



// MARK: - Cursor Class

/// The `CursorProtocol` protocol exposes the methods and properties of an underlying `GdkCursor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Cursor`.
/// Alternatively, use `CursorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
public protocol CursorProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkCursor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkCursor` instance.
    var cursor_ptr: UnsafeMutablePointer<GdkCursor>! { get }

}

/// The `CursorRef` type acts as a lightweight Swift reference to an underlying `GdkCursor` instance.
/// It exposes methods that can operate on this data type through `CursorProtocol` conformance.
/// Use `CursorRef` only as an `unowned` reference to an existing `GdkCursor` instance.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
public struct CursorRef: CursorProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkCursor` instance.
    /// For type-safe access, use the generated, typed pointer `cursor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CursorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkCursor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkCursor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkCursor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkCursor>?) {
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

    /// Reference intialiser for a related type that implements `CursorProtocol`
    @inlinable init<T: CursorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: CursorProtocol>(_ other: T) -> CursorRef { CursorRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new cursor from the set of builtin cursors for the default display.
    /// See `gdk_cursor_new_for_display()`.
    /// 
    /// To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    ///
    /// **new is deprecated:**
    /// Use gdk_cursor_new_for_display() instead.
    @available(*, deprecated) @inlinable init( cursorType: GdkCursorType) {
        let rv = gdk_cursor_new(cursorType)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new cursor from the set of builtin cursors.
    @inlinable init<DisplayT: DisplayProtocol>(display: DisplayT, cursorType: GdkCursorType) {
        let rv = gdk_cursor_new_for_display(display.display_ptr, cursorType)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    @inlinable init<DisplayT: DisplayProtocol>(name display: DisplayT, name: UnsafePointer<gchar>!) {
        let rv = gdk_cursor_new_from_name(display.display_ptr, name)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable init<DisplayT: DisplayProtocol, PixbufT: PixbufProtocol>(pixbuf display: DisplayT, pixbuf: PixbufT, x: Int, y: Int) {
        let rv = gdk_cursor_new_from_pixbuf(display.display_ptr, pixbuf.pixbuf_ptr, gint(x), gint(y))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable init<DisplayT: DisplayProtocol, SurfaceT: Cairo.SurfaceProtocol>(surface display: DisplayT, surface: SurfaceT, x: Double, y: Double) {
        let rv = gdk_cursor_new_from_surface(display.display_ptr, surface._ptr, gdouble(x), gdouble(y))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new cursor from the set of builtin cursors.
    @inlinable static func newFor<DisplayT: DisplayProtocol>(display: DisplayT, cursorType: GdkCursorType) -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_new_for_display(display.display_ptr, cursorType))) else { return nil }
        return rv
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    @inlinable static func newFrom<DisplayT: DisplayProtocol>(name display: DisplayT, name: UnsafePointer<gchar>!) -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_new_from_name(display.display_ptr, name))) else { return nil }
        return rv
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable static func newFrom<DisplayT: DisplayProtocol, PixbufT: PixbufProtocol>(pixbuf display: DisplayT, pixbuf: PixbufT, x: Int, y: Int) -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_new_from_pixbuf(display.display_ptr, pixbuf.pixbuf_ptr, gint(x), gint(y)))) else { return nil }
        return rv
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable static func newFrom<DisplayT: DisplayProtocol, SurfaceT: Cairo.SurfaceProtocol>(surface display: DisplayT, surface: SurfaceT, x: Double, y: Double) -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_new_from_surface(display.display_ptr, surface._ptr, gdouble(x), gdouble(y)))) else { return nil }
        return rv
    }
}

/// The `Cursor` type acts as a reference-counted owner of an underlying `GdkCursor` instance.
/// It provides the methods that can operate on this data type through `CursorProtocol` conformance.
/// Use `Cursor` as a strong reference or owner of a `GdkCursor` instance.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
open class Cursor: GLibObject.Object, CursorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkCursor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkCursor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkCursor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkCursor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkCursor`.
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkCursor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CursorProtocol`
    /// Will retain `GdkCursor`.
    /// - Parameter other: an instance of a related type that implements `CursorProtocol`
    @inlinable public init<T: CursorProtocol>(cursor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new cursor from the set of builtin cursors for the default display.
    /// See `gdk_cursor_new_for_display()`.
    /// 
    /// To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    ///
    /// **new is deprecated:**
    /// Use gdk_cursor_new_for_display() instead.
    @available(*, deprecated) @inlinable public init( cursorType: GdkCursorType) {
        let rv = gdk_cursor_new(cursorType)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new cursor from the set of builtin cursors.
    @inlinable public init<DisplayT: DisplayProtocol>(display: DisplayT, cursorType: GdkCursorType) {
        let rv = gdk_cursor_new_for_display(display.display_ptr, cursorType)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    @inlinable public init<DisplayT: DisplayProtocol>(name display: DisplayT, name: UnsafePointer<gchar>!) {
        let rv = gdk_cursor_new_from_name(display.display_ptr, name)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable public init<DisplayT: DisplayProtocol, PixbufT: PixbufProtocol>(pixbuf display: DisplayT, pixbuf: PixbufT, x: Int, y: Int) {
        let rv = gdk_cursor_new_from_pixbuf(display.display_ptr, pixbuf.pixbuf_ptr, gint(x), gint(y))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable public init<DisplayT: DisplayProtocol, SurfaceT: Cairo.SurfaceProtocol>(surface display: DisplayT, surface: SurfaceT, x: Double, y: Double) {
        let rv = gdk_cursor_new_from_surface(display.display_ptr, surface._ptr, gdouble(x), gdouble(y))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new cursor from the set of builtin cursors.
    @inlinable public static func newFor<DisplayT: DisplayProtocol>(display: DisplayT, cursorType: GdkCursorType) -> Cursor! {
        guard let rv = Cursor(gconstpointer: gconstpointer(gdk_cursor_new_for_display(display.display_ptr, cursorType))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    @inlinable public static func newFrom<DisplayT: DisplayProtocol>(name display: DisplayT, name: UnsafePointer<gchar>!) -> Cursor! {
        guard let rv = Cursor(gconstpointer: gconstpointer(gdk_cursor_new_from_name(display.display_ptr, name))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable public static func newFrom<DisplayT: DisplayProtocol, PixbufT: PixbufProtocol>(pixbuf display: DisplayT, pixbuf: PixbufT, x: Int, y: Int) -> Cursor! {
        guard let rv = Cursor(gconstpointer: gconstpointer(gdk_cursor_new_from_pixbuf(display.display_ptr, pixbuf.pixbuf_ptr, gint(x), gint(y)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    @inlinable public static func newFrom<DisplayT: DisplayProtocol, SurfaceT: Cairo.SurfaceProtocol>(surface display: DisplayT, surface: SurfaceT, x: Double, y: Double) -> Cursor! {
        guard let rv = Cursor(gconstpointer: gconstpointer(gdk_cursor_new_from_surface(display.display_ptr, surface._ptr, gdouble(x), gdouble(y)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum CursorPropertyName: String, PropertyNameProtocol {
    case cursorType = "cursor-type"
    case display = "display"
}

public extension CursorProtocol {
    /// Bind a `CursorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: CursorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Cursor property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: CursorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Cursor property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: CursorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Cursor has no signals// MARK: Cursor Class: CursorProtocol extension (methods and fields)
public extension CursorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkCursor` instance.
    @inlinable var cursor_ptr: UnsafeMutablePointer<GdkCursor>! { return ptr?.assumingMemoryBound(to: GdkCursor.self) }

    /// Returns the cursor type for this cursor.
    @inlinable func getCursorType() -> GdkCursorType {
        let rv = gdk_cursor_get_cursor_type(cursor_ptr)
        return rv
    }

    /// Returns the display on which the `GdkCursor` is defined.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_cursor_get_display(cursor_ptr)))
        return rv
    }

    /// Returns a `GdkPixbuf` with the image used to display the cursor.
    /// 
    /// Note that depending on the capabilities of the windowing system and
    /// on the cursor, GDK may not be able to obtain the image data. In this
    /// case, `nil` is returned.
    @inlinable func getImage() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gdk_cursor_get_image(cursor_ptr)))
        return rv
    }

    /// Returns a cairo image surface with the image used to display the cursor.
    /// 
    /// Note that depending on the capabilities of the windowing system and
    /// on the cursor, GDK may not be able to obtain the image data. In this
    /// case, `nil` is returned.
    @inlinable func getSurface(xHot: UnsafeMutablePointer<gdouble>! = nil, yHot: UnsafeMutablePointer<gdouble>! = nil) -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gdk_cursor_get_surface(cursor_ptr, xHot, yHot))
        return rv
    }

    /// Adds a reference to `cursor`.
    ///
    /// **ref is deprecated:**
    /// Use g_object_ref() instead
    @available(*, deprecated) @discardableResult @inlinable func ref() -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(g_object_ref(cursor_ptr))) else { return nil }
        return rv
    }

    /// Removes a reference from `cursor`, deallocating the cursor
    /// if no references remain.
    ///
    /// **unref is deprecated:**
    /// Use g_object_unref() instead
    @available(*, deprecated) @inlinable func unref() {
        g_object_unref(cursor_ptr)
    
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
    @available(*, deprecated) @inlinable func pointerGrab<WindowT: WindowProtocol>(window: WindowT, ownerEvents: Bool, eventMask: EventMask, confineTo: WindowT?, time_: guint32) -> GdkGrabStatus {
        let rv = gdk_pointer_grab(window.window_ptr, gboolean((ownerEvents) ? 1 : 0), eventMask.value, confineTo?.window_ptr, cursor_ptr, time_)
        return rv
    }
    /// Returns the cursor type for this cursor.
    @inlinable var cursorType: GdkCursorType {
        /// Returns the cursor type for this cursor.
        get {
            let rv = gdk_cursor_get_cursor_type(cursor_ptr)
            return rv
        }
    }

    @inlinable var display: DisplayRef! {
        /// Returns the display on which the `GdkCursor` is defined.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_cursor_get_display(cursor_ptr)))
            return rv
        }
    }

    /// Returns a `GdkPixbuf` with the image used to display the cursor.
    /// 
    /// Note that depending on the capabilities of the windowing system and
    /// on the cursor, GDK may not be able to obtain the image data. In this
    /// case, `nil` is returned.
    @inlinable var image: PixbufRef! {
        /// Returns a `GdkPixbuf` with the image used to display the cursor.
        /// 
        /// Note that depending on the capabilities of the windowing system and
        /// on the cursor, GDK may not be able to obtain the image data. In this
        /// case, `nil` is returned.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gdk_cursor_get_image(cursor_ptr)))
            return rv
        }
    }


}



