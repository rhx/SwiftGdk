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

// MARK: - KeymapKey Record

/// The `KeymapKeyProtocol` protocol exposes the methods and properties of an underlying `GdkKeymapKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `KeymapKey`.
/// Alternatively, use `KeymapKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkKeymapKey` is a hardware key that can be mapped to a keyval.
public protocol KeymapKeyProtocol {
        /// Untyped pointer to the underlying `GdkKeymapKey` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkKeymapKey` instance.
    var _ptr: UnsafeMutablePointer<GdkKeymapKey>! { get }

}

/// The `KeymapKeyRef` type acts as a lightweight Swift reference to an underlying `GdkKeymapKey` instance.
/// It exposes methods that can operate on this data type through `KeymapKeyProtocol` conformance.
/// Use `KeymapKeyRef` only as an `unowned` reference to an existing `GdkKeymapKey` instance.
///
/// A `GdkKeymapKey` is a hardware key that can be mapped to a keyval.
public struct KeymapKeyRef: KeymapKeyProtocol {
        /// Untyped pointer to the underlying `GdkKeymapKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension KeymapKeyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkKeymapKey>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkKeymapKey>?) {
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

    /// Reference intialiser for a related type that implements `KeymapKeyProtocol`
    @inlinable init<T: KeymapKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkKeymapKey>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkKeymapKey>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkKeymapKey` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `KeymapKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkKeymapKey>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkKeymapKey, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `KeymapKeyProtocol`
    /// `GdkKeymapKey` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `KeymapKeyProtocol`
    @inlinable public init<T: KeymapKeyProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkKeymapKey, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkKeymapKey`.
    deinit {
        // no reference counting for GdkKeymapKey, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkKeymapKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkKeymapKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkKeymapKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkKeymapKey, cannot ref(_ptr)
    }



}

// MARK: no KeymapKey properties

// MARK: no KeymapKey signals


// MARK: KeymapKey Record: KeymapKeyProtocol extension (methods and fields)
public extension KeymapKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkKeymapKey` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkKeymapKey>! { return ptr?.assumingMemoryBound(to: GdkKeymapKey.self) }


    /// the hardware keycode. This is an identifying number for a
    ///   physical key.
    @inlinable var keycode: guint {
        /// the hardware keycode. This is an identifying number for a
        ///   physical key.
        get {
            let rv = _ptr.pointee.keycode
            return rv
        }
        /// the hardware keycode. This is an identifying number for a
        ///   physical key.
         set {
            _ptr.pointee.keycode = newValue
        }
    }

    /// indicates movement in a horizontal direction. Usually groups are used
    ///   for two different languages. In group 0, a key might have two English
    ///   characters, and in group 1 it might have two Hebrew characters. The Hebrew
    ///   characters will be printed on the key next to the English characters.
    @inlinable var group: gint {
        /// indicates movement in a horizontal direction. Usually groups are used
        ///   for two different languages. In group 0, a key might have two English
        ///   characters, and in group 1 it might have two Hebrew characters. The Hebrew
        ///   characters will be printed on the key next to the English characters.
        get {
            let rv = _ptr.pointee.group
            return rv
        }
        /// indicates movement in a horizontal direction. Usually groups are used
        ///   for two different languages. In group 0, a key might have two English
        ///   characters, and in group 1 it might have two Hebrew characters. The Hebrew
        ///   characters will be printed on the key next to the English characters.
         set {
            _ptr.pointee.group = newValue
        }
    }

    /// indicates which symbol on the key will be used, in a vertical direction.
    ///   So on a standard US keyboard, the key with the number “1” on it also has the
    ///   exclamation point ("!") character on it. The level indicates whether to use
    ///   the “1” or the “!” symbol. The letter keys are considered to have a lowercase
    ///   letter at level 0, and an uppercase letter at level 1, though only the
    ///   uppercase letter is printed.
    @inlinable var level: gint {
        /// indicates which symbol on the key will be used, in a vertical direction.
        ///   So on a standard US keyboard, the key with the number “1” on it also has the
        ///   exclamation point ("!") character on it. The level indicates whether to use
        ///   the “1” or the “!” symbol. The letter keys are considered to have a lowercase
        ///   letter at level 0, and an uppercase letter at level 1, though only the
        ///   uppercase letter is printed.
        get {
            let rv = _ptr.pointee.level
            return rv
        }
        /// indicates which symbol on the key will be used, in a vertical direction.
        ///   So on a standard US keyboard, the key with the number “1” on it also has the
        ///   exclamation point ("!") character on it. The level indicates whether to use
        ///   the “1” or the “!” symbol. The letter keys are considered to have a lowercase
        ///   letter at level 0, and an uppercase letter at level 1, though only the
        ///   uppercase letter is printed.
         set {
            _ptr.pointee.level = newValue
        }
    }

}



// MARK: - MemoryTextureClass Record

/// The `MemoryTextureClassProtocol` protocol exposes the methods and properties of an underlying `GdkMemoryTextureClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryTextureClass`.
/// Alternatively, use `MemoryTextureClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MemoryTextureClassProtocol {
        /// Untyped pointer to the underlying `GdkMemoryTextureClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkMemoryTextureClass` instance.
    var _ptr: UnsafeMutablePointer<GdkMemoryTextureClass>! { get }

}

/// The `MemoryTextureClassRef` type acts as a lightweight Swift reference to an underlying `GdkMemoryTextureClass` instance.
/// It exposes methods that can operate on this data type through `MemoryTextureClassProtocol` conformance.
/// Use `MemoryTextureClassRef` only as an `unowned` reference to an existing `GdkMemoryTextureClass` instance.
///

public struct MemoryTextureClassRef: MemoryTextureClassProtocol {
        /// Untyped pointer to the underlying `GdkMemoryTextureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemoryTextureClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkMemoryTextureClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkMemoryTextureClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkMemoryTextureClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkMemoryTextureClass>?) {
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

    /// Reference intialiser for a related type that implements `MemoryTextureClassProtocol`
    @inlinable init<T: MemoryTextureClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MemoryTextureClass` type acts as an owner of an underlying `GdkMemoryTextureClass` instance.
/// It provides the methods that can operate on this data type through `MemoryTextureClassProtocol` conformance.
/// Use `MemoryTextureClass` as a strong reference or owner of a `GdkMemoryTextureClass` instance.
///

open class MemoryTextureClass: MemoryTextureClassProtocol {
        /// Untyped pointer to the underlying `GdkMemoryTextureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryTextureClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkMemoryTextureClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryTextureClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkMemoryTextureClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryTextureClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryTextureClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryTextureClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkMemoryTextureClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryTextureClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkMemoryTextureClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkMemoryTextureClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MemoryTextureClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkMemoryTextureClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkMemoryTextureClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `MemoryTextureClassProtocol`
    /// `GdkMemoryTextureClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MemoryTextureClassProtocol`
    @inlinable public init<T: MemoryTextureClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkMemoryTextureClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkMemoryTextureClass`.
    deinit {
        // no reference counting for GdkMemoryTextureClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkMemoryTextureClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkMemoryTextureClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkMemoryTextureClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryTextureClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkMemoryTextureClass, cannot ref(_ptr)
    }



}

// MARK: no MemoryTextureClass properties

// MARK: no MemoryTextureClass signals


// MARK: MemoryTextureClass Record: MemoryTextureClassProtocol extension (methods and fields)
public extension MemoryTextureClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkMemoryTextureClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkMemoryTextureClass>! { return ptr?.assumingMemoryBound(to: GdkMemoryTextureClass.self) }



}



