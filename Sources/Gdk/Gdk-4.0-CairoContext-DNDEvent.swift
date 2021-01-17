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

// MARK: - CairoContext Class

/// The `CairoContextProtocol` protocol exposes the methods and properties of an underlying `GdkCairoContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CairoContext`.
/// Alternatively, use `CairoContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkCairoContext` is an object representing the platform-specific
/// draw context.
/// 
/// `GdkCairoContexts` are created for a `GdkDisplay` using
/// `gdk_surface_create_cairo_context()`, and the context can then be used
/// to draw on that `GdkSurface`.
public protocol CairoContextProtocol: DrawContextProtocol {
        /// Untyped pointer to the underlying `GdkCairoContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkCairoContext` instance.
    var cairo_context_ptr: UnsafeMutablePointer<GdkCairoContext>! { get }

}

/// The `CairoContextRef` type acts as a lightweight Swift reference to an underlying `GdkCairoContext` instance.
/// It exposes methods that can operate on this data type through `CairoContextProtocol` conformance.
/// Use `CairoContextRef` only as an `unowned` reference to an existing `GdkCairoContext` instance.
///
/// `GdkCairoContext` is an object representing the platform-specific
/// draw context.
/// 
/// `GdkCairoContexts` are created for a `GdkDisplay` using
/// `gdk_surface_create_cairo_context()`, and the context can then be used
/// to draw on that `GdkSurface`.
public struct CairoContextRef: CairoContextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkCairoContext` instance.
    /// For type-safe access, use the generated, typed pointer `cairo_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CairoContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkCairoContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkCairoContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkCairoContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkCairoContext>?) {
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

    /// Reference intialiser for a related type that implements `CairoContextProtocol`
    @inlinable init<T: CairoContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: CairoContextProtocol>(_ other: T) -> CairoContextRef { CairoContextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CairoContext` type acts as a reference-counted owner of an underlying `GdkCairoContext` instance.
/// It provides the methods that can operate on this data type through `CairoContextProtocol` conformance.
/// Use `CairoContext` as a strong reference or owner of a `GdkCairoContext` instance.
///
/// `GdkCairoContext` is an object representing the platform-specific
/// draw context.
/// 
/// `GdkCairoContexts` are created for a `GdkDisplay` using
/// `gdk_surface_create_cairo_context()`, and the context can then be used
/// to draw on that `GdkSurface`.
open class CairoContext: DrawContext, CairoContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CairoContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkCairoContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CairoContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkCairoContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CairoContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CairoContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CairoContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkCairoContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CairoContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkCairoContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkCairoContext`.
    /// i.e., ownership is transferred to the `CairoContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkCairoContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CairoContextProtocol`
    /// Will retain `GdkCairoContext`.
    /// - Parameter other: an instance of a related type that implements `CairoContextProtocol`
    @inlinable public init<T: CairoContextProtocol>(cairoContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CairoContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum CairoContextPropertyName: String, PropertyNameProtocol {
    /// The `GdkDisplay` used to create the `GdkDrawContext`.
    case display = "display"
    /// The `GdkSurface` the context is bound to.
    case surface = "surface"
}

public extension CairoContextProtocol {
    /// Bind a `CairoContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: CairoContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a CairoContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: CairoContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a CairoContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: CairoContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum CairoContextSignalName: String, SignalNameProtocol {
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

// MARK: CairoContext has no signals
// MARK: CairoContext Class: CairoContextProtocol extension (methods and fields)
public extension CairoContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkCairoContext` instance.
    @inlinable var cairo_context_ptr: UnsafeMutablePointer<GdkCairoContext>! { return ptr?.assumingMemoryBound(to: GdkCairoContext.self) }

    /// Retrieves a Cairo context to be used to draw on the `GdkSurface`
    /// of `context`. A call to `gdk_draw_context_begin_frame()` with this
    /// `context` must have been done or this function will return `nil`.
    /// 
    /// The returned context is guaranteed to be valid until
    /// `gdk_draw_context_end_frame()` is called.
    @inlinable func cairoCreate() -> Cairo.ContextRef! {
        let rv = Cairo.ContextRef(gdk_cairo_context_cairo_create(cairo_context_ptr))
        return rv
    }


}



// MARK: - Clipboard Class

/// The `ClipboardProtocol` protocol exposes the methods and properties of an underlying `GdkClipboard` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Clipboard`.
/// Alternatively, use `ClipboardRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkClipboard` object represents a clipboard of data shared
/// between different applications or between different parts of
/// the same application.
/// 
/// To get a GdkClipboard object, use `gdk_display_get_clipboard()` or
/// `gdk_display_get_primary_clipboard()`. You can find out about the data that
/// is currently available in a clipboard using `gdk_clipboard_get_formats()`.
/// 
/// To make text or image data available in a clipboard, use `gdk_clipboard_set_text()` or
/// `gdk_clipboard_set_texture()`. For other data, you can use `gdk_clipboard_set_content()`,
/// which takes a `GdkContentProvider` object.
/// 
/// To read textual or image data from a clipboard, use `gdk_clipboard_read_text_async()` or
/// `gdk_clipboard_read_texture_async()`. For other data, use `gdk_clipboard_read_async()`,
/// which provides a `GInputStream` object.
public protocol ClipboardProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkClipboard` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkClipboard` instance.
    var clipboard_ptr: UnsafeMutablePointer<GdkClipboard>! { get }

}

/// The `ClipboardRef` type acts as a lightweight Swift reference to an underlying `GdkClipboard` instance.
/// It exposes methods that can operate on this data type through `ClipboardProtocol` conformance.
/// Use `ClipboardRef` only as an `unowned` reference to an existing `GdkClipboard` instance.
///
/// The `GdkClipboard` object represents a clipboard of data shared
/// between different applications or between different parts of
/// the same application.
/// 
/// To get a GdkClipboard object, use `gdk_display_get_clipboard()` or
/// `gdk_display_get_primary_clipboard()`. You can find out about the data that
/// is currently available in a clipboard using `gdk_clipboard_get_formats()`.
/// 
/// To make text or image data available in a clipboard, use `gdk_clipboard_set_text()` or
/// `gdk_clipboard_set_texture()`. For other data, you can use `gdk_clipboard_set_content()`,
/// which takes a `GdkContentProvider` object.
/// 
/// To read textual or image data from a clipboard, use `gdk_clipboard_read_text_async()` or
/// `gdk_clipboard_read_texture_async()`. For other data, use `gdk_clipboard_read_async()`,
/// which provides a `GInputStream` object.
public struct ClipboardRef: ClipboardProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkClipboard` instance.
    /// For type-safe access, use the generated, typed pointer `clipboard_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ClipboardRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkClipboard>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkClipboard>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkClipboard>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkClipboard>?) {
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

    /// Reference intialiser for a related type that implements `ClipboardProtocol`
    @inlinable init<T: ClipboardProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ClipboardProtocol>(_ other: T) -> ClipboardRef { ClipboardRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Clipboard` type acts as a reference-counted owner of an underlying `GdkClipboard` instance.
/// It provides the methods that can operate on this data type through `ClipboardProtocol` conformance.
/// Use `Clipboard` as a strong reference or owner of a `GdkClipboard` instance.
///
/// The `GdkClipboard` object represents a clipboard of data shared
/// between different applications or between different parts of
/// the same application.
/// 
/// To get a GdkClipboard object, use `gdk_display_get_clipboard()` or
/// `gdk_display_get_primary_clipboard()`. You can find out about the data that
/// is currently available in a clipboard using `gdk_clipboard_get_formats()`.
/// 
/// To make text or image data available in a clipboard, use `gdk_clipboard_set_text()` or
/// `gdk_clipboard_set_texture()`. For other data, you can use `gdk_clipboard_set_content()`,
/// which takes a `GdkContentProvider` object.
/// 
/// To read textual or image data from a clipboard, use `gdk_clipboard_read_text_async()` or
/// `gdk_clipboard_read_texture_async()`. For other data, use `gdk_clipboard_read_async()`,
/// which provides a `GInputStream` object.
open class Clipboard: GLibObject.Object, ClipboardProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Clipboard` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkClipboard>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Clipboard` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkClipboard>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Clipboard` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Clipboard` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Clipboard` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkClipboard>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Clipboard` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkClipboard>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkClipboard`.
    /// i.e., ownership is transferred to the `Clipboard` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkClipboard>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ClipboardProtocol`
    /// Will retain `GdkClipboard`.
    /// - Parameter other: an instance of a related type that implements `ClipboardProtocol`
    @inlinable public init<T: ClipboardProtocol>(clipboard other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClipboardProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ClipboardPropertyName: String, PropertyNameProtocol {
    /// The `GdkContentProvider` or `nil` if the clipboard is empty or contents are
    /// provided otherwise.
    case content = "content"
    /// The `GdkDisplay` that the clipboard belongs to.
    case display = "display"
    /// The possible formats that the clipboard can provide its data in.
    case formats = "formats"
    /// `true` if the contents of the clipboard are owned by this process.
    case local = "local"
}

public extension ClipboardProtocol {
    /// Bind a `ClipboardPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ClipboardPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Clipboard property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ClipboardPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Clipboard property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ClipboardPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ClipboardSignalName: String, SignalNameProtocol {
    /// The `changed` signal is emitted when the clipboard changes ownership.
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
    /// The `GdkContentProvider` or `nil` if the clipboard is empty or contents are
    /// provided otherwise.
    case notifyContent = "notify::content"
    /// The `GdkDisplay` that the clipboard belongs to.
    case notifyDisplay = "notify::display"
    /// The possible formats that the clipboard can provide its data in.
    case notifyFormats = "notify::formats"
    /// `true` if the contents of the clipboard are owned by this process.
    case notifyLocal = "notify::local"
}

// MARK: Clipboard signals
public extension ClipboardProtocol {
    /// Connect a Swift signal handler to the given, typed `ClipboardSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ClipboardSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ClipboardSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ClipboardSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `changed` signal is emitted when the clipboard changes ownership.
    /// - Note: This represents the underlying `changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changed` signal is emitted
    @discardableResult @inlinable func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ClipboardRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ClipboardRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ClipboardRef(raw: unownedSelf))
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
    static var changedSignal: ClipboardSignalName { .changed }
    
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
    @discardableResult @inlinable func onNotifyContent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ClipboardRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ClipboardRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ClipboardRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyContentSignal: ClipboardSignalName { .notifyContent }
    
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
    @discardableResult @inlinable func onNotifyDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ClipboardRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ClipboardRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ClipboardRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyDisplaySignal: ClipboardSignalName { .notifyDisplay }
    
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
    @discardableResult @inlinable func onNotifyFormats(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ClipboardRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ClipboardRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ClipboardRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyFormatsSignal: ClipboardSignalName { .notifyFormats }
    
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
    /// - Note: This represents the underlying `notify::local` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLocal` signal is emitted
    @discardableResult @inlinable func onNotifyLocal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ClipboardRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ClipboardRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ClipboardRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLocal,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::local` signal for using the `connect(signal:)` methods
    static var notifyLocalSignal: ClipboardSignalName { .notifyLocal }
    
}

// MARK: Clipboard Class: ClipboardProtocol extension (methods and fields)
public extension ClipboardProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkClipboard` instance.
    @inlinable var clipboard_ptr: UnsafeMutablePointer<GdkClipboard>! { return ptr?.assumingMemoryBound(to: GdkClipboard.self) }

    /// Returns the `GdkContentProvider` currently set on `clipboard`. If the
    /// `clipboard` is empty or its contents are not owned by the current process,
    /// `nil` will be returned.
    @inlinable func getContent() -> ContentProviderRef! {
        let rv = ContentProviderRef(gconstpointer: gconstpointer(gdk_clipboard_get_content(clipboard_ptr)))
        return rv
    }

    /// Gets the `GdkDisplay` that the clipboard was created for.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_clipboard_get_display(clipboard_ptr)))
        return rv
    }

    /// Gets the formats that the clipboard can provide its current contents in.
    @inlinable func getFormats() -> ContentFormatsRef! {
        let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_clipboard_get_formats(clipboard_ptr)))
        return rv
    }

    /// Asynchronously requests an input stream to read the `clipboard`'s
    /// contents from. When the operation is finished `callback` will be called.
    /// You can then call `gdk_clipboard_read_finish()` to get the result of the
    /// operation.
    /// 
    /// The clipboard will choose the most suitable mime type from the given list
    /// to fulfill the request, preferring the ones listed first.
    @inlinable func readAsync(mimeTypes: UnsafeMutablePointer<UnsafePointer<CChar>?>!, ioPriority: Int, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_async(clipboard_ptr, mimeTypes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously requests an input stream to read the `clipboard`'s
    /// contents from. When the operation is finished `callback` will be called.
    /// You can then call `gdk_clipboard_read_finish()` to get the result of the
    /// operation.
    /// 
    /// The clipboard will choose the most suitable mime type from the given list
    /// to fulfill the request, preferring the ones listed first.
    @inlinable func readAsync<CancellableT: GIO.CancellableProtocol>(mimeTypes: UnsafeMutablePointer<UnsafePointer<CChar>?>!, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_async(clipboard_ptr, mimeTypes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous clipboard read started with `gdk_clipboard_read_async()`.
    @inlinable func readFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT, outMimeType: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil) throws -> GIO.InputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GIO.InputStreamRef(gdk_clipboard_read_finish(clipboard_ptr, result.async_result_ptr, outMimeType, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously request the `clipboard` contents converted to a string.
    /// When the operation is finished `callback` will be called. You can then
    /// call `gdk_clipboard_read_text_finish()` to get the result.
    /// 
    /// This is a simple wrapper around `gdk_clipboard_read_value_async()`. Use
    /// that function or `gdk_clipboard_read_async()` directly if you need more
    /// control over the operation.
    @inlinable func readTextAsync(cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_text_async(clipboard_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously request the `clipboard` contents converted to a string.
    /// When the operation is finished `callback` will be called. You can then
    /// call `gdk_clipboard_read_text_finish()` to get the result.
    /// 
    /// This is a simple wrapper around `gdk_clipboard_read_value_async()`. Use
    /// that function or `gdk_clipboard_read_async()` directly if you need more
    /// control over the operation.
    @inlinable func readTextAsync<CancellableT: GIO.CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_text_async(clipboard_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous clipboard read started with
    /// `gdk_clipboard_read_text_async()`.
    @inlinable func readTextFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_clipboard_read_text_finish(clipboard_ptr, result.async_result_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously request the `clipboard` contents converted to a `GdkPixbuf`.
    /// When the operation is finished `callback` will be called. You can then
    /// call `gdk_clipboard_read_texture_finish()` to get the result.
    /// 
    /// This is a simple wrapper around `gdk_clipboard_read_value_async()`. Use
    /// that function or `gdk_clipboard_read_async()` directly if you need more
    /// control over the operation.
    @inlinable func readTextureAsync(cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_texture_async(clipboard_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously request the `clipboard` contents converted to a `GdkPixbuf`.
    /// When the operation is finished `callback` will be called. You can then
    /// call `gdk_clipboard_read_texture_finish()` to get the result.
    /// 
    /// This is a simple wrapper around `gdk_clipboard_read_value_async()`. Use
    /// that function or `gdk_clipboard_read_async()` directly if you need more
    /// control over the operation.
    @inlinable func readTextureAsync<CancellableT: GIO.CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_texture_async(clipboard_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous clipboard read started with
    /// `gdk_clipboard_read_texture_async()`.
    @inlinable func readTextureFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT) throws -> TextureRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TextureRef(gconstpointer: gconstpointer(gdk_clipboard_read_texture_finish(clipboard_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously request the `clipboard` contents converted to the given
    /// `type`. When the operation is finished `callback` will be called.
    /// You can then call `gdk_clipboard_read_value_finish()` to get the resulting
    /// `GValue`.
    /// 
    /// For local clipboard contents that are available in the given `GType`, the
    /// value will be copied directly. Otherwise, GDK will try to use
    /// `gdk_content_deserialize_async()` to convert the clipboard's data.
    @inlinable func readValueAsync(type: GType, ioPriority: Int, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_value_async(clipboard_ptr, type, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously request the `clipboard` contents converted to the given
    /// `type`. When the operation is finished `callback` will be called.
    /// You can then call `gdk_clipboard_read_value_finish()` to get the resulting
    /// `GValue`.
    /// 
    /// For local clipboard contents that are available in the given `GType`, the
    /// value will be copied directly. Otherwise, GDK will try to use
    /// `gdk_content_deserialize_async()` to convert the clipboard's data.
    @inlinable func readValueAsync<CancellableT: GIO.CancellableProtocol>(type: GType, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_read_value_async(clipboard_ptr, type, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous clipboard read started with
    /// `gdk_clipboard_read_value_async()`.
    @inlinable func readValueFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT) throws -> GLibObject.ValueRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLibObject.ValueRef(gdk_clipboard_read_value_finish(clipboard_ptr, result.async_result_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }


    // *** set() is not available because it has a varargs (...) parameter!


    /// Sets a new content provider on `clipboard`. The clipboard will claim the
    /// `GdkDisplay`'s resources and advertise these new contents to other
    /// applications.
    /// 
    /// In the rare case of a failure, this function will return `false`. The
    /// clipboard will then continue reporting its old contents and ignore
    /// `provider`.
    /// 
    /// If the contents are read by either an external application or the
    /// `clipboard`'s read functions, `clipboard` will select the best format to
    /// transfer the contents and then request that format from `provider`.
    @inlinable func setContent(provider: ContentProviderRef? = nil) -> Bool {
        let rv = ((gdk_clipboard_set_content(clipboard_ptr, provider?.content_provider_ptr)) != 0)
        return rv
    }
    /// Sets a new content provider on `clipboard`. The clipboard will claim the
    /// `GdkDisplay`'s resources and advertise these new contents to other
    /// applications.
    /// 
    /// In the rare case of a failure, this function will return `false`. The
    /// clipboard will then continue reporting its old contents and ignore
    /// `provider`.
    /// 
    /// If the contents are read by either an external application or the
    /// `clipboard`'s read functions, `clipboard` will select the best format to
    /// transfer the contents and then request that format from `provider`.
    @inlinable func setContent<ContentProviderT: ContentProviderProtocol>(provider: ContentProviderT?) -> Bool {
        let rv = ((gdk_clipboard_set_content(clipboard_ptr, provider?.content_provider_ptr)) != 0)
        return rv
    }

    /// Puts the given `text` into the clipboard.
    @inlinable func set(text: UnsafePointer<CChar>!) {
        gdk_clipboard_set_text(clipboard_ptr, text)
    
    }

    /// Puts the given `texture` into the clipboard.
    @inlinable func set<TextureT: TextureProtocol>(texture: TextureT) {
        gdk_clipboard_set_texture(clipboard_ptr, texture.texture_ptr)
    
    }

    /// Sets the clipboard to contain the value collected from the given
    /// `args`.
    @inlinable func setValist(type: GType, args: CVaListPointer) {
        gdk_clipboard_set_valist(clipboard_ptr, type, args)
    
    }

    /// Sets the `clipboard` to contain the given `value`.
    @inlinable func set<ValueT: GLibObject.ValueProtocol>(value: ValueT) {
        gdk_clipboard_set_value(clipboard_ptr, value.value_ptr)
    
    }

    /// Asynchronously instructs the `clipboard` to store its contents remotely to
    /// preserve them for later usage. If the clipboard is not local, this function
    /// does nothing but report success.
    /// 
    /// This function is called automatically when `gtk_main()` or `GtkApplication`
    /// exit, so you likely don't need to call it.
    @inlinable func storeAsync(ioPriority: Int, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_store_async(clipboard_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously instructs the `clipboard` to store its contents remotely to
    /// preserve them for later usage. If the clipboard is not local, this function
    /// does nothing but report success.
    /// 
    /// This function is called automatically when `gtk_main()` or `GtkApplication`
    /// exit, so you likely don't need to call it.
    @inlinable func storeAsync<CancellableT: GIO.CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_clipboard_store_async(clipboard_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous clipboard store started with `gdk_clipboard_store_async()`.
    @inlinable func storeFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_clipboard_store_finish(clipboard_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// The `GdkContentProvider` or `nil` if the clipboard is empty or contents are
    /// provided otherwise.
    @inlinable var content: ContentProviderRef! {
        /// Returns the `GdkContentProvider` currently set on `clipboard`. If the
        /// `clipboard` is empty or its contents are not owned by the current process,
        /// `nil` will be returned.
        get {
            let rv = ContentProviderRef(gconstpointer: gconstpointer(gdk_clipboard_get_content(clipboard_ptr)))
            return rv
        }
        /// Sets a new content provider on `clipboard`. The clipboard will claim the
        /// `GdkDisplay`'s resources and advertise these new contents to other
        /// applications.
        /// 
        /// In the rare case of a failure, this function will return `false`. The
        /// clipboard will then continue reporting its old contents and ignore
        /// `provider`.
        /// 
        /// If the contents are read by either an external application or the
        /// `clipboard`'s read functions, `clipboard` will select the best format to
        /// transfer the contents and then request that format from `provider`.
        nonmutating set {
            _ = gdk_clipboard_set_content(clipboard_ptr, UnsafeMutablePointer<GdkContentProvider>(newValue?.content_provider_ptr))
        }
    }

    /// The `GdkDisplay` that the clipboard belongs to.
    @inlinable var display: DisplayRef! {
        /// Gets the `GdkDisplay` that the clipboard was created for.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_clipboard_get_display(clipboard_ptr)))
            return rv
        }
    }

    /// The possible formats that the clipboard can provide its data in.
    @inlinable var formats: ContentFormatsRef! {
        /// Gets the formats that the clipboard can provide its current contents in.
        get {
            let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_clipboard_get_formats(clipboard_ptr)))
            return rv
        }
    }

    /// Returns if the clipboard is local. A clipboard is considered local if it was
    /// last claimed by the running application.
    /// 
    /// Note that `gdk_clipboard_get_content()` may return `nil` even on a local
    /// clipboard. In this case the clipboard is empty.
    @inlinable var isLocal: Bool {
        /// Returns if the clipboard is local. A clipboard is considered local if it was
        /// last claimed by the running application.
        /// 
        /// Note that `gdk_clipboard_get_content()` may return `nil` even on a local
        /// clipboard. In this case the clipboard is empty.
        get {
            let rv = ((gdk_clipboard_is_local(clipboard_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - ContentDeserializer Class

/// The `ContentDeserializerProtocol` protocol exposes the methods and properties of an underlying `GdkContentDeserializer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContentDeserializer`.
/// Alternatively, use `ContentDeserializerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GdkContentDeserializer is used to deserialize content received via
/// inter-application data transfers.
public protocol ContentDeserializerProtocol: GLibObject.ObjectProtocol, GIO.AsyncResultProtocol {
        /// Untyped pointer to the underlying `GdkContentDeserializer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkContentDeserializer` instance.
    var content_deserializer_ptr: UnsafeMutablePointer<GdkContentDeserializer>! { get }

}

/// The `ContentDeserializerRef` type acts as a lightweight Swift reference to an underlying `GdkContentDeserializer` instance.
/// It exposes methods that can operate on this data type through `ContentDeserializerProtocol` conformance.
/// Use `ContentDeserializerRef` only as an `unowned` reference to an existing `GdkContentDeserializer` instance.
///
/// A GdkContentDeserializer is used to deserialize content received via
/// inter-application data transfers.
public struct ContentDeserializerRef: ContentDeserializerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkContentDeserializer` instance.
    /// For type-safe access, use the generated, typed pointer `content_deserializer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContentDeserializerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkContentDeserializer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkContentDeserializer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkContentDeserializer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkContentDeserializer>?) {
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

    /// Reference intialiser for a related type that implements `ContentDeserializerProtocol`
    @inlinable init<T: ContentDeserializerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ContentDeserializerProtocol>(_ other: T) -> ContentDeserializerRef { ContentDeserializerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContentDeserializer` type acts as a reference-counted owner of an underlying `GdkContentDeserializer` instance.
/// It provides the methods that can operate on this data type through `ContentDeserializerProtocol` conformance.
/// Use `ContentDeserializer` as a strong reference or owner of a `GdkContentDeserializer` instance.
///
/// A GdkContentDeserializer is used to deserialize content received via
/// inter-application data transfers.
open class ContentDeserializer: GLibObject.Object, ContentDeserializerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentDeserializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkContentDeserializer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentDeserializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkContentDeserializer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentDeserializer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentDeserializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentDeserializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkContentDeserializer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentDeserializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkContentDeserializer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkContentDeserializer`.
    /// i.e., ownership is transferred to the `ContentDeserializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkContentDeserializer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ContentDeserializerProtocol`
    /// Will retain `GdkContentDeserializer`.
    /// - Parameter other: an instance of a related type that implements `ContentDeserializerProtocol`
    @inlinable public init<T: ContentDeserializerProtocol>(contentDeserializer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentDeserializerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ContentDeserializer properties

public enum ContentDeserializerSignalName: String, SignalNameProtocol {
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

// MARK: ContentDeserializer has no signals
// MARK: ContentDeserializer Class: ContentDeserializerProtocol extension (methods and fields)
public extension ContentDeserializerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkContentDeserializer` instance.
    @inlinable var content_deserializer_ptr: UnsafeMutablePointer<GdkContentDeserializer>! { return ptr?.assumingMemoryBound(to: GdkContentDeserializer.self) }

    /// Gets the cancellable that was passed to `gdk_content_deserialize_async()`.
    @inlinable func getCancellable() -> GIO.CancellableRef! {
        let rv = GIO.CancellableRef(gdk_content_deserializer_get_cancellable(content_deserializer_ptr))
        return rv
    }

    /// Gets the GType to create an instance of.
    @inlinable func getGtype() -> GType {
        let rv = gdk_content_deserializer_get_gtype(content_deserializer_ptr)
        return rv
    }

    /// Gets the input stream that was passed to `gdk_content_deserialize_async()`.
    @inlinable func getInputStream() -> GIO.InputStreamRef! {
        let rv = GIO.InputStreamRef(gdk_content_deserializer_get_input_stream(content_deserializer_ptr))
        return rv
    }

    /// Gets the mime type to deserialize from.
    @inlinable func getMimeType() -> String! {
        let rv = gdk_content_deserializer_get_mime_type(content_deserializer_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the io priority that was passed to `gdk_content_deserialize_async()`.
    @inlinable func getPriority() -> Int {
        let rv = Int(gdk_content_deserializer_get_priority(content_deserializer_ptr))
        return rv
    }

    /// Gets the data that was associated with `deserializer` via `gdk_content_deserializer_set_task_data()`.
    @inlinable func getTaskData() -> gpointer! {
        let rv = gdk_content_deserializer_get_task_data(content_deserializer_ptr)
        return rv
    }

    /// Gets the user data that was passed when the deserializer was registered.
    @inlinable func getUserData() -> gpointer! {
        let rv = gdk_content_deserializer_get_user_data(content_deserializer_ptr)
        return rv
    }

    /// Gets the `GValue` to store the deserialized object in.
    @inlinable func getValue() -> GLibObject.ValueRef! {
        let rv = GLibObject.ValueRef(gdk_content_deserializer_get_value(content_deserializer_ptr))
        return rv
    }

    /// Indicate that the deserialization has ended with an error.
    /// This function consumes `error`.
    @inlinable func return_<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        gdk_content_deserializer_return_error(content_deserializer_ptr, error.error_ptr)
    
    }

    /// Indicate that the deserialization has been successfully completed.
    @inlinable func returnSuccess() {
        gdk_content_deserializer_return_success(content_deserializer_ptr)
    
    }

    /// Associate data with the current deserialization operation.
    @inlinable func setTask(data: gpointer! = nil, notify: GDestroyNotify?) {
        gdk_content_deserializer_set_task_data(content_deserializer_ptr, data, notify)
    
    }
    /// Gets the cancellable that was passed to `gdk_content_deserialize_async()`.
    @inlinable var cancellable: GIO.CancellableRef! {
        /// Gets the cancellable that was passed to `gdk_content_deserialize_async()`.
        get {
            let rv = GIO.CancellableRef(gdk_content_deserializer_get_cancellable(content_deserializer_ptr))
            return rv
        }
    }

    /// Gets the GType to create an instance of.
    @inlinable var gtype: GType {
        /// Gets the GType to create an instance of.
        get {
            let rv = gdk_content_deserializer_get_gtype(content_deserializer_ptr)
            return rv
        }
    }

    /// Gets the input stream that was passed to `gdk_content_deserialize_async()`.
    @inlinable var inputStream: GIO.InputStreamRef! {
        /// Gets the input stream that was passed to `gdk_content_deserialize_async()`.
        get {
            let rv = GIO.InputStreamRef(gdk_content_deserializer_get_input_stream(content_deserializer_ptr))
            return rv
        }
    }

    /// Gets the mime type to deserialize from.
    @inlinable var mimeType: String! {
        /// Gets the mime type to deserialize from.
        get {
            let rv = gdk_content_deserializer_get_mime_type(content_deserializer_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the io priority that was passed to `gdk_content_deserialize_async()`.
    @inlinable var priority: Int {
        /// Gets the io priority that was passed to `gdk_content_deserialize_async()`.
        get {
            let rv = Int(gdk_content_deserializer_get_priority(content_deserializer_ptr))
            return rv
        }
    }

    /// Gets the data that was associated with `deserializer` via `gdk_content_deserializer_set_task_data()`.
    @inlinable var taskData: gpointer! {
        /// Gets the data that was associated with `deserializer` via `gdk_content_deserializer_set_task_data()`.
        get {
            let rv = gdk_content_deserializer_get_task_data(content_deserializer_ptr)
            return rv
        }
    }

    /// Gets the user data that was passed when the deserializer was registered.
    @inlinable var userData: gpointer! {
        /// Gets the user data that was passed when the deserializer was registered.
        get {
            let rv = gdk_content_deserializer_get_user_data(content_deserializer_ptr)
            return rv
        }
    }

    /// Gets the `GValue` to store the deserialized object in.
    @inlinable var value: GLibObject.ValueRef! {
        /// Gets the `GValue` to store the deserialized object in.
        get {
            let rv = GLibObject.ValueRef(gdk_content_deserializer_get_value(content_deserializer_ptr))
            return rv
        }
    }


}



// MARK: - ContentProvider Class

/// The `ContentProviderProtocol` protocol exposes the methods and properties of an underlying `GdkContentProvider` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContentProvider`.
/// Alternatively, use `ContentProviderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GdkContentProvider is used to provide content for the clipboard in
/// a number of formats.
/// 
/// To create a GdkContentProvider, use `gdk_content_provider_new_for_value()` or
/// `gdk_content_provider_new_for_bytes()`.
/// 
/// GDK knows how to handle common text and image formats out-of-the-box. See
/// `GdkContentSerializer` and `GdkContentDeserializer` if you want to add support
/// for application-specific data formats.
public protocol ContentProviderProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkContentProvider` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkContentProvider` instance.
    var content_provider_ptr: UnsafeMutablePointer<GdkContentProvider>! { get }

}

/// The `ContentProviderRef` type acts as a lightweight Swift reference to an underlying `GdkContentProvider` instance.
/// It exposes methods that can operate on this data type through `ContentProviderProtocol` conformance.
/// Use `ContentProviderRef` only as an `unowned` reference to an existing `GdkContentProvider` instance.
///
/// A GdkContentProvider is used to provide content for the clipboard in
/// a number of formats.
/// 
/// To create a GdkContentProvider, use `gdk_content_provider_new_for_value()` or
/// `gdk_content_provider_new_for_bytes()`.
/// 
/// GDK knows how to handle common text and image formats out-of-the-box. See
/// `GdkContentSerializer` and `GdkContentDeserializer` if you want to add support
/// for application-specific data formats.
public struct ContentProviderRef: ContentProviderProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkContentProvider` instance.
    /// For type-safe access, use the generated, typed pointer `content_provider_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContentProviderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkContentProvider>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkContentProvider>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkContentProvider>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkContentProvider>?) {
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

    /// Reference intialiser for a related type that implements `ContentProviderProtocol`
    @inlinable init<T: ContentProviderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ContentProviderProtocol>(_ other: T) -> ContentProviderRef { ContentProviderRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a content provider that provides the given `bytes` as data for
    /// the given `mime_type`.
    @inlinable init<BytesT: GLib.BytesProtocol>(bytes mimeType: UnsafePointer<CChar>!, bytes: BytesT) {
        let rv = gdk_content_provider_new_for_bytes(mimeType, bytes.bytes_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Create a content provider that provides the given `value`.
    @inlinable init<ValueT: GLibObject.ValueProtocol>(value: ValueT) {
        let rv = gdk_content_provider_new_for_value(value.value_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newTyped() is not available because it has a varargs (...) parameter!


    /// Creates a content provider that represents all the given `providers`.
    /// 
    /// Whenever data needs to be written, the union provider will try the given
    /// `providers` in the given order and the first one supporting a format will
    /// be chosen to provide it.
    /// 
    /// This allows an easy way to support providing data in different formats.
    /// For example, an image may be provided by its file and by the image
    /// contents with a call such as
    /// (C Language Example):
    /// ```C
    /// gdk_content_provider_new_union ((GdkContentProvider *[2]) {
    ///                                   gdk_content_provider_new_typed (G_TYPE_FILE, file),
    ///                                   gdk_content_provider_new_typed (G_TYPE_TEXTURE, texture)
    ///                                 }, 2);
    /// ```
    /// 
    @inlinable init(union providers: UnsafeMutablePointer<UnsafeMutablePointer<GdkContentProvider>?>! = nil, nProviders: Int) {
        let rv = gdk_content_provider_new_union(providers, gsize(nProviders))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Create a content provider that provides the given `bytes` as data for
    /// the given `mime_type`.
    @inlinable static func newFor<BytesT: GLib.BytesProtocol>(bytes mimeType: UnsafePointer<CChar>!, bytes: BytesT) -> ContentProviderRef! {
        guard let rv = ContentProviderRef(gconstpointer: gconstpointer(gdk_content_provider_new_for_bytes(mimeType, bytes.bytes_ptr))) else { return nil }
        return rv
    }

    /// Create a content provider that provides the given `value`.
    @inlinable static func newFor<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> ContentProviderRef! {
        guard let rv = ContentProviderRef(gconstpointer: gconstpointer(gdk_content_provider_new_for_value(value.value_ptr))) else { return nil }
        return rv
    }


    // *** newTyped() is not available because it has a varargs (...) parameter!


    /// Creates a content provider that represents all the given `providers`.
    /// 
    /// Whenever data needs to be written, the union provider will try the given
    /// `providers` in the given order and the first one supporting a format will
    /// be chosen to provide it.
    /// 
    /// This allows an easy way to support providing data in different formats.
    /// For example, an image may be provided by its file and by the image
    /// contents with a call such as
    /// (C Language Example):
    /// ```C
    /// gdk_content_provider_new_union ((GdkContentProvider *[2]) {
    ///                                   gdk_content_provider_new_typed (G_TYPE_FILE, file),
    ///                                   gdk_content_provider_new_typed (G_TYPE_TEXTURE, texture)
    ///                                 }, 2);
    /// ```
    /// 
    @inlinable static func new(union providers: UnsafeMutablePointer<UnsafeMutablePointer<GdkContentProvider>?>! = nil, nProviders: Int) -> ContentProviderRef! {
        guard let rv = ContentProviderRef(gconstpointer: gconstpointer(gdk_content_provider_new_union(providers, gsize(nProviders)))) else { return nil }
        return rv
    }
}

/// The `ContentProvider` type acts as a reference-counted owner of an underlying `GdkContentProvider` instance.
/// It provides the methods that can operate on this data type through `ContentProviderProtocol` conformance.
/// Use `ContentProvider` as a strong reference or owner of a `GdkContentProvider` instance.
///
/// A GdkContentProvider is used to provide content for the clipboard in
/// a number of formats.
/// 
/// To create a GdkContentProvider, use `gdk_content_provider_new_for_value()` or
/// `gdk_content_provider_new_for_bytes()`.
/// 
/// GDK knows how to handle common text and image formats out-of-the-box. See
/// `GdkContentSerializer` and `GdkContentDeserializer` if you want to add support
/// for application-specific data formats.
open class ContentProvider: GLibObject.Object, ContentProviderProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkContentProvider>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkContentProvider>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProvider` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkContentProvider>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkContentProvider>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkContentProvider`.
    /// i.e., ownership is transferred to the `ContentProvider` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkContentProvider>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ContentProviderProtocol`
    /// Will retain `GdkContentProvider`.
    /// - Parameter other: an instance of a related type that implements `ContentProviderProtocol`
    @inlinable public init<T: ContentProviderProtocol>(contentProvider other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a content provider that provides the given `bytes` as data for
    /// the given `mime_type`.
    @inlinable public init<BytesT: GLib.BytesProtocol>(bytes mimeType: UnsafePointer<CChar>!, bytes: BytesT) {
        let rv = gdk_content_provider_new_for_bytes(mimeType, bytes.bytes_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Create a content provider that provides the given `value`.
    @inlinable public init<ValueT: GLibObject.ValueProtocol>(value: ValueT) {
        let rv = gdk_content_provider_new_for_value(value.value_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


    // *** newTyped() is not available because it has a varargs (...) parameter!


    /// Creates a content provider that represents all the given `providers`.
    /// 
    /// Whenever data needs to be written, the union provider will try the given
    /// `providers` in the given order and the first one supporting a format will
    /// be chosen to provide it.
    /// 
    /// This allows an easy way to support providing data in different formats.
    /// For example, an image may be provided by its file and by the image
    /// contents with a call such as
    /// (C Language Example):
    /// ```C
    /// gdk_content_provider_new_union ((GdkContentProvider *[2]) {
    ///                                   gdk_content_provider_new_typed (G_TYPE_FILE, file),
    ///                                   gdk_content_provider_new_typed (G_TYPE_TEXTURE, texture)
    ///                                 }, 2);
    /// ```
    /// 
    @inlinable public init(union providers: UnsafeMutablePointer<UnsafeMutablePointer<GdkContentProvider>?>! = nil, nProviders: Int) {
        let rv = gdk_content_provider_new_union(providers, gsize(nProviders))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Create a content provider that provides the given `bytes` as data for
    /// the given `mime_type`.
    @inlinable public static func newFor<BytesT: GLib.BytesProtocol>(bytes mimeType: UnsafePointer<CChar>!, bytes: BytesT) -> ContentProvider! {
        guard let rv = ContentProvider(gconstpointer: gconstpointer(gdk_content_provider_new_for_bytes(mimeType, bytes.bytes_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Create a content provider that provides the given `value`.
    @inlinable public static func newFor<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> ContentProvider! {
        guard let rv = ContentProvider(gconstpointer: gconstpointer(gdk_content_provider_new_for_value(value.value_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }


    // *** newTyped() is not available because it has a varargs (...) parameter!


    /// Creates a content provider that represents all the given `providers`.
    /// 
    /// Whenever data needs to be written, the union provider will try the given
    /// `providers` in the given order and the first one supporting a format will
    /// be chosen to provide it.
    /// 
    /// This allows an easy way to support providing data in different formats.
    /// For example, an image may be provided by its file and by the image
    /// contents with a call such as
    /// (C Language Example):
    /// ```C
    /// gdk_content_provider_new_union ((GdkContentProvider *[2]) {
    ///                                   gdk_content_provider_new_typed (G_TYPE_FILE, file),
    ///                                   gdk_content_provider_new_typed (G_TYPE_TEXTURE, texture)
    ///                                 }, 2);
    /// ```
    /// 
    @inlinable public static func new(union providers: UnsafeMutablePointer<UnsafeMutablePointer<GdkContentProvider>?>! = nil, nProviders: Int) -> ContentProvider! {
        guard let rv = ContentProvider(gconstpointer: gconstpointer(gdk_content_provider_new_union(providers, gsize(nProviders)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ContentProviderPropertyName: String, PropertyNameProtocol {
    /// The possible formats that the provider can provide its data in.
    case formats = "formats"
    /// The subset of formats that clipboard managers should store this provider's data in.
    case storableFormats = "storable-formats"
}

public extension ContentProviderProtocol {
    /// Bind a `ContentProviderPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ContentProviderPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ContentProvider property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ContentProviderPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ContentProvider property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ContentProviderPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ContentProviderSignalName: String, SignalNameProtocol {
    /// Emitted whenever the content provided by this provider has changed.
    case contentChanged = "content-changed"
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
    /// The possible formats that the provider can provide its data in.
    case notifyFormats = "notify::formats"
    /// The subset of formats that clipboard managers should store this provider's data in.
    case notifyStorableFormats = "notify::storable-formats"
}

// MARK: ContentProvider signals
public extension ContentProviderProtocol {
    /// Connect a Swift signal handler to the given, typed `ContentProviderSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ContentProviderSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ContentProviderSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ContentProviderSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted whenever the content provided by this provider has changed.
    /// - Note: This represents the underlying `content-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `contentChanged` signal is emitted
    @discardableResult @inlinable func onContentChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ContentProviderRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ContentProviderRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ContentProviderRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .contentChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `content-changed` signal for using the `connect(signal:)` methods
    static var contentChangedSignal: ContentProviderSignalName { .contentChanged }
    
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
    @discardableResult @inlinable func onNotifyFormats(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ContentProviderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ContentProviderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ContentProviderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyFormatsSignal: ContentProviderSignalName { .notifyFormats }
    
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
    /// - Note: This represents the underlying `notify::storable-formats` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyStorableFormats` signal is emitted
    @discardableResult @inlinable func onNotifyStorableFormats(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ContentProviderRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ContentProviderRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ContentProviderRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyStorableFormats,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::storable-formats` signal for using the `connect(signal:)` methods
    static var notifyStorableFormatsSignal: ContentProviderSignalName { .notifyStorableFormats }
    
}

// MARK: ContentProvider Class: ContentProviderProtocol extension (methods and fields)
public extension ContentProviderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkContentProvider` instance.
    @inlinable var content_provider_ptr: UnsafeMutablePointer<GdkContentProvider>! { return ptr?.assumingMemoryBound(to: GdkContentProvider.self) }

    /// Emits the `GdkContentProvider::content`-changed signal.
    @inlinable func contentChanged() {
        gdk_content_provider_content_changed(content_provider_ptr)
    
    }

    /// Gets the contents of `provider` stored in `value`.
    /// 
    /// The `value` will have been initialized to the `GType` the value should be
    /// provided in. This given `GType` does not need to be listed in the formats
    /// returned by `gdk_content_provider_ref_formats()`. However, if the given
    /// `GType` is not supported, this operation can fail and
    /// `G_IO_ERROR_NOT_SUPPORTED` will be reported.
    @inlinable func get<ValueT: GLibObject.ValueProtocol>(value: ValueT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_content_provider_get_value(content_provider_ptr, value.value_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the formats that the provider can provide its current contents in.
    @inlinable func refFormats() -> ContentFormatsRef! {
        let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_provider_ref_formats(content_provider_ptr)))
        return rv
    }

    /// Gets the formats that the provider suggests other applications to store
    /// the data in.
    /// An example of such an application would be a clipboard manager.
    /// 
    /// This can be assumed to be a subset of `gdk_content_provider_ref_formats()`.
    @inlinable func refStorableFormats() -> ContentFormatsRef! {
        let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_provider_ref_storable_formats(content_provider_ptr)))
        return rv
    }

    /// Asynchronously writes the contents of `provider` to `stream` in the given
    /// `mime_type`. When the operation is finished `callback` will be called. You
    /// can then call `gdk_content_provider_write_mime_type_finish()` to get the
    /// result of the operation.
    /// 
    /// The given mime type does not need to be listed in the formats returned by
    /// `gdk_content_provider_ref_formats()`. However, if the given `GType` is not
    /// supported, `G_IO_ERROR_NOT_SUPPORTED` will be reported.
    /// 
    /// The given `stream` will not be closed.
    @inlinable func writeMimeTypeAsync<OutputStreamT: GIO.OutputStreamProtocol>(mimeType: UnsafePointer<CChar>!, stream: OutputStreamT, ioPriority: Int, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_content_provider_write_mime_type_async(content_provider_ptr, mimeType, stream.output_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously writes the contents of `provider` to `stream` in the given
    /// `mime_type`. When the operation is finished `callback` will be called. You
    /// can then call `gdk_content_provider_write_mime_type_finish()` to get the
    /// result of the operation.
    /// 
    /// The given mime type does not need to be listed in the formats returned by
    /// `gdk_content_provider_ref_formats()`. However, if the given `GType` is not
    /// supported, `G_IO_ERROR_NOT_SUPPORTED` will be reported.
    /// 
    /// The given `stream` will not be closed.
    @inlinable func writeMimeTypeAsync<CancellableT: GIO.CancellableProtocol, OutputStreamT: GIO.OutputStreamProtocol>(mimeType: UnsafePointer<CChar>!, stream: OutputStreamT, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_content_provider_write_mime_type_async(content_provider_ptr, mimeType, stream.output_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous write operation started with
    /// `gdk_content_provider_write_mime_type_async()`.
    @inlinable func writeMimeTypeFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_content_provider_write_mime_type_finish(content_provider_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    @inlinable var parent: GObject {
        get {
            let rv = content_provider_ptr.pointee.parent
            return rv
        }
    }

}



// MARK: - ContentSerializer Class

/// The `ContentSerializerProtocol` protocol exposes the methods and properties of an underlying `GdkContentSerializer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContentSerializer`.
/// Alternatively, use `ContentSerializerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GdkContentSerializer is used to serialize content for inter-application
/// data transfers.
public protocol ContentSerializerProtocol: GLibObject.ObjectProtocol, GIO.AsyncResultProtocol {
        /// Untyped pointer to the underlying `GdkContentSerializer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkContentSerializer` instance.
    var content_serializer_ptr: UnsafeMutablePointer<GdkContentSerializer>! { get }

}

/// The `ContentSerializerRef` type acts as a lightweight Swift reference to an underlying `GdkContentSerializer` instance.
/// It exposes methods that can operate on this data type through `ContentSerializerProtocol` conformance.
/// Use `ContentSerializerRef` only as an `unowned` reference to an existing `GdkContentSerializer` instance.
///
/// A GdkContentSerializer is used to serialize content for inter-application
/// data transfers.
public struct ContentSerializerRef: ContentSerializerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkContentSerializer` instance.
    /// For type-safe access, use the generated, typed pointer `content_serializer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContentSerializerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkContentSerializer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkContentSerializer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkContentSerializer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkContentSerializer>?) {
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

    /// Reference intialiser for a related type that implements `ContentSerializerProtocol`
    @inlinable init<T: ContentSerializerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ContentSerializerProtocol>(_ other: T) -> ContentSerializerRef { ContentSerializerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContentSerializer` type acts as a reference-counted owner of an underlying `GdkContentSerializer` instance.
/// It provides the methods that can operate on this data type through `ContentSerializerProtocol` conformance.
/// Use `ContentSerializer` as a strong reference or owner of a `GdkContentSerializer` instance.
///
/// A GdkContentSerializer is used to serialize content for inter-application
/// data transfers.
open class ContentSerializer: GLibObject.Object, ContentSerializerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentSerializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkContentSerializer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentSerializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkContentSerializer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentSerializer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentSerializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentSerializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkContentSerializer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentSerializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkContentSerializer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkContentSerializer`.
    /// i.e., ownership is transferred to the `ContentSerializer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkContentSerializer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ContentSerializerProtocol`
    /// Will retain `GdkContentSerializer`.
    /// - Parameter other: an instance of a related type that implements `ContentSerializerProtocol`
    @inlinable public init<T: ContentSerializerProtocol>(contentSerializer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentSerializerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ContentSerializer properties

public enum ContentSerializerSignalName: String, SignalNameProtocol {
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

// MARK: ContentSerializer has no signals
// MARK: ContentSerializer Class: ContentSerializerProtocol extension (methods and fields)
public extension ContentSerializerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkContentSerializer` instance.
    @inlinable var content_serializer_ptr: UnsafeMutablePointer<GdkContentSerializer>! { return ptr?.assumingMemoryBound(to: GdkContentSerializer.self) }

    /// Gets the cancellable that was passed to `gdk_content_serialize_async()`.
    @inlinable func getCancellable() -> GIO.CancellableRef! {
        let rv = GIO.CancellableRef(gdk_content_serializer_get_cancellable(content_serializer_ptr))
        return rv
    }

    /// Gets the GType to of the object to serialize.
    @inlinable func getGtype() -> GType {
        let rv = gdk_content_serializer_get_gtype(content_serializer_ptr)
        return rv
    }

    /// Gets the mime type to serialize to.
    @inlinable func getMimeType() -> String! {
        let rv = gdk_content_serializer_get_mime_type(content_serializer_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the output stream that was passed to `gdk_content_serialize_async()`.
    @inlinable func getOutputStream() -> GIO.OutputStreamRef! {
        let rv = GIO.OutputStreamRef(gdk_content_serializer_get_output_stream(content_serializer_ptr))
        return rv
    }

    /// Gets the io priority that was passed to `gdk_content_serialize_async()`.
    @inlinable func getPriority() -> Int {
        let rv = Int(gdk_content_serializer_get_priority(content_serializer_ptr))
        return rv
    }

    /// Gets the data that was associated with `serializer` via `gdk_content_serializer_set_task_data()`.
    @inlinable func getTaskData() -> gpointer! {
        let rv = gdk_content_serializer_get_task_data(content_serializer_ptr)
        return rv
    }

    /// Gets the user data that was passed when the serializer was registered.
    @inlinable func getUserData() -> gpointer! {
        let rv = gdk_content_serializer_get_user_data(content_serializer_ptr)
        return rv
    }

    /// Gets the `GValue` to read the object to serialize from.
    @inlinable func getValue() -> GLibObject.ValueRef! {
        let rv = GLibObject.ValueRef(gdk_content_serializer_get_value(content_serializer_ptr))
        return rv
    }

    /// Indicate that the serialization has ended with an error.
    /// This function consumes `error`.
    @inlinable func return_<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        gdk_content_serializer_return_error(content_serializer_ptr, error.error_ptr)
    
    }

    /// Indicate that the serialization has been successfully completed.
    @inlinable func returnSuccess() {
        gdk_content_serializer_return_success(content_serializer_ptr)
    
    }

    /// Associate data with the current serialization operation.
    @inlinable func setTask(data: gpointer! = nil, notify: GDestroyNotify?) {
        gdk_content_serializer_set_task_data(content_serializer_ptr, data, notify)
    
    }
    /// Gets the cancellable that was passed to `gdk_content_serialize_async()`.
    @inlinable var cancellable: GIO.CancellableRef! {
        /// Gets the cancellable that was passed to `gdk_content_serialize_async()`.
        get {
            let rv = GIO.CancellableRef(gdk_content_serializer_get_cancellable(content_serializer_ptr))
            return rv
        }
    }

    /// Gets the GType to of the object to serialize.
    @inlinable var gtype: GType {
        /// Gets the GType to of the object to serialize.
        get {
            let rv = gdk_content_serializer_get_gtype(content_serializer_ptr)
            return rv
        }
    }

    /// Gets the mime type to serialize to.
    @inlinable var mimeType: String! {
        /// Gets the mime type to serialize to.
        get {
            let rv = gdk_content_serializer_get_mime_type(content_serializer_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the output stream that was passed to `gdk_content_serialize_async()`.
    @inlinable var outputStream: GIO.OutputStreamRef! {
        /// Gets the output stream that was passed to `gdk_content_serialize_async()`.
        get {
            let rv = GIO.OutputStreamRef(gdk_content_serializer_get_output_stream(content_serializer_ptr))
            return rv
        }
    }

    /// Gets the io priority that was passed to `gdk_content_serialize_async()`.
    @inlinable var priority: Int {
        /// Gets the io priority that was passed to `gdk_content_serialize_async()`.
        get {
            let rv = Int(gdk_content_serializer_get_priority(content_serializer_ptr))
            return rv
        }
    }

    /// Gets the data that was associated with `serializer` via `gdk_content_serializer_set_task_data()`.
    @inlinable var taskData: gpointer! {
        /// Gets the data that was associated with `serializer` via `gdk_content_serializer_set_task_data()`.
        get {
            let rv = gdk_content_serializer_get_task_data(content_serializer_ptr)
            return rv
        }
    }

    /// Gets the user data that was passed when the serializer was registered.
    @inlinable var userData: gpointer! {
        /// Gets the user data that was passed when the serializer was registered.
        get {
            let rv = gdk_content_serializer_get_user_data(content_serializer_ptr)
            return rv
        }
    }

    /// Gets the `GValue` to read the object to serialize from.
    @inlinable var value: GLibObject.ValueRef! {
        /// Gets the `GValue` to read the object to serialize from.
        get {
            let rv = GLibObject.ValueRef(gdk_content_serializer_get_value(content_serializer_ptr))
            return rv
        }
    }


}



// MARK: - CrossingEvent Class

/// The `CrossingEventProtocol` protocol exposes the methods and properties of an underlying `GdkCrossingEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CrossingEvent`.
/// Alternatively, use `CrossingEventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An event caused by a pointing device moving between surfaces.
public protocol CrossingEventProtocol: EventProtocol {
        /// Untyped pointer to the underlying `GdkCrossingEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkCrossingEvent` instance.
    var crossing_event_ptr: UnsafeMutablePointer<GdkCrossingEvent>! { get }

}

/// The `CrossingEventRef` type acts as a lightweight Swift reference to an underlying `GdkCrossingEvent` instance.
/// It exposes methods that can operate on this data type through `CrossingEventProtocol` conformance.
/// Use `CrossingEventRef` only as an `unowned` reference to an existing `GdkCrossingEvent` instance.
///
/// An event caused by a pointing device moving between surfaces.
public struct CrossingEventRef: CrossingEventProtocol {
        /// Untyped pointer to the underlying `GdkCrossingEvent` instance.
    /// For type-safe access, use the generated, typed pointer `crossing_event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CrossingEventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkCrossingEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkCrossingEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkCrossingEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkCrossingEvent>?) {
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

    /// Reference intialiser for a related type that implements `CrossingEventProtocol`
    @inlinable init<T: CrossingEventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CrossingEvent` type acts as a reference-counted owner of an underlying `GdkCrossingEvent` instance.
/// It provides the methods that can operate on this data type through `CrossingEventProtocol` conformance.
/// Use `CrossingEvent` as a strong reference or owner of a `GdkCrossingEvent` instance.
///
/// An event caused by a pointing device moving between surfaces.
open class CrossingEvent: Event, CrossingEventProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CrossingEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkCrossingEvent>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CrossingEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkCrossingEvent>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CrossingEvent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CrossingEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CrossingEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkCrossingEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CrossingEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkCrossingEvent>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkCrossingEvent`.
    /// i.e., ownership is transferred to the `CrossingEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkCrossingEvent>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CrossingEventProtocol`
    /// Will retain `GdkCrossingEvent`.
    /// - Parameter other: an instance of a related type that implements `CrossingEventProtocol`
    @inlinable public init<T: CrossingEventProtocol>(crossingEvent other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CrossingEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no CrossingEvent properties

// MARK: no CrossingEvent signals

// MARK: CrossingEvent has no signals
// MARK: CrossingEvent Class: CrossingEventProtocol extension (methods and fields)
public extension CrossingEventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkCrossingEvent` instance.
    @inlinable var crossing_event_ptr: UnsafeMutablePointer<GdkCrossingEvent>! { return ptr?.assumingMemoryBound(to: GdkCrossingEvent.self) }

    /// Extracts the notify detail from a crossing event.
    @inlinable func getDetail() -> GdkNotifyType {
        let rv = gdk_crossing_event_get_detail(event_ptr)
        return rv
    }

    /// Checks if the `event` surface is the focus surface.
    @inlinable func getFocus() -> Bool {
        let rv = ((gdk_crossing_event_get_focus(event_ptr)) != 0)
        return rv
    }

    /// Extracts the crossing mode from a crossing event.
    @inlinable func getMode() -> GdkCrossingMode {
        let rv = gdk_crossing_event_get_mode(event_ptr)
        return rv
    }
    /// Extracts the notify detail from a crossing event.
    @inlinable var detail: GdkNotifyType {
        /// Extracts the notify detail from a crossing event.
        get {
            let rv = gdk_crossing_event_get_detail(event_ptr)
            return rv
        }
    }

    /// Checks if the `event` surface is the focus surface.
    @inlinable var focus: Bool {
        /// Checks if the `event` surface is the focus surface.
        get {
            let rv = ((gdk_crossing_event_get_focus(event_ptr)) != 0)
            return rv
        }
    }

    /// Extracts the crossing mode from a crossing event.
    @inlinable var mode: GdkCrossingMode {
        /// Extracts the crossing mode from a crossing event.
        get {
            let rv = gdk_crossing_event_get_mode(event_ptr)
            return rv
        }
    }


}



// MARK: - Cursor Class

/// The `CursorProtocol` protocol exposes the methods and properties of an underlying `GdkCursor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Cursor`.
/// Alternatively, use `CursorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
/// 
/// Cursors are immutable objects, so they can not change after
/// they have been constructed.
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
/// 
/// Cursors are immutable objects, so they can not change after
/// they have been constructed.
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
    @inlinable init<CursorT: CursorProtocol>(name: UnsafePointer<CChar>!, fallback: CursorT?) {
        let rv = gdk_cursor_new_from_name(name, fallback?.cursor_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new cursor from a `GdkTexture`.
    @inlinable init<CursorT: CursorProtocol, TextureT: TextureProtocol>(texture: TextureT, hotspotX: Int, hotspotY: Int, fallback: CursorT?) {
        let rv = gdk_cursor_new_from_texture(texture.texture_ptr, gint(hotspotX), gint(hotspotY), fallback?.cursor_ptr)
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
    @inlinable static func newFrom<CursorT: CursorProtocol>(name: UnsafePointer<CChar>!, fallback: CursorT?) -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_new_from_name(name, fallback?.cursor_ptr))) else { return nil }
        return rv
    }

    /// Creates a new cursor from a `GdkTexture`.
    @inlinable static func newFrom<CursorT: CursorProtocol, TextureT: TextureProtocol>(texture: TextureT, hotspotX: Int, hotspotY: Int, fallback: CursorT?) -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_new_from_texture(texture.texture_ptr, gint(hotspotX), gint(hotspotY), fallback?.cursor_ptr))) else { return nil }
        return rv
    }
}

/// The `Cursor` type acts as a reference-counted owner of an underlying `GdkCursor` instance.
/// It provides the methods that can operate on this data type through `CursorProtocol` conformance.
/// Use `Cursor` as a strong reference or owner of a `GdkCursor` instance.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
/// 
/// Cursors are immutable objects, so they can not change after
/// they have been constructed.
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
    @inlinable public init<CursorT: CursorProtocol>(name: UnsafePointer<CChar>!, fallback: CursorT?) {
        let rv = gdk_cursor_new_from_name(name, fallback?.cursor_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new cursor from a `GdkTexture`.
    @inlinable public init<CursorT: CursorProtocol, TextureT: TextureProtocol>(texture: TextureT, hotspotX: Int, hotspotY: Int, fallback: CursorT?) {
        let rv = gdk_cursor_new_from_texture(texture.texture_ptr, gint(hotspotX), gint(hotspotY), fallback?.cursor_ptr)
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
    @inlinable public static func newFrom<CursorT: CursorProtocol>(name: UnsafePointer<CChar>!, fallback: CursorT?) -> Cursor! {
        guard let rv = Cursor(gconstpointer: gconstpointer(gdk_cursor_new_from_name(name, fallback?.cursor_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new cursor from a `GdkTexture`.
    @inlinable public static func newFrom<CursorT: CursorProtocol, TextureT: TextureProtocol>(texture: TextureT, hotspotX: Int, hotspotY: Int, fallback: CursorT?) -> Cursor! {
        guard let rv = Cursor(gconstpointer: gconstpointer(gdk_cursor_new_from_texture(texture.texture_ptr, gint(hotspotX), gint(hotspotY), fallback?.cursor_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum CursorPropertyName: String, PropertyNameProtocol {
    case fallback = "fallback"
    case hotspotX = "hotspot-x"
    case hotspotY = "hotspot-y"
    case name = "name"
    case texture = "texture"
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

public enum CursorSignalName: String, SignalNameProtocol {
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
    case notifyFallback = "notify::fallback"
    case notifyHotspotX = "notify::hotspot-x"
    case notifyHotspotY = "notify::hotspot-y"
    case notifyName = "notify::name"
    case notifyTexture = "notify::texture"
}

// MARK: Cursor has no signals
// MARK: Cursor Class: CursorProtocol extension (methods and fields)
public extension CursorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkCursor` instance.
    @inlinable var cursor_ptr: UnsafeMutablePointer<GdkCursor>! { return ptr?.assumingMemoryBound(to: GdkCursor.self) }

    /// Returns the fallback for this `cursor`. The fallback will be used if this
    /// cursor is not available on a given `GdkDisplay`.
    /// 
    /// For named cursors, this can happen when using nonstandard names or when
    /// using an incomplete cursor theme.
    /// For textured cursors, this can happen when the texture is too large or
    /// when the `GdkDisplay` it is used on does not support textured cursors.
    @inlinable func getFallback() -> CursorRef! {
        guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_get_fallback(cursor_ptr))) else { return nil }
        return rv
    }

    /// Returns the horizontal offset of the hotspot. The hotspot indicates the
    /// pixel that will be directly above the cursor.
    /// 
    /// Note that named cursors may have a nonzero hotspot, but this function
    /// will only return the hotspot position for cursors created with
    /// `gdk_cursor_new_from_texture()`.
    @inlinable func getHotspotX() -> Int {
        let rv = Int(gdk_cursor_get_hotspot_x(cursor_ptr))
        return rv
    }

    /// Returns the vertical offset of the hotspot. The hotspot indicates the
    /// pixel that will be directly above the cursor.
    /// 
    /// Note that named cursors may have a nonzero hotspot, but this function
    /// will only return the hotspot position for cursors created with
    /// `gdk_cursor_new_from_texture()`.
    @inlinable func getHotspotY() -> Int {
        let rv = Int(gdk_cursor_get_hotspot_y(cursor_ptr))
        return rv
    }

    /// Returns the name of the cursor. If the cursor is not a named cursor, `nil`
    /// will be returned.
    @inlinable func getName() -> String! {
        let rv = gdk_cursor_get_name(cursor_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the texture for the cursor. If the cursor is a named cursor, `nil`
    /// will be returned.
    @inlinable func getTexture() -> TextureRef! {
        let rv = TextureRef(gconstpointer: gconstpointer(gdk_cursor_get_texture(cursor_ptr)))
        return rv
    }
    @inlinable var fallback: CursorRef! {
        /// Returns the fallback for this `cursor`. The fallback will be used if this
        /// cursor is not available on a given `GdkDisplay`.
        /// 
        /// For named cursors, this can happen when using nonstandard names or when
        /// using an incomplete cursor theme.
        /// For textured cursors, this can happen when the texture is too large or
        /// when the `GdkDisplay` it is used on does not support textured cursors.
        get {
            guard let rv = CursorRef(gconstpointer: gconstpointer(gdk_cursor_get_fallback(cursor_ptr))) else { return nil }
            return rv
        }
    }

    /// Returns the horizontal offset of the hotspot. The hotspot indicates the
    /// pixel that will be directly above the cursor.
    /// 
    /// Note that named cursors may have a nonzero hotspot, but this function
    /// will only return the hotspot position for cursors created with
    /// `gdk_cursor_new_from_texture()`.
    @inlinable var hotspotX: Int {
        /// Returns the horizontal offset of the hotspot. The hotspot indicates the
        /// pixel that will be directly above the cursor.
        /// 
        /// Note that named cursors may have a nonzero hotspot, but this function
        /// will only return the hotspot position for cursors created with
        /// `gdk_cursor_new_from_texture()`.
        get {
            let rv = Int(gdk_cursor_get_hotspot_x(cursor_ptr))
            return rv
        }
    }

    /// Returns the vertical offset of the hotspot. The hotspot indicates the
    /// pixel that will be directly above the cursor.
    /// 
    /// Note that named cursors may have a nonzero hotspot, but this function
    /// will only return the hotspot position for cursors created with
    /// `gdk_cursor_new_from_texture()`.
    @inlinable var hotspotY: Int {
        /// Returns the vertical offset of the hotspot. The hotspot indicates the
        /// pixel that will be directly above the cursor.
        /// 
        /// Note that named cursors may have a nonzero hotspot, but this function
        /// will only return the hotspot position for cursors created with
        /// `gdk_cursor_new_from_texture()`.
        get {
            let rv = Int(gdk_cursor_get_hotspot_y(cursor_ptr))
            return rv
        }
    }

    @inlinable var name: String! {
        /// Returns the name of the cursor. If the cursor is not a named cursor, `nil`
        /// will be returned.
        get {
            let rv = gdk_cursor_get_name(cursor_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var texture: TextureRef! {
        /// Returns the texture for the cursor. If the cursor is a named cursor, `nil`
        /// will be returned.
        get {
            let rv = TextureRef(gconstpointer: gconstpointer(gdk_cursor_get_texture(cursor_ptr)))
            return rv
        }
    }


}



// MARK: - DNDEvent Class

/// The `DNDEventProtocol` protocol exposes the methods and properties of an underlying `GdkDNDEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DNDEvent`.
/// Alternatively, use `DNDEventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An event related to drag and drop operations.
public protocol DNDEventProtocol: EventProtocol {
        /// Untyped pointer to the underlying `GdkDNDEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDNDEvent` instance.
    var dnd_event_ptr: UnsafeMutablePointer<GdkDNDEvent>! { get }

}

/// The `DNDEventRef` type acts as a lightweight Swift reference to an underlying `GdkDNDEvent` instance.
/// It exposes methods that can operate on this data type through `DNDEventProtocol` conformance.
/// Use `DNDEventRef` only as an `unowned` reference to an existing `GdkDNDEvent` instance.
///
/// An event related to drag and drop operations.
public struct DNDEventRef: DNDEventProtocol {
        /// Untyped pointer to the underlying `GdkDNDEvent` instance.
    /// For type-safe access, use the generated, typed pointer `dnd_event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DNDEventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDNDEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDNDEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDNDEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDNDEvent>?) {
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

    /// Reference intialiser for a related type that implements `DNDEventProtocol`
    @inlinable init<T: DNDEventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DNDEvent` type acts as a reference-counted owner of an underlying `GdkDNDEvent` instance.
/// It provides the methods that can operate on this data type through `DNDEventProtocol` conformance.
/// Use `DNDEvent` as a strong reference or owner of a `GdkDNDEvent` instance.
///
/// An event related to drag and drop operations.
open class DNDEvent: Event, DNDEventProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DNDEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDNDEvent>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DNDEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDNDEvent>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DNDEvent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DNDEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DNDEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDNDEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DNDEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDNDEvent>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDNDEvent`.
    /// i.e., ownership is transferred to the `DNDEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDNDEvent>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DNDEventProtocol`
    /// Will retain `GdkDNDEvent`.
    /// - Parameter other: an instance of a related type that implements `DNDEventProtocol`
    @inlinable public init<T: DNDEventProtocol>(dNDEvent other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DNDEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no DNDEvent properties

// MARK: no DNDEvent signals

// MARK: DNDEvent has no signals
// MARK: DNDEvent Class: DNDEventProtocol extension (methods and fields)
public extension DNDEventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDNDEvent` instance.
    @inlinable var dnd_event_ptr: UnsafeMutablePointer<GdkDNDEvent>! { return ptr?.assumingMemoryBound(to: GdkDNDEvent.self) }

    /// Gets the `GdkDrop` from a DND event.
    @inlinable func getDrop() -> DropRef! {
        let rv = DropRef(gconstpointer: gconstpointer(gdk_dnd_event_get_drop(event_ptr)))
        return rv
    }
    /// Gets the `GdkDrop` from a DND event.
    @inlinable var drop: DropRef! {
        /// Gets the `GdkDrop` from a DND event.
        get {
            let rv = DropRef(gconstpointer: gconstpointer(gdk_dnd_event_get_drop(event_ptr)))
            return rv
        }
    }


}



