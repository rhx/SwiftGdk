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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkKeymapKey` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkKeymapKey, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `KeymapKeyProtocol`
    /// `GdkKeymapKey` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `KeymapKeyProtocol`
    public init<T: KeymapKeyProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkKeymapKey, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkKeymapKey`.
    deinit {
        // no reference counting for GdkKeymapKey, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkKeymapKey, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkKeymapKey, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkKeymapKey, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkKeymapKey, cannot ref(cast(_ptr))
    }



}

// MARK: no KeymapKey properties

// MARK: no KeymapKey signals


// MARK: KeymapKey Record: KeymapKeyProtocol extension (methods and fields)
public extension KeymapKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkKeymapKey` instance.
    var _ptr: UnsafeMutablePointer<GdkKeymapKey> { return ptr.assumingMemoryBound(to: GdkKeymapKey.self) }


    /// the hardware keycode. This is an identifying number for a
    ///   physical key.
    var keycode: Int {
        /// the hardware keycode. This is an identifying number for a
        ///   physical key.
        get {
            let rv: Int = cast(_ptr.pointee.keycode)
            return rv
        }
        /// the hardware keycode. This is an identifying number for a
        ///   physical key.
         set {
            _ptr.pointee.keycode = guint(newValue)
        }
    }

    /// indicates movement in a horizontal direction. Usually groups are used
    ///   for two different languages. In group 0, a key might have two English
    ///   characters, and in group 1 it might have two Hebrew characters. The Hebrew
    ///   characters will be printed on the key next to the English characters.
    var group: Int {
        /// indicates movement in a horizontal direction. Usually groups are used
        ///   for two different languages. In group 0, a key might have two English
        ///   characters, and in group 1 it might have two Hebrew characters. The Hebrew
        ///   characters will be printed on the key next to the English characters.
        get {
            let rv: Int = cast(_ptr.pointee.group)
            return rv
        }
        /// indicates movement in a horizontal direction. Usually groups are used
        ///   for two different languages. In group 0, a key might have two English
        ///   characters, and in group 1 it might have two Hebrew characters. The Hebrew
        ///   characters will be printed on the key next to the English characters.
         set {
            _ptr.pointee.group = gint(newValue)
        }
    }

    /// indicates which symbol on the key will be used, in a vertical direction.
    ///   So on a standard US keyboard, the key with the number “1” on it also has the
    ///   exclamation point ("!") character on it. The level indicates whether to use
    ///   the “1” or the “!” symbol. The letter keys are considered to have a lowercase
    ///   letter at level 0, and an uppercase letter at level 1, though only the
    ///   uppercase letter is printed.
    var level: Int {
        /// indicates which symbol on the key will be used, in a vertical direction.
        ///   So on a standard US keyboard, the key with the number “1” on it also has the
        ///   exclamation point ("!") character on it. The level indicates whether to use
        ///   the “1” or the “!” symbol. The letter keys are considered to have a lowercase
        ///   letter at level 0, and an uppercase letter at level 1, though only the
        ///   uppercase letter is printed.
        get {
            let rv: Int = cast(_ptr.pointee.level)
            return rv
        }
        /// indicates which symbol on the key will be used, in a vertical direction.
        ///   So on a standard US keyboard, the key with the number “1” on it also has the
        ///   exclamation point ("!") character on it. The level indicates whether to use
        ///   the “1” or the “!” symbol. The letter keys are considered to have a lowercase
        ///   letter at level 0, and an uppercase letter at level 1, though only the
        ///   uppercase letter is printed.
         set {
            _ptr.pointee.level = gint(newValue)
        }
    }

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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkMonitorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkMonitorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MonitorClassProtocol`
    /// `GdkMonitorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MonitorClassProtocol`
    public init<T: MonitorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkMonitorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkMonitorClass`.
    deinit {
        // no reference counting for GdkMonitorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkMonitorClass, cannot ref(cast(_ptr))
    }



}

// MARK: no MonitorClass properties

// MARK: no MonitorClass signals


// MARK: MonitorClass Record: MonitorClassProtocol extension (methods and fields)
public extension MonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GdkMonitorClass> { return ptr.assumingMemoryBound(to: GdkMonitorClass.self) }



}



