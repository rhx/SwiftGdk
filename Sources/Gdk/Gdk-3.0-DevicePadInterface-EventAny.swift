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

// MARK: - DevicePadInterface Record

/// The `DevicePadInterfaceProtocol` protocol exposes the methods and properties of an underlying `GdkDevicePadInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DevicePadInterface`.
/// Alternatively, use `DevicePadInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DevicePadInterfaceProtocol {
    /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDevicePadInterface` instance.
    var _ptr: UnsafeMutablePointer<GdkDevicePadInterface> { get }
}

/// The `DevicePadInterfaceRef` type acts as a lightweight Swift reference to an underlying `GdkDevicePadInterface` instance.
/// It exposes methods that can operate on this data type through `DevicePadInterfaceProtocol` conformance.
/// Use `DevicePadInterfaceRef` only as an `unowned` reference to an existing `GdkDevicePadInterface` instance.
///

public struct DevicePadInterfaceRef: DevicePadInterfaceProtocol {
    /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DevicePadInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DevicePadInterfaceProtocol`
    init<T: DevicePadInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DevicePadInterface` type acts as an owner of an underlying `GdkDevicePadInterface` instance.
/// It provides the methods that can operate on this data type through `DevicePadInterfaceProtocol` conformance.
/// Use `DevicePadInterface` as a strong reference or owner of a `GdkDevicePadInterface` instance.
///

open class DevicePadInterface: DevicePadInterfaceProtocol {
    /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DevicePadInterface` instance.
    public init(_ op: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DevicePadInterfaceProtocol`
    /// `GdkDevicePadInterface` does not allow reference counting.
    public convenience init<T: DevicePadInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GdkDevicePadInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkDevicePadInterface`.
    deinit {
        // no reference counting for GdkDevicePadInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDevicePadInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDevicePadInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDevicePadInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDevicePadInterface>(opaquePointer))
    }



}

// MARK: - no DevicePadInterface properties

// MARK: - no signals


public extension DevicePadInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevicePadInterface` instance.
    var _ptr: UnsafeMutablePointer<GdkDevicePadInterface> { return ptr.assumingMemoryBound(to: GdkDevicePadInterface.self) }

}



// MARK: - DrawingContextClass Record

/// The `DrawingContextClassProtocol` protocol exposes the methods and properties of an underlying `GdkDrawingContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingContextClass`.
/// Alternatively, use `DrawingContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DrawingContextClassProtocol {
    /// Untyped pointer to the underlying `GdkDrawingContextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDrawingContextClass` instance.
    var _ptr: UnsafeMutablePointer<GdkDrawingContextClass> { get }
}

/// The `DrawingContextClassRef` type acts as a lightweight Swift reference to an underlying `GdkDrawingContextClass` instance.
/// It exposes methods that can operate on this data type through `DrawingContextClassProtocol` conformance.
/// Use `DrawingContextClassRef` only as an `unowned` reference to an existing `GdkDrawingContextClass` instance.
///

public struct DrawingContextClassRef: DrawingContextClassProtocol {
    /// Untyped pointer to the underlying `GdkDrawingContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DrawingContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDrawingContextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DrawingContextClassProtocol`
    init<T: DrawingContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DrawingContextClass` type acts as an owner of an underlying `GdkDrawingContextClass` instance.
/// It provides the methods that can operate on this data type through `DrawingContextClassProtocol` conformance.
/// Use `DrawingContextClass` as a strong reference or owner of a `GdkDrawingContextClass` instance.
///

open class DrawingContextClass: DrawingContextClassProtocol {
    /// Untyped pointer to the underlying `GdkDrawingContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DrawingContextClass` instance.
    public init(_ op: UnsafeMutablePointer<GdkDrawingContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DrawingContextClassProtocol`
    /// `GdkDrawingContextClass` does not allow reference counting.
    public convenience init<T: DrawingContextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GdkDrawingContextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkDrawingContextClass`.
    deinit {
        // no reference counting for GdkDrawingContextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDrawingContextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDrawingContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDrawingContextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDrawingContextClass>(opaquePointer))
    }



}

// MARK: - no DrawingContextClass properties

// MARK: - no signals


public extension DrawingContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDrawingContextClass` instance.
    var _ptr: UnsafeMutablePointer<GdkDrawingContextClass> { return ptr.assumingMemoryBound(to: GdkDrawingContextClass.self) }

}



// MARK: - EventAny Record

/// The `EventAnyProtocol` protocol exposes the methods and properties of an underlying `GdkEventAny` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventAny`.
/// Alternatively, use `EventAnyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains the fields which are common to all event structs.
/// Any event pointer can safely be cast to a pointer to a `GdkEventAny` to
/// access these fields.
public protocol EventAnyProtocol {
    /// Untyped pointer to the underlying `GdkEventAny` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventAny` instance.
    var _ptr: UnsafeMutablePointer<GdkEventAny> { get }
}

/// The `EventAnyRef` type acts as a lightweight Swift reference to an underlying `GdkEventAny` instance.
/// It exposes methods that can operate on this data type through `EventAnyProtocol` conformance.
/// Use `EventAnyRef` only as an `unowned` reference to an existing `GdkEventAny` instance.
///
/// Contains the fields which are common to all event structs.
/// Any event pointer can safely be cast to a pointer to a `GdkEventAny` to
/// access these fields.
public struct EventAnyRef: EventAnyProtocol {
    /// Untyped pointer to the underlying `GdkEventAny` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventAnyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventAny>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventAnyProtocol`
    init<T: EventAnyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventAny` type acts as an owner of an underlying `GdkEventAny` instance.
/// It provides the methods that can operate on this data type through `EventAnyProtocol` conformance.
/// Use `EventAny` as a strong reference or owner of a `GdkEventAny` instance.
///
/// Contains the fields which are common to all event structs.
/// Any event pointer can safely be cast to a pointer to a `GdkEventAny` to
/// access these fields.
open class EventAny: EventAnyProtocol {
    /// Untyped pointer to the underlying `GdkEventAny` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EventAny` instance.
    public init(_ op: UnsafeMutablePointer<GdkEventAny>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EventAnyProtocol`
    /// `GdkEventAny` does not allow reference counting.
    public convenience init<T: EventAnyProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GdkEventAny, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventAny`.
    deinit {
        // no reference counting for GdkEventAny, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkEventAny.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkEventAny.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkEventAny.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkEventAny>(opaquePointer))
    }



}

// MARK: - no EventAny properties

// MARK: - no signals


public extension EventAnyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventAny` instance.
    var _ptr: UnsafeMutablePointer<GdkEventAny> { return ptr.assumingMemoryBound(to: GdkEventAny.self) }

}



