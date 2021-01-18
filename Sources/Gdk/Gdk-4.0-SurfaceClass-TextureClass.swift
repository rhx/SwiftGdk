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

/// Metatype/GType declaration for Surface
public extension SurfaceClassRef {
    
    /// This getter returns the GLib type identifier registered for `Surface`
    static var metatypeReference: GType { gdk_surface_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkSurfaceClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkSurfaceClass.self) }
    
    static var metatype: GdkSurfaceClass? { metatypePointer?.pointee } 
    
    static var wrapper: SurfaceClassRef? { SurfaceClassRef(metatypePointer) }
    
    
}

// MARK: - SurfaceClass Record

/// The `SurfaceClassProtocol` protocol exposes the methods and properties of an underlying `GdkSurfaceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SurfaceClass`.
/// Alternatively, use `SurfaceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SurfaceClassProtocol {
        /// Untyped pointer to the underlying `GdkSurfaceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkSurfaceClass` instance.
    var _ptr: UnsafeMutablePointer<GdkSurfaceClass>! { get }

    /// Required Initialiser for types conforming to `SurfaceClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SurfaceClassRef` type acts as a lightweight Swift reference to an underlying `GdkSurfaceClass` instance.
/// It exposes methods that can operate on this data type through `SurfaceClassProtocol` conformance.
/// Use `SurfaceClassRef` only as an `unowned` reference to an existing `GdkSurfaceClass` instance.
///

public struct SurfaceClassRef: SurfaceClassProtocol {
        /// Untyped pointer to the underlying `GdkSurfaceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SurfaceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkSurfaceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkSurfaceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkSurfaceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkSurfaceClass>?) {
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

    /// Reference intialiser for a related type that implements `SurfaceClassProtocol`
    @inlinable init<T: SurfaceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SurfaceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SurfaceClass Record: SurfaceClassProtocol extension (methods and fields)
public extension SurfaceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkSurfaceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkSurfaceClass>! { return ptr?.assumingMemoryBound(to: GdkSurfaceClass.self) }



}



/// Metatype/GType declaration for Texture
public extension TextureClassRef {
    
    /// This getter returns the GLib type identifier registered for `Texture`
    static var metatypeReference: GType { gdk_texture_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkTextureClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkTextureClass.self) }
    
    static var metatype: GdkTextureClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextureClassRef? { TextureClassRef(metatypePointer) }
    
    
}

// MARK: - TextureClass Record

/// The `TextureClassProtocol` protocol exposes the methods and properties of an underlying `GdkTextureClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextureClass`.
/// Alternatively, use `TextureClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TextureClassProtocol {
        /// Untyped pointer to the underlying `GdkTextureClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkTextureClass` instance.
    var _ptr: UnsafeMutablePointer<GdkTextureClass>! { get }

    /// Required Initialiser for types conforming to `TextureClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TextureClassRef` type acts as a lightweight Swift reference to an underlying `GdkTextureClass` instance.
/// It exposes methods that can operate on this data type through `TextureClassProtocol` conformance.
/// Use `TextureClassRef` only as an `unowned` reference to an existing `GdkTextureClass` instance.
///

public struct TextureClassRef: TextureClassProtocol {
        /// Untyped pointer to the underlying `GdkTextureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextureClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkTextureClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkTextureClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkTextureClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkTextureClass>?) {
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

    /// Reference intialiser for a related type that implements `TextureClassProtocol`
    @inlinable init<T: TextureClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextureClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextureClass Record: TextureClassProtocol extension (methods and fields)
public extension TextureClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkTextureClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkTextureClass>! { return ptr?.assumingMemoryBound(to: GdkTextureClass.self) }



}



