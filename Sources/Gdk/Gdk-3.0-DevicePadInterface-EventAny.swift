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

// MARK: - DevicePadInterface Record

/// The `DevicePadInterfaceProtocol` protocol exposes the methods and properties of an underlying `GdkDevicePadInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DevicePadInterface`.
/// Alternatively, use `DevicePadInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DevicePadInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDevicePadInterface` instance.
    var _ptr: UnsafeMutablePointer<GdkDevicePadInterface>! { get }

}

/// The `DevicePadInterfaceRef` type acts as a lightweight Swift reference to an underlying `GdkDevicePadInterface` instance.
/// It exposes methods that can operate on this data type through `DevicePadInterfaceProtocol` conformance.
/// Use `DevicePadInterfaceRef` only as an `unowned` reference to an existing `GdkDevicePadInterface` instance.
///

public struct DevicePadInterfaceRef: DevicePadInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DevicePadInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDevicePadInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDevicePadInterface>?) {
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

    /// Reference intialiser for a related type that implements `DevicePadInterfaceProtocol`
    @inlinable init<T: DevicePadInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDevicePadInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDevicePadInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkDevicePadInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DevicePadInterfaceProtocol`
    /// `GdkDevicePadInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DevicePadInterfaceProtocol`
    @inlinable public init<T: DevicePadInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkDevicePadInterface`.
    deinit {
        // no reference counting for GdkDevicePadInterface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }



}

// MARK: no DevicePadInterface properties

// MARK: no DevicePadInterface signals


// MARK: DevicePadInterface Record: DevicePadInterfaceProtocol extension (methods and fields)
public extension DevicePadInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevicePadInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkDevicePadInterface>! { return ptr?.assumingMemoryBound(to: GdkDevicePadInterface.self) }



}



// MARK: - DrawingContextClass Record

/// The `DrawingContextClassProtocol` protocol exposes the methods and properties of an underlying `GdkDrawingContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingContextClass`.
/// Alternatively, use `DrawingContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DrawingContextClassProtocol {
        /// Untyped pointer to the underlying `GdkDrawingContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDrawingContextClass` instance.
    var _ptr: UnsafeMutablePointer<GdkDrawingContextClass>! { get }

}

/// The `DrawingContextClassRef` type acts as a lightweight Swift reference to an underlying `GdkDrawingContextClass` instance.
/// It exposes methods that can operate on this data type through `DrawingContextClassProtocol` conformance.
/// Use `DrawingContextClassRef` only as an `unowned` reference to an existing `GdkDrawingContextClass` instance.
///

public struct DrawingContextClassRef: DrawingContextClassProtocol {
        /// Untyped pointer to the underlying `GdkDrawingContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DrawingContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDrawingContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDrawingContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDrawingContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDrawingContextClass>?) {
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

    /// Reference intialiser for a related type that implements `DrawingContextClassProtocol`
    @inlinable init<T: DrawingContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDrawingContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDrawingContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContextClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDrawingContextClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDrawingContextClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkDrawingContextClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DrawingContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDrawingContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkDrawingContextClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DrawingContextClassProtocol`
    /// `GdkDrawingContextClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DrawingContextClassProtocol`
    @inlinable public init<T: DrawingContextClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkDrawingContextClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkDrawingContextClass`.
    deinit {
        // no reference counting for GdkDrawingContextClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkDrawingContextClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkDrawingContextClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkDrawingContextClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkDrawingContextClass, cannot ref(_ptr)
    }



}

// MARK: no DrawingContextClass properties

// MARK: no DrawingContextClass signals


// MARK: DrawingContextClass Record: DrawingContextClassProtocol extension (methods and fields)
public extension DrawingContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDrawingContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkDrawingContextClass>! { return ptr?.assumingMemoryBound(to: GdkDrawingContextClass.self) }



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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkEventAny` instance.
    var _ptr: UnsafeMutablePointer<GdkEventAny>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventAnyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkEventAny>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkEventAny>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkEventAny>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkEventAny>?) {
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

    /// Reference intialiser for a related type that implements `EventAnyProtocol`
    @inlinable init<T: EventAnyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventAny` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkEventAny>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventAny` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkEventAny>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventAny` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventAny` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventAny` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkEventAny>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventAny` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkEventAny>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventAny` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventAny` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkEventAny>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventAny, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `EventAnyProtocol`
    /// `GdkEventAny` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventAnyProtocol`
    @inlinable public init<T: EventAnyProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkEventAny, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkEventAny`.
    deinit {
        // no reference counting for GdkEventAny, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventAny, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventAny, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventAny, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventAnyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventAny, cannot ref(_ptr)
    }



}

// MARK: no EventAny properties

// MARK: no EventAny signals


// MARK: EventAny Record: EventAnyProtocol extension (methods and fields)
public extension EventAnyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventAny` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkEventAny>! { return ptr?.assumingMemoryBound(to: GdkEventAny.self) }


    /// the type of the event.
    @inlinable var type: GdkEventType {
        /// the type of the event.
        get {
            let rv = _ptr.pointee.type
            return rv
        }
        /// the type of the event.
         set {
            _ptr.pointee.type = newValue
        }
    }

    /// the window which received the event.
    @inlinable var window: WindowRef! {
        /// the window which received the event.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(_ptr.pointee.window))
            return rv
        }
        /// the window which received the event.
         set {
            _ptr.pointee.window = UnsafeMutablePointer<GdkWindow>(newValue.window_ptr)
        }
    }

    /// `true` if the event was sent explicitly.
    @inlinable var sendEvent: gint8 {
        /// `true` if the event was sent explicitly.
        get {
            let rv = _ptr.pointee.send_event
            return rv
        }
        /// `true` if the event was sent explicitly.
         set {
            _ptr.pointee.send_event = newValue
        }
    }

}



