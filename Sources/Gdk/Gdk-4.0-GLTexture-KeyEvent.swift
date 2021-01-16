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

// MARK: - GLTexture Class

/// The `GLTextureProtocol` protocol exposes the methods and properties of an underlying `GdkGLTexture` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLTexture`.
/// Alternatively, use `GLTextureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkTexture` representing a GL texture object.
public protocol GLTextureProtocol: TextureProtocol {
        /// Untyped pointer to the underlying `GdkGLTexture` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkGLTexture` instance.
    var gl_texture_ptr: UnsafeMutablePointer<GdkGLTexture>! { get }

}

/// The `GLTextureRef` type acts as a lightweight Swift reference to an underlying `GdkGLTexture` instance.
/// It exposes methods that can operate on this data type through `GLTextureProtocol` conformance.
/// Use `GLTextureRef` only as an `unowned` reference to an existing `GdkGLTexture` instance.
///
/// A `GdkTexture` representing a GL texture object.
public struct GLTextureRef: GLTextureProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkGLTexture` instance.
    /// For type-safe access, use the generated, typed pointer `gl_texture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GLTextureRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkGLTexture>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkGLTexture>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkGLTexture>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkGLTexture>?) {
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

    /// Reference intialiser for a related type that implements `GLTextureProtocol`
    @inlinable init<T: GLTextureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GLTextureProtocol>(_ other: T) -> GLTextureRef { GLTextureRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new texture for an existing GL texture.
    /// 
    /// Note that the GL texture must not be modified until `destroy` is called,
    /// which will happen when the GdkTexture object is finalized, or due to
    /// an explicit call of `gdk_gl_texture_release()`.
    @inlinable init<GLContextT: GLContextProtocol>( context: GLContextT, id: Int, width: Int, height: Int, destroy: GDestroyNotify?, data: gpointer! = nil) {
        let rv = gdk_gl_texture_new(context.gl_context_ptr, guint(id), gint(width), gint(height), destroy, data)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `GLTexture` type acts as a reference-counted owner of an underlying `GdkGLTexture` instance.
/// It provides the methods that can operate on this data type through `GLTextureProtocol` conformance.
/// Use `GLTexture` as a strong reference or owner of a `GdkGLTexture` instance.
///
/// A `GdkTexture` representing a GL texture object.
open class GLTexture: Texture, GLTextureProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLTexture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkGLTexture>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLTexture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkGLTexture>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLTexture` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLTexture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLTexture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkGLTexture>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLTexture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkGLTexture>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkGLTexture`.
    /// i.e., ownership is transferred to the `GLTexture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkGLTexture>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GLTextureProtocol`
    /// Will retain `GdkGLTexture`.
    /// - Parameter other: an instance of a related type that implements `GLTextureProtocol`
    @inlinable public init<T: GLTextureProtocol>(gLTexture other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new texture for an existing GL texture.
    /// 
    /// Note that the GL texture must not be modified until `destroy` is called,
    /// which will happen when the GdkTexture object is finalized, or due to
    /// an explicit call of `gdk_gl_texture_release()`.
    @inlinable public init<GLContextT: GLContextProtocol>( context: GLContextT, id: Int, width: Int, height: Int, destroy: GDestroyNotify?, data: gpointer! = nil) {
        let rv = gdk_gl_texture_new(context.gl_context_ptr, guint(id), gint(width), gint(height), destroy, data)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GLTexturePropertyName: String, PropertyNameProtocol {
    /// The height of the texture, in pixels.
    case height = "height"
    /// The width of the texture, in pixels.
    case width = "width"
}

public extension GLTextureProtocol {
    /// Bind a `GLTexturePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GLTexturePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a GLTexture property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GLTexturePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GLTexture property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GLTexturePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: GLTexture has no signals// MARK: GLTexture Class: GLTextureProtocol extension (methods and fields)
public extension GLTextureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkGLTexture` instance.
    @inlinable var gl_texture_ptr: UnsafeMutablePointer<GdkGLTexture>! { return ptr?.assumingMemoryBound(to: GdkGLTexture.self) }

    /// Releases the GL resources held by a `GdkGLTexture` that
    /// was created with `gdk_gl_texture_new()`.
    /// 
    /// The texture contents are still available via the
    /// `gdk_texture_download()` function, after this function
    /// has been called.
    @inlinable func release() {
        gdk_gl_texture_release(gl_texture_ptr)
    
    }


}



// MARK: - GrabBrokenEvent Class

/// The `GrabBrokenEventProtocol` protocol exposes the methods and properties of an underlying `GdkGrabBrokenEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GrabBrokenEvent`.
/// Alternatively, use `GrabBrokenEventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An event related to a broken windowing system grab.
public protocol GrabBrokenEventProtocol: EventProtocol {
        /// Untyped pointer to the underlying `GdkGrabBrokenEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkGrabBrokenEvent` instance.
    var grab_broken_event_ptr: UnsafeMutablePointer<GdkGrabBrokenEvent>! { get }

}

/// The `GrabBrokenEventRef` type acts as a lightweight Swift reference to an underlying `GdkGrabBrokenEvent` instance.
/// It exposes methods that can operate on this data type through `GrabBrokenEventProtocol` conformance.
/// Use `GrabBrokenEventRef` only as an `unowned` reference to an existing `GdkGrabBrokenEvent` instance.
///
/// An event related to a broken windowing system grab.
public struct GrabBrokenEventRef: GrabBrokenEventProtocol {
        /// Untyped pointer to the underlying `GdkGrabBrokenEvent` instance.
    /// For type-safe access, use the generated, typed pointer `grab_broken_event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GrabBrokenEventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkGrabBrokenEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkGrabBrokenEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkGrabBrokenEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkGrabBrokenEvent>?) {
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

    /// Reference intialiser for a related type that implements `GrabBrokenEventProtocol`
    @inlinable init<T: GrabBrokenEventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GrabBrokenEvent` type acts as a reference-counted owner of an underlying `GdkGrabBrokenEvent` instance.
/// It provides the methods that can operate on this data type through `GrabBrokenEventProtocol` conformance.
/// Use `GrabBrokenEvent` as a strong reference or owner of a `GdkGrabBrokenEvent` instance.
///
/// An event related to a broken windowing system grab.
open class GrabBrokenEvent: Event, GrabBrokenEventProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GrabBrokenEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkGrabBrokenEvent>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GrabBrokenEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkGrabBrokenEvent>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GrabBrokenEvent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GrabBrokenEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GrabBrokenEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkGrabBrokenEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GrabBrokenEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkGrabBrokenEvent>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkGrabBrokenEvent`.
    /// i.e., ownership is transferred to the `GrabBrokenEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkGrabBrokenEvent>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GrabBrokenEventProtocol`
    /// Will retain `GdkGrabBrokenEvent`.
    /// - Parameter other: an instance of a related type that implements `GrabBrokenEventProtocol`
    @inlinable public init<T: GrabBrokenEventProtocol>(grabBrokenEvent other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GrabBrokenEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no GrabBrokenEvent properties

// MARK: GrabBrokenEvent has no signals// MARK: GrabBrokenEvent Class: GrabBrokenEventProtocol extension (methods and fields)
public extension GrabBrokenEventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkGrabBrokenEvent` instance.
    @inlinable var grab_broken_event_ptr: UnsafeMutablePointer<GdkGrabBrokenEvent>! { return ptr?.assumingMemoryBound(to: GdkGrabBrokenEvent.self) }

    /// Extracts the grab surface from a grab broken event.
    @inlinable func getGrabSurface() -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_grab_broken_event_get_grab_surface(event_ptr)))
        return rv
    }

    /// Checks whether the grab broken event is for an implicit grab.
    @inlinable func getImplicit() -> Bool {
        let rv = ((gdk_grab_broken_event_get_implicit(event_ptr)) != 0)
        return rv
    }
    /// Extracts the grab surface from a grab broken event.
    @inlinable var grabSurface: SurfaceRef! {
        /// Extracts the grab surface from a grab broken event.
        get {
            let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_grab_broken_event_get_grab_surface(event_ptr)))
            return rv
        }
    }

    /// Checks whether the grab broken event is for an implicit grab.
    @inlinable var implicit: Bool {
        /// Checks whether the grab broken event is for an implicit grab.
        get {
            let rv = ((gdk_grab_broken_event_get_implicit(event_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - KeyEvent Class

/// The `KeyEventProtocol` protocol exposes the methods and properties of an underlying `GdkKeyEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `KeyEvent`.
/// Alternatively, use `KeyEventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An event related to a key-based device.
public protocol KeyEventProtocol: EventProtocol {
        /// Untyped pointer to the underlying `GdkKeyEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkKeyEvent` instance.
    var key_event_ptr: UnsafeMutablePointer<GdkKeyEvent>! { get }

}

/// The `KeyEventRef` type acts as a lightweight Swift reference to an underlying `GdkKeyEvent` instance.
/// It exposes methods that can operate on this data type through `KeyEventProtocol` conformance.
/// Use `KeyEventRef` only as an `unowned` reference to an existing `GdkKeyEvent` instance.
///
/// An event related to a key-based device.
public struct KeyEventRef: KeyEventProtocol {
        /// Untyped pointer to the underlying `GdkKeyEvent` instance.
    /// For type-safe access, use the generated, typed pointer `key_event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension KeyEventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkKeyEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkKeyEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkKeyEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkKeyEvent>?) {
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

    /// Reference intialiser for a related type that implements `KeyEventProtocol`
    @inlinable init<T: KeyEventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `KeyEvent` type acts as a reference-counted owner of an underlying `GdkKeyEvent` instance.
/// It provides the methods that can operate on this data type through `KeyEventProtocol` conformance.
/// Use `KeyEvent` as a strong reference or owner of a `GdkKeyEvent` instance.
///
/// An event related to a key-based device.
open class KeyEvent: Event, KeyEventProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkKeyEvent>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkKeyEvent>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyEvent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkKeyEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkKeyEvent>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkKeyEvent`.
    /// i.e., ownership is transferred to the `KeyEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkKeyEvent>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `KeyEventProtocol`
    /// Will retain `GdkKeyEvent`.
    /// - Parameter other: an instance of a related type that implements `KeyEventProtocol`
    @inlinable public init<T: KeyEventProtocol>(keyEvent other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no KeyEvent properties

// MARK: KeyEvent has no signals// MARK: KeyEvent Class: KeyEventProtocol extension (methods and fields)
public extension KeyEventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkKeyEvent` instance.
    @inlinable var key_event_ptr: UnsafeMutablePointer<GdkKeyEvent>! { return ptr?.assumingMemoryBound(to: GdkKeyEvent.self) }

    /// Extracts the consumed modifiers from a key event.
    @inlinable func getConsumedModifiers() -> ModifierType {
        let rv = ModifierType(gdk_key_event_get_consumed_modifiers(event_ptr))
        return rv
    }

    /// Extracts the keycode from a key event.
    @inlinable func getKeycode() -> Int {
        let rv = Int(gdk_key_event_get_keycode(event_ptr))
        return rv
    }

    /// Extracts the keyval from a key event.
    @inlinable func getKeyval() -> Int {
        let rv = Int(gdk_key_event_get_keyval(event_ptr))
        return rv
    }

    /// Extracts the layout from a key event.
    @inlinable func getLayout() -> Int {
        let rv = Int(gdk_key_event_get_layout(event_ptr))
        return rv
    }

    /// Extracts the shift level from a key event.
    @inlinable func getLevel() -> Int {
        let rv = Int(gdk_key_event_get_level(event_ptr))
        return rv
    }

    /// Gets a keyval and modifier combination that will cause
    /// `gdk_key_event_matches()` to successfully match the given event.
    @inlinable func getMatch(keyval: UnsafeMutablePointer<guint>!, modifiers: UnsafeMutablePointer<GdkModifierType>!) -> Bool {
        let rv = ((gdk_key_event_get_match(event_ptr, keyval, modifiers)) != 0)
        return rv
    }

    /// Matches a key event against a keyboard shortcut that is specified
    /// as a keyval and modifiers. Partial matches are possible where the
    /// combination matches if the currently active group is ignored.
    /// 
    /// Note that we ignore Caps Lock for matching.
    @inlinable func matches(keyval: Int, modifiers: ModifierType) -> GdkKeyMatch {
        let rv = gdk_key_event_matches(event_ptr, guint(keyval), modifiers.value)
        return rv
    }
    /// Extracts the consumed modifiers from a key event.
    @inlinable var consumedModifiers: ModifierType {
        /// Extracts the consumed modifiers from a key event.
        get {
            let rv = ModifierType(gdk_key_event_get_consumed_modifiers(event_ptr))
            return rv
        }
    }

    /// Extracts whether the key event is for a modifier key.
    @inlinable var isModifier: Bool {
        /// Extracts whether the key event is for a modifier key.
        get {
            let rv = ((gdk_key_event_is_modifier(event_ptr)) != 0)
            return rv
        }
    }

    /// Extracts the keycode from a key event.
    @inlinable var keycode: Int {
        /// Extracts the keycode from a key event.
        get {
            let rv = Int(gdk_key_event_get_keycode(event_ptr))
            return rv
        }
    }

    /// Extracts the keyval from a key event.
    @inlinable var keyval: Int {
        /// Extracts the keyval from a key event.
        get {
            let rv = Int(gdk_key_event_get_keyval(event_ptr))
            return rv
        }
    }

    /// Extracts the layout from a key event.
    @inlinable var layout: Int {
        /// Extracts the layout from a key event.
        get {
            let rv = Int(gdk_key_event_get_layout(event_ptr))
            return rv
        }
    }

    /// Extracts the shift level from a key event.
    @inlinable var level: Int {
        /// Extracts the shift level from a key event.
        get {
            let rv = Int(gdk_key_event_get_level(event_ptr))
            return rv
        }
    }


}



