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

/// Metatype/GType declaration for Monitor
public extension MonitorClassRef {
    
    /// This getter returns the GLib type identifier registered for `Monitor`
    static var metatypeReference: GType { gdk_monitor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkMonitorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkMonitorClass.self) }
    
    static var metatype: GdkMonitorClass? { metatypePointer?.pointee } 
    
    static var wrapper: MonitorClassRef? { MonitorClassRef(metatypePointer) }
    
    
}

// MARK: - MonitorClass Record

/// The `MonitorClassProtocol` protocol exposes the methods and properties of an underlying `GdkMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MonitorClass`.
/// Alternatively, use `MonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MonitorClassProtocol {
        /// Untyped pointer to the underlying `GdkMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GdkMonitorClass>! { get }

    /// Required Initialiser for types conforming to `MonitorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `MonitorClassRef` type acts as a lightweight Swift reference to an underlying `GdkMonitorClass` instance.
/// It exposes methods that can operate on this data type through `MonitorClassProtocol` conformance.
/// Use `MonitorClassRef` only as an `unowned` reference to an existing `GdkMonitorClass` instance.
///

public struct MonitorClassRef: MonitorClassProtocol {
        /// Untyped pointer to the underlying `GdkMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkMonitorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkMonitorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkMonitorClass>?) {
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

    /// Reference intialiser for a related type that implements `MonitorClassProtocol`
    @inlinable init<T: MonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MonitorClass Record: MonitorClassProtocol extension (methods and fields)
public extension MonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkMonitorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkMonitorClass>! { return ptr?.assumingMemoryBound(to: GdkMonitorClass.self) }



}



/// Metatype/GType declaration for Paintable
public extension PaintableInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Paintable`
    static var metatypeReference: GType { gdk_paintable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkPaintableInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkPaintableInterface.self) }
    
    static var metatype: GdkPaintableInterface? { metatypePointer?.pointee } 
    
    static var wrapper: PaintableInterfaceRef? { PaintableInterfaceRef(metatypePointer) }
    
    
}

// MARK: - PaintableInterface Record

/// The `PaintableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GdkPaintableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PaintableInterface`.
/// Alternatively, use `PaintableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The list of functions that can be implemented for the `GdkPaintable` interface.
/// 
/// Note that apart from the `GdkPaintableInterface.snapshot``()` function, no virtual
/// function of this interface is mandatory to implement, though it is a good idea
/// to implement `GdkPaintableInterface.get_current_image``()` for non-static paintables
/// and `GdkPaintableInterface.get_flags``()` if the image is not dynamic as the default
/// implementation returns no flags and that will make the implementation likely
/// quite slow.
public protocol PaintableInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkPaintableInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPaintableInterface` instance.
    var _ptr: UnsafeMutablePointer<GdkPaintableInterface>! { get }

    /// Required Initialiser for types conforming to `PaintableInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PaintableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GdkPaintableInterface` instance.
/// It exposes methods that can operate on this data type through `PaintableInterfaceProtocol` conformance.
/// Use `PaintableInterfaceRef` only as an `unowned` reference to an existing `GdkPaintableInterface` instance.
///
/// The list of functions that can be implemented for the `GdkPaintable` interface.
/// 
/// Note that apart from the `GdkPaintableInterface.snapshot``()` function, no virtual
/// function of this interface is mandatory to implement, though it is a good idea
/// to implement `GdkPaintableInterface.get_current_image``()` for non-static paintables
/// and `GdkPaintableInterface.get_flags``()` if the image is not dynamic as the default
/// implementation returns no flags and that will make the implementation likely
/// quite slow.
public struct PaintableInterfaceRef: PaintableInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkPaintableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PaintableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPaintableInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPaintableInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPaintableInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPaintableInterface>?) {
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

    /// Reference intialiser for a related type that implements `PaintableInterfaceProtocol`
    @inlinable init<T: PaintableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PaintableInterface Record: PaintableInterfaceProtocol extension (methods and fields)
public extension PaintableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPaintableInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPaintableInterface>! { return ptr?.assumingMemoryBound(to: GdkPaintableInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var snapshot is unavailable because snapshot is void

    // var getCurrentImage is unavailable because get_current_image is void

    // var getFlags is unavailable because get_flags is void

    // var getIntrinsicWidth is unavailable because get_intrinsic_width is void

    // var getIntrinsicHeight is unavailable because get_intrinsic_height is void

    // var getIntrinsicAspectRatio is unavailable because get_intrinsic_aspect_ratio is void

}



