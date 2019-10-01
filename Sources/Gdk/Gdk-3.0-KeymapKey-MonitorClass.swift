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

// MARK: - KeymapKey Record

/// The `KeymapKeyProtocol` protocol exposes the methods and properties of an underlying `GdkKeymapKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `KeymapKey`.
/// Alternatively, use `KeymapKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkKeymapKey` is a hardware key that can be mapped to a keyval.
public protocol KeymapKeyProtocol {
    /// Untyped pointer to the underlying `GdkKeymapKey` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkKeymapKey` instance.
    var _ptr: UnsafeMutablePointer<GdkKeymapKey> { get }
}

/// The `KeymapKeyRef` type acts as a lightweight Swift reference to an underlying `GdkKeymapKey` instance.
/// It exposes methods that can operate on this data type through `KeymapKeyProtocol` conformance.
/// Use `KeymapKeyRef` only as an `unowned` reference to an existing `GdkKeymapKey` instance.
///
/// A `GdkKeymapKey` is a hardware key that can be mapped to a keyval.
public struct KeymapKeyRef: KeymapKeyProtocol {
    /// Untyped pointer to the underlying `GdkKeymapKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension KeymapKeyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `KeymapKeyProtocol`
    init<T: KeymapKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `KeymapKey` type acts as an owner of an underlying `GdkKeymapKey` instance.
/// It provides the methods that can operate on this data type through `KeymapKeyProtocol` conformance.
/// Use `KeymapKey` as a strong reference or owner of a `GdkKeymapKey` instance.
///
/// A `GdkKeymapKey` is a hardware key that can be mapped to a keyval.
open class KeymapKey: KeymapKeyProtocol {
    /// Untyped pointer to the underlying `GdkKeymapKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `KeymapKey` instance.
    public init(_ op: UnsafeMutablePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `KeymapKeyProtocol`
    /// `GdkKeymapKey` does not allow reference counting.
    public convenience init<T: KeymapKeyProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GdkKeymapKey, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkKeymapKey`.
    deinit {
        // no reference counting for GdkKeymapKey, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkKeymapKey.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkKeymapKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkKeymapKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkKeymapKey>(opaquePointer))
    }



}

// MARK: - no KeymapKey properties

// MARK: - no signals


public extension KeymapKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkKeymapKey` instance.
    var _ptr: UnsafeMutablePointer<GdkKeymapKey> { return ptr.assumingMemoryBound(to: GdkKeymapKey.self) }

}



// MARK: - MonitorClass Record

/// The `MonitorClassProtocol` protocol exposes the methods and properties of an underlying `GdkMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MonitorClass`.
/// Alternatively, use `MonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MonitorClassProtocol {
    /// Untyped pointer to the underlying `GdkMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GdkMonitorClass> { get }
}

/// The `MonitorClassRef` type acts as a lightweight Swift reference to an underlying `GdkMonitorClass` instance.
/// It exposes methods that can operate on this data type through `MonitorClassProtocol` conformance.
/// Use `MonitorClassRef` only as an `unowned` reference to an existing `GdkMonitorClass` instance.
///

public struct MonitorClassRef: MonitorClassProtocol {
    /// Untyped pointer to the underlying `GdkMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MonitorClassProtocol`
    init<T: MonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MonitorClass` type acts as an owner of an underlying `GdkMonitorClass` instance.
/// It provides the methods that can operate on this data type through `MonitorClassProtocol` conformance.
/// Use `MonitorClass` as a strong reference or owner of a `GdkMonitorClass` instance.
///

open class MonitorClass: MonitorClassProtocol {
    /// Untyped pointer to the underlying `GdkMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MonitorClass` instance.
    public init(_ op: UnsafeMutablePointer<GdkMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MonitorClassProtocol`
    /// `GdkMonitorClass` does not allow reference counting.
    public convenience init<T: MonitorClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GdkMonitorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkMonitorClass`.
    deinit {
        // no reference counting for GdkMonitorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkMonitorClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkMonitorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkMonitorClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkMonitorClass>(opaquePointer))
    }



}

// MARK: - no MonitorClass properties

// MARK: - no signals


public extension MonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GdkMonitorClass> { return ptr.assumingMemoryBound(to: GdkMonitorClass.self) }

}



