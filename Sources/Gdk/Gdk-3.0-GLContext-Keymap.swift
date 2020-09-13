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

// MARK: - GLContext Class

/// The `GLContextProtocol` protocol exposes the methods and properties of an underlying `GdkGLContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLContext`.
/// Alternatively, use `GLContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL drawing context.
/// 
/// `GdkGLContexts` are created for a `GdkWindow` using
/// `gdk_window_create_gl_context()`, and the context will match
/// the `GdkVisual` of the window.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkWindow` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkWindow`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_window_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
public protocol GLContextProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkGLContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkGLContext` instance.
    var gl_context_ptr: UnsafeMutablePointer<GdkGLContext>! { get }

}

/// The `GLContextRef` type acts as a lightweight Swift reference to an underlying `GdkGLContext` instance.
/// It exposes methods that can operate on this data type through `GLContextProtocol` conformance.
/// Use `GLContextRef` only as an `unowned` reference to an existing `GdkGLContext` instance.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL drawing context.
/// 
/// `GdkGLContexts` are created for a `GdkWindow` using
/// `gdk_window_create_gl_context()`, and the context will match
/// the `GdkVisual` of the window.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkWindow` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkWindow`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_window_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
public struct GLContextRef: GLContextProtocol {
        /// Untyped pointer to the underlying `GdkGLContext` instance.
    /// For type-safe access, use the generated, typed pointer `gl_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GLContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkGLContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkGLContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkGLContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkGLContext>?) {
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

    /// Reference intialiser for a related type that implements `GLContextProtocol`
    @inlinable init<T: GLContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Retrieves the current `GdkGLContext`.
    @inlinable static func getCurrent() -> GLContextRef! {
        guard let rv = GLContextRef(gconstpointer: gconstpointer(gdk_gl_context_get_current())) else { return nil }
        return rv
    }
}

/// The `GLContext` type acts as a reference-counted owner of an underlying `GdkGLContext` instance.
/// It provides the methods that can operate on this data type through `GLContextProtocol` conformance.
/// Use `GLContext` as a strong reference or owner of a `GdkGLContext` instance.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL drawing context.
/// 
/// `GdkGLContexts` are created for a `GdkWindow` using
/// `gdk_window_create_gl_context()`, and the context will match
/// the `GdkVisual` of the window.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkWindow` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkWindow`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_window_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
open class GLContext: GLibObject.Object, GLContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkGLContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkGLContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkGLContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkGLContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkGLContext`.
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkGLContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GLContextProtocol`
    /// Will retain `GdkGLContext`.
    /// - Parameter other: an instance of a related type that implements `GLContextProtocol`
    @inlinable public init<T: GLContextProtocol>(gLContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Retrieves the current `GdkGLContext`.
    @inlinable public static func getCurrent() -> GLContext! {
        guard let rv = GLContext(gconstpointer: gconstpointer(gdk_gl_context_get_current())) else { return nil }
        return rv
    }

}

public enum GLContextPropertyName: String, PropertyNameProtocol {
    /// The `GdkDisplay` used to create the `GdkGLContext`.
    case display = "display"
    /// The `GdkGLContext` that this context is sharing data with, or `nil`
    case sharedContext = "shared-context"
    /// The `GdkWindow` the gl context is bound to.
    case window = "window"
}

public extension GLContextProtocol {
    /// Bind a `GLContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GLContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a GLContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GLContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GLContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GLContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GLContextSignalName: String, SignalNameProtocol {
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
    /// The `GdkDisplay` used to create the `GdkGLContext`.
    case notifyDisplay = "notify::display"
    /// The `GdkGLContext` that this context is sharing data with, or `nil`
    case notifySharedContext = "notify::shared-context"
    /// The `GdkWindow` the gl context is bound to.
    case notifyWindow = "notify::window"
}

public extension GLContextProtocol {
    /// Connect a `GLContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: GLContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: GLContext Class: GLContextProtocol extension (methods and fields)
public extension GLContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkGLContext` instance.
    @inlinable var gl_context_ptr: UnsafeMutablePointer<GdkGLContext>! { return ptr?.assumingMemoryBound(to: GdkGLContext.self) }

    /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
    @inlinable func getDebugEnabled() -> Bool {
        let rv = ((gdk_gl_context_get_debug_enabled(gl_context_ptr)) != 0)
        return rv
    }

    /// Retrieves the `GdkDisplay` the `context` is created for
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_gl_context_get_display(gl_context_ptr)))
        return rv
    }

    /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
    @inlinable func getForwardCompatible() -> Bool {
        let rv = ((gdk_gl_context_get_forward_compatible(gl_context_ptr)) != 0)
        return rv
    }

    /// Retrieves the major and minor version requested by calling
    /// `gdk_gl_context_set_required_version()`.
    @inlinable func getRequiredVersion(major: UnsafeMutablePointer<gint>?, minor: UnsafeMutablePointer<gint>?) {
        gdk_gl_context_get_required_version(gl_context_ptr, major, minor)
    
    }

    /// Retrieves the `GdkGLContext` that this `context` share data with.
    @inlinable func getSharedContext() -> GLContextRef! {
        guard let rv = GLContextRef(gconstpointer: gconstpointer(gdk_gl_context_get_shared_context(gl_context_ptr))) else { return nil }
        return rv
    }

    /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
    @inlinable func getUseEs() -> Bool {
        let rv = ((gdk_gl_context_get_use_es(gl_context_ptr)) != 0)
        return rv
    }

    /// Retrieves the OpenGL version of the `context`.
    /// 
    /// The `context` must be realized prior to calling this function.
    @inlinable func getVersion(major: UnsafeMutablePointer<gint>!, minor: UnsafeMutablePointer<gint>!) {
        gdk_gl_context_get_version(gl_context_ptr, major, minor)
    
    }

    /// Retrieves the `GdkWindow` used by the `context`.
    @inlinable func getWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_gl_context_get_window(gl_context_ptr)))
        return rv
    }

    /// Makes the `context` the current one.
    @inlinable func makeCurrent() {
        gdk_gl_context_make_current(gl_context_ptr)
    
    }

    /// Realizes the given `GdkGLContext`.
    /// 
    /// It is safe to call this function on a realized `GdkGLContext`.
    @inlinable func realize() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_gl_context_realize(gl_context_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets whether the `GdkGLContext` should perform extra validations and
    /// run time checking. This is useful during development, but has
    /// additional overhead.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to
    /// calling this function.
    @inlinable func setDebug(enabled: Bool) {
        gdk_gl_context_set_debug_enabled(gl_context_ptr, gboolean((enabled) ? 1 : 0))
    
    }

    /// Sets whether the `GdkGLContext` should be forward compatible.
    /// 
    /// Forward compatibile contexts must not support OpenGL functionality that
    /// has been marked as deprecated in the requested version; non-forward
    /// compatible contexts, on the other hand, must support both deprecated and
    /// non deprecated functionality.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to calling
    /// this function.
    @inlinable func setForward(compatible: Bool) {
        gdk_gl_context_set_forward_compatible(gl_context_ptr, gboolean((compatible) ? 1 : 0))
    
    }

    /// Sets the major and minor version of OpenGL to request.
    /// 
    /// Setting `major` and `minor` to zero will use the default values.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to calling
    /// this function.
    @inlinable func setRequiredVersion(major: Int, minor: Int) {
        gdk_gl_context_set_required_version(gl_context_ptr, gint(major), gint(minor))
    
    }

    /// Requests that GDK create a OpenGL ES context instead of an OpenGL one,
    /// if the platform and windowing system allows it.
    /// 
    /// The `context` must not have been realized.
    /// 
    /// By default, GDK will attempt to automatically detect whether the
    /// underlying GL implementation is OpenGL or OpenGL ES once the `context`
    /// is realized.
    /// 
    /// You should check the return value of `gdk_gl_context_get_use_es()` after
    /// calling `gdk_gl_context_realize()` to decide whether to use the OpenGL or
    /// OpenGL ES API, extensions, or shaders.
    @inlinable func set(useEs: Int) {
        gdk_gl_context_set_use_es(gl_context_ptr, gint(useEs))
    
    }
    /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
    @inlinable var debugEnabled: Bool {
        /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
        get {
            let rv = ((gdk_gl_context_get_debug_enabled(gl_context_ptr)) != 0)
            return rv
        }
        /// Sets whether the `GdkGLContext` should perform extra validations and
        /// run time checking. This is useful during development, but has
        /// additional overhead.
        /// 
        /// The `GdkGLContext` must not be realized or made current prior to
        /// calling this function.
        nonmutating set {
            gdk_gl_context_set_debug_enabled(gl_context_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The `GdkDisplay` used to create the `GdkGLContext`.
    @inlinable var display: DisplayRef! {
        /// Retrieves the `GdkDisplay` the `context` is created for
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_gl_context_get_display(gl_context_ptr)))
            return rv
        }
    }

    /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
    @inlinable var forwardCompatible: Bool {
        /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
        get {
            let rv = ((gdk_gl_context_get_forward_compatible(gl_context_ptr)) != 0)
            return rv
        }
        /// Sets whether the `GdkGLContext` should be forward compatible.
        /// 
        /// Forward compatibile contexts must not support OpenGL functionality that
        /// has been marked as deprecated in the requested version; non-forward
        /// compatible contexts, on the other hand, must support both deprecated and
        /// non deprecated functionality.
        /// 
        /// The `GdkGLContext` must not be realized or made current prior to calling
        /// this function.
        nonmutating set {
            gdk_gl_context_set_forward_compatible(gl_context_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the `GdkGLContext` is in legacy mode or not.
    /// 
    /// The `GdkGLContext` must be realized before calling this function.
    /// 
    /// When realizing a GL context, GDK will try to use the OpenGL 3.2 core
    /// profile; this profile removes all the OpenGL API that was deprecated
    /// prior to the 3.2 version of the specification. If the realization is
    /// successful, this function will return `false`.
    /// 
    /// If the underlying OpenGL implementation does not support core profiles,
    /// GDK will fall back to a pre-3.2 compatibility profile, and this function
    /// will return `true`.
    /// 
    /// You can use the value returned by this function to decide which kind
    /// of OpenGL API to use, or whether to do extension discovery, or what
    /// kind of shader programs to load.
    @inlinable var isLegacy: Bool {
        /// Whether the `GdkGLContext` is in legacy mode or not.
        /// 
        /// The `GdkGLContext` must be realized before calling this function.
        /// 
        /// When realizing a GL context, GDK will try to use the OpenGL 3.2 core
        /// profile; this profile removes all the OpenGL API that was deprecated
        /// prior to the 3.2 version of the specification. If the realization is
        /// successful, this function will return `false`.
        /// 
        /// If the underlying OpenGL implementation does not support core profiles,
        /// GDK will fall back to a pre-3.2 compatibility profile, and this function
        /// will return `true`.
        /// 
        /// You can use the value returned by this function to decide which kind
        /// of OpenGL API to use, or whether to do extension discovery, or what
        /// kind of shader programs to load.
        get {
            let rv = ((gdk_gl_context_is_legacy(gl_context_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the `GdkGLContext` that this `context` share data with.
    @inlinable var sharedContext: GLContextRef! {
        /// Retrieves the `GdkGLContext` that this `context` share data with.
        get {
            guard let rv = GLContextRef(gconstpointer: gconstpointer(gdk_gl_context_get_shared_context(gl_context_ptr))) else { return nil }
            return rv
        }
    }

    /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
    @inlinable var useEs: Bool {
        /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
        get {
            let rv = ((gdk_gl_context_get_use_es(gl_context_ptr)) != 0)
            return rv
        }
        /// Requests that GDK create a OpenGL ES context instead of an OpenGL one,
        /// if the platform and windowing system allows it.
        /// 
        /// The `context` must not have been realized.
        /// 
        /// By default, GDK will attempt to automatically detect whether the
        /// underlying GL implementation is OpenGL or OpenGL ES once the `context`
        /// is realized.
        /// 
        /// You should check the return value of `gdk_gl_context_get_use_es()` after
        /// calling `gdk_gl_context_realize()` to decide whether to use the OpenGL or
        /// OpenGL ES API, extensions, or shaders.
        nonmutating set {
            gdk_gl_context_set_use_es(gl_context_ptr, newValue ? 1 : 0)
        }
    }

    /// The `GdkWindow` the gl context is bound to.
    @inlinable var window: WindowRef! {
        /// Retrieves the `GdkWindow` used by the `context`.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_gl_context_get_window(gl_context_ptr)))
            return rv
        }
    }


}



// MARK: - Keymap Class

/// The `KeymapProtocol` protocol exposes the methods and properties of an underlying `GdkKeymap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Keymap`.
/// Alternatively, use `KeymapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkKeymap` defines the translation from keyboard state
/// (including a hardware key, a modifier mask, and active keyboard group)
/// to a keyval. This translation has two phases. The first phase is
/// to determine the effective keyboard group and level for the keyboard
/// state; the second phase is to look up the keycode/group/level triplet
/// in the keymap and see what keyval it corresponds to.
public protocol KeymapProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkKeymap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkKeymap` instance.
    var keymap_ptr: UnsafeMutablePointer<GdkKeymap>! { get }

}

/// The `KeymapRef` type acts as a lightweight Swift reference to an underlying `GdkKeymap` instance.
/// It exposes methods that can operate on this data type through `KeymapProtocol` conformance.
/// Use `KeymapRef` only as an `unowned` reference to an existing `GdkKeymap` instance.
///
/// A `GdkKeymap` defines the translation from keyboard state
/// (including a hardware key, a modifier mask, and active keyboard group)
/// to a keyval. This translation has two phases. The first phase is
/// to determine the effective keyboard group and level for the keyboard
/// state; the second phase is to look up the keycode/group/level triplet
/// in the keymap and see what keyval it corresponds to.
public struct KeymapRef: KeymapProtocol {
        /// Untyped pointer to the underlying `GdkKeymap` instance.
    /// For type-safe access, use the generated, typed pointer `keymap_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension KeymapRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkKeymap>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkKeymap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkKeymap>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkKeymap>?) {
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

    /// Reference intialiser for a related type that implements `KeymapProtocol`
    @inlinable init<T: KeymapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the `GdkKeymap` attached to the default display.
    ///
    /// **get_default is deprecated:**
    /// Use gdk_keymap_get_for_display() instead
    @available(*, deprecated) @inlinable static func getDefault() -> KeymapRef! {
        guard let rv = KeymapRef(gconstpointer: gconstpointer(gdk_keymap_get_default())) else { return nil }
        return rv
    }

    /// Returns the `GdkKeymap` attached to `display`.
    @inlinable static func getFor<DisplayT: DisplayProtocol>(display: DisplayT) -> KeymapRef! {
        guard let rv = KeymapRef(gconstpointer: gconstpointer(gdk_keymap_get_for_display(display.display_ptr))) else { return nil }
        return rv
    }
}

/// The `Keymap` type acts as a reference-counted owner of an underlying `GdkKeymap` instance.
/// It provides the methods that can operate on this data type through `KeymapProtocol` conformance.
/// Use `Keymap` as a strong reference or owner of a `GdkKeymap` instance.
///
/// A `GdkKeymap` defines the translation from keyboard state
/// (including a hardware key, a modifier mask, and active keyboard group)
/// to a keyval. This translation has two phases. The first phase is
/// to determine the effective keyboard group and level for the keyboard
/// state; the second phase is to look up the keycode/group/level triplet
/// in the keymap and see what keyval it corresponds to.
open class Keymap: GLibObject.Object, KeymapProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Keymap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkKeymap>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Keymap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkKeymap>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Keymap` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Keymap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Keymap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkKeymap>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Keymap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkKeymap>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkKeymap`.
    /// i.e., ownership is transferred to the `Keymap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkKeymap>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `KeymapProtocol`
    /// Will retain `GdkKeymap`.
    /// - Parameter other: an instance of a related type that implements `KeymapProtocol`
    @inlinable public init<T: KeymapProtocol>(keymap other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Returns the `GdkKeymap` attached to the default display.
    ///
    /// **get_default is deprecated:**
    /// Use gdk_keymap_get_for_display() instead
    @available(*, deprecated) @inlinable public static func getDefault() -> Keymap! {
        guard let rv = Keymap(gconstpointer: gconstpointer(gdk_keymap_get_default())) else { return nil }
        return rv
    }

    /// Returns the `GdkKeymap` attached to `display`.
    @inlinable public static func getFor<DisplayT: DisplayProtocol>(display: DisplayT) -> Keymap! {
        guard let rv = Keymap(gconstpointer: gconstpointer(gdk_keymap_get_for_display(display.display_ptr))) else { return nil }
        return rv
    }

}

// MARK: no Keymap properties

public enum KeymapSignalName: String, SignalNameProtocol {
    /// The `direction`-changed signal gets emitted when the direction of
    /// the keymap changes.
    case directionChanged = "direction-changed"
    /// The `keys`-changed signal is emitted when the mapping represented by
    /// `keymap` changes.
    case keysChanged = "keys-changed"
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
    /// The `state`-changed signal is emitted when the state of the
    /// keyboard changes, e.g when Caps Lock is turned on or off.
    /// See `gdk_keymap_get_caps_lock_state()`.
    case stateChanged = "state-changed"

}

public extension KeymapProtocol {
    /// Connect a `KeymapSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: KeymapSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Keymap Class: KeymapProtocol extension (methods and fields)
public extension KeymapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkKeymap` instance.
    @inlinable var keymap_ptr: UnsafeMutablePointer<GdkKeymap>! { return ptr?.assumingMemoryBound(to: GdkKeymap.self) }

    /// Maps the non-virtual modifiers (i.e Mod2, Mod3, ...) which are set
    /// in `state` to the virtual modifiers (i.e. Super, Hyper and Meta) and
    /// set the corresponding bits in `state`.
    /// 
    /// GDK already does this before delivering key events, but for
    /// compatibility reasons, it only sets the first virtual modifier
    /// it finds, whereas this function sets all matching virtual modifiers.
    /// 
    /// This function is useful when matching key events against
    /// accelerators.
    @inlinable func addVirtualModifiers(state: UnsafeMutablePointer<GdkModifierType>!) {
        gdk_keymap_add_virtual_modifiers(keymap_ptr, state)
    
    }

    /// Returns whether the Caps Lock modifer is locked.
    @inlinable func getCapsLockState() -> Bool {
        let rv = ((gdk_keymap_get_caps_lock_state(keymap_ptr)) != 0)
        return rv
    }

    /// Returns the direction of effective layout of the keymap.
    @inlinable func getDirection() -> PangoDirection {
        let rv = gdk_keymap_get_direction(keymap_ptr)
        return rv
    }

    /// Returns the keyvals bound to `hardware_keycode`.
    /// The Nth `GdkKeymapKey` in `keys` is bound to the Nth
    /// keyval in `keyvals`. Free the returned arrays with `g_free()`.
    /// When a keycode is pressed by the user, the keyval from
    /// this list of entries is selected by considering the effective
    /// keyboard group and level. See `gdk_keymap_translate_keyboard_state()`.
    @inlinable func getEntriesForKeycode(hardwareKeycode: Int, keys: UnsafeMutablePointer<UnsafeMutablePointer<GdkKeymapKey>?>! = nil, keyvals: UnsafeMutablePointer<UnsafeMutablePointer<guint>?>! = nil, nEntries: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gdk_keymap_get_entries_for_keycode(keymap_ptr, guint(hardwareKeycode), keys, keyvals, nEntries)) != 0)
        return rv
    }

    /// Obtains a list of keycode/group/level combinations that will
    /// generate `keyval`. Groups and levels are two kinds of keyboard mode;
    /// in general, the level determines whether the top or bottom symbol
    /// on a key is used, and the group determines whether the left or
    /// right symbol is used. On US keyboards, the shift key changes the
    /// keyboard level, and there are no groups. A group switch key might
    /// convert a keyboard between Hebrew to English modes, for example.
    /// `GdkEventKey` contains a `group` field that indicates the active
    /// keyboard group. The level is computed from the modifier mask.
    /// The returned array should be freed
    /// with `g_free()`.
    @inlinable func getEntriesFor(keyval: Int, keys: UnsafeMutablePointer<UnsafeMutablePointer<GdkKeymapKey>?>!, nKeys: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gdk_keymap_get_entries_for_keyval(keymap_ptr, guint(keyval), keys, nKeys)) != 0)
        return rv
    }

    /// Returns the modifier mask the `keymap`’s windowing system backend
    /// uses for a particular purpose.
    /// 
    /// Note that this function always returns real hardware modifiers, not
    /// virtual ones (e.g. it will return `GDK_MOD1_MASK` rather than
    /// `GDK_META_MASK` if the backend maps MOD1 to META), so there are use
    /// cases where the return value of this function has to be transformed
    /// by `gdk_keymap_add_virtual_modifiers()` in order to contain the
    /// expected result.
    @inlinable func getModifierMask(intent: GdkModifierIntent) -> ModifierType {
        let rv = ModifierType(gdk_keymap_get_modifier_mask(keymap_ptr, intent))
        return rv
    }

    /// Returns the current modifier state.
    @inlinable func getModifierState() -> Int {
        let rv = Int(gdk_keymap_get_modifier_state(keymap_ptr))
        return rv
    }

    /// Returns whether the Num Lock modifer is locked.
    @inlinable func getNumLockState() -> Bool {
        let rv = ((gdk_keymap_get_num_lock_state(keymap_ptr)) != 0)
        return rv
    }

    /// Returns whether the Scroll Lock modifer is locked.
    @inlinable func getScrollLockState() -> Bool {
        let rv = ((gdk_keymap_get_scroll_lock_state(keymap_ptr)) != 0)
        return rv
    }

    /// Determines if keyboard layouts for both right-to-left and left-to-right
    /// languages are in use.
    @inlinable func haveBidiLayouts() -> Bool {
        let rv = ((gdk_keymap_have_bidi_layouts(keymap_ptr)) != 0)
        return rv
    }

    /// Looks up the keyval mapped to a keycode/group/level triplet.
    /// If no keyval is bound to `key`, returns 0. For normal user input,
    /// you want to use `gdk_keymap_translate_keyboard_state()` instead of
    /// this function, since the effective group/level may not be
    /// the same as the current keyboard state.
    @inlinable func lookup<KeymapKeyT: KeymapKeyProtocol>(key: KeymapKeyT) -> Int {
        let rv = Int(gdk_keymap_lookup_key(keymap_ptr, key._ptr))
        return rv
    }

    /// Maps the virtual modifiers (i.e. Super, Hyper and Meta) which
    /// are set in `state` to their non-virtual counterparts (i.e. Mod2,
    /// Mod3,...) and set the corresponding bits in `state`.
    /// 
    /// This function is useful when matching key events against
    /// accelerators.
    @inlinable func mapVirtualModifiers(state: UnsafeMutablePointer<GdkModifierType>!) -> Bool {
        let rv = ((gdk_keymap_map_virtual_modifiers(keymap_ptr, state)) != 0)
        return rv
    }

    /// Translates the contents of a `GdkEventKey` into a keyval, effective
    /// group, and level. Modifiers that affected the translation and
    /// are thus unavailable for application use are returned in
    /// `consumed_modifiers`.
    /// See [Groups](#key-group-explanation) for an explanation of
    /// groups and levels. The `effective_group` is the group that was
    /// actually used for the translation; some keys such as Enter are not
    /// affected by the active keyboard group. The `level` is derived from
    /// `state`. For convenience, `GdkEventKey` already contains the translated
    /// keyval, so this function isn’t as useful as you might think.
    /// 
    /// `consumed_modifiers` gives modifiers that should be masked outfrom `state`
    /// when comparing this key press to a hot key. For instance, on a US keyboard,
    /// the `plus` symbol is shifted, so when comparing a key press to a
    /// `<Control>plus` accelerator `<Shift>` should be masked out.
    /// 
    /// (C Language Example):
    /// ```C
    /// // We want to ignore irrelevant modifiers like ScrollLock
    /// #define ALL_ACCELS_MASK (GDK_CONTROL_MASK | GDK_SHIFT_MASK | GDK_MOD1_MASK)
    /// gdk_keymap_translate_keyboard_state (keymap, event->hardware_keycode,
    ///                                      event->state, event->group,
    ///                                      &keyval, NULL, NULL, &consumed);
    /// if (keyval == GDK_PLUS &&
    ///     (event->state & ~consumed & ALL_ACCELS_MASK) == GDK_CONTROL_MASK)
    ///   // Control was pressed
    /// ```
    /// 
    /// An older interpretation `consumed_modifiers` was that it contained
    /// all modifiers that might affect the translation of the key;
    /// this allowed accelerators to be stored with irrelevant consumed
    /// modifiers, by doing:
    /// (C Language Example):
    /// ```C
    /// // XXX Don’t do this XXX
    /// if (keyval == accel_keyval &&
    ///     (event->state & ~consumed & ALL_ACCELS_MASK) == (accel_mods & ~consumed))
    ///   // Accelerator was pressed
    /// ```
    /// 
    /// However, this did not work if multi-modifier combinations were
    /// used in the keymap, since, for instance, `<Control>` would be
    /// masked out even if only `<Control><Alt>` was used in the keymap.
    /// To support this usage as well as well as possible, all single
    /// modifier combinations that could affect the key for any combination
    /// of modifiers will be returned in `consumed_modifiers`; multi-modifier
    /// combinations are returned only when actually found in `state`. When
    /// you store accelerators, you should always store them with consumed
    /// modifiers removed. Store `<Control>plus`, not `<Control><Shift>plus`,
    @inlinable func translateKeyboardState(hardwareKeycode: Int, state: ModifierType, group: Int, keyval: UnsafeMutablePointer<guint>! = nil, effectiveGroup: UnsafeMutablePointer<gint>! = nil, level: UnsafeMutablePointer<gint>! = nil, consumedModifiers: UnsafeMutablePointer<GdkModifierType>! = nil) -> Bool {
        let rv = ((gdk_keymap_translate_keyboard_state(keymap_ptr, guint(hardwareKeycode), state.value, gint(group), keyval, effectiveGroup, level, consumedModifiers)) != 0)
        return rv
    }
    /// Returns whether the Caps Lock modifer is locked.
    @inlinable var capsLockState: Bool {
        /// Returns whether the Caps Lock modifer is locked.
        get {
            let rv = ((gdk_keymap_get_caps_lock_state(keymap_ptr)) != 0)
            return rv
        }
    }

    /// Returns the direction of effective layout of the keymap.
    @inlinable var direction: PangoDirection {
        /// Returns the direction of effective layout of the keymap.
        get {
            let rv = gdk_keymap_get_direction(keymap_ptr)
            return rv
        }
    }

    /// Returns the current modifier state.
    @inlinable var modifierState: Int {
        /// Returns the current modifier state.
        get {
            let rv = Int(gdk_keymap_get_modifier_state(keymap_ptr))
            return rv
        }
    }

    /// Returns whether the Num Lock modifer is locked.
    @inlinable var numLockState: Bool {
        /// Returns whether the Num Lock modifer is locked.
        get {
            let rv = ((gdk_keymap_get_num_lock_state(keymap_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether the Scroll Lock modifer is locked.
    @inlinable var scrollLockState: Bool {
        /// Returns whether the Scroll Lock modifer is locked.
        get {
            let rv = ((gdk_keymap_get_scroll_lock_state(keymap_ptr)) != 0)
            return rv
        }
    }


}



