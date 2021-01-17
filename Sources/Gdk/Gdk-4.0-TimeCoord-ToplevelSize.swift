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

// MARK: - TimeCoord Record

/// The `TimeCoordProtocol` protocol exposes the methods and properties of an underlying `GdkTimeCoord` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TimeCoord`.
/// Alternatively, use `TimeCoordRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkTimeCoord` stores a single event in a motion history.
public protocol TimeCoordProtocol {
        /// Untyped pointer to the underlying `GdkTimeCoord` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkTimeCoord` instance.
    var _ptr: UnsafeMutablePointer<GdkTimeCoord>! { get }

}

/// The `TimeCoordRef` type acts as a lightweight Swift reference to an underlying `GdkTimeCoord` instance.
/// It exposes methods that can operate on this data type through `TimeCoordProtocol` conformance.
/// Use `TimeCoordRef` only as an `unowned` reference to an existing `GdkTimeCoord` instance.
///
/// A `GdkTimeCoord` stores a single event in a motion history.
public struct TimeCoordRef: TimeCoordProtocol {
        /// Untyped pointer to the underlying `GdkTimeCoord` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TimeCoordRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkTimeCoord>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkTimeCoord>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkTimeCoord>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkTimeCoord>?) {
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

    /// Reference intialiser for a related type that implements `TimeCoordProtocol`
    @inlinable init<T: TimeCoordProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TimeCoord` type acts as an owner of an underlying `GdkTimeCoord` instance.
/// It provides the methods that can operate on this data type through `TimeCoordProtocol` conformance.
/// Use `TimeCoord` as a strong reference or owner of a `GdkTimeCoord` instance.
///
/// A `GdkTimeCoord` stores a single event in a motion history.
open class TimeCoord: TimeCoordProtocol {
        /// Untyped pointer to the underlying `GdkTimeCoord` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeCoord` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkTimeCoord>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeCoord` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkTimeCoord>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeCoord` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeCoord` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeCoord` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkTimeCoord>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeCoord` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkTimeCoord>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkTimeCoord` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TimeCoord` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkTimeCoord>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkTimeCoord, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TimeCoordProtocol`
    /// `GdkTimeCoord` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TimeCoordProtocol`
    @inlinable public init<T: TimeCoordProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkTimeCoord, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkTimeCoord`.
    deinit {
        // no reference counting for GdkTimeCoord, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkTimeCoord, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkTimeCoord, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkTimeCoord, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeCoordProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkTimeCoord, cannot ref(_ptr)
    }



}

// MARK: no TimeCoord properties

// MARK: no TimeCoord signals

// MARK: TimeCoord has no signals
// MARK: TimeCoord Record: TimeCoordProtocol extension (methods and fields)
public extension TimeCoordProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkTimeCoord` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkTimeCoord>! { return ptr?.assumingMemoryBound(to: GdkTimeCoord.self) }


    /// The timestamp for this event.
    @inlinable var time: guint32 {
        /// The timestamp for this event.
        get {
            let rv = _ptr.pointee.time
            return rv
        }
        /// The timestamp for this event.
         set {
            _ptr.pointee.time = newValue
        }
    }

    /// Flags indicating what axes are present
    @inlinable var flags: AxisFlags {
        /// Flags indicating what axes are present
        get {
            let rv = AxisFlags(_ptr.pointee.flags)
            return rv
        }
        /// Flags indicating what axes are present
         set {
            _ptr.pointee.flags = newValue.value
        }
    }

    /// axis values
    @inlinable var axes: (CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble, CDouble) {
        /// axis values
        get {
            let rv = _ptr.pointee.axes
            return rv
        }
        /// axis values
         set {
            _ptr.pointee.axes = newValue
        }
    }

}



/// Metatype/GType declaration for Toplevel
public extension ToplevelInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Toplevel`
    static var metatypeReference: GType { gdk_toplevel_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkToplevelInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkToplevelInterface.self) }
    
    static var metatype: GdkToplevelInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ToplevelInterfaceRef? { ToplevelInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ToplevelInterface Record

/// The `ToplevelInterfaceProtocol` protocol exposes the methods and properties of an underlying `GdkToplevelInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToplevelInterface`.
/// Alternatively, use `ToplevelInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ToplevelInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkToplevelInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkToplevelInterface` instance.
    var _ptr: UnsafeMutablePointer<GdkToplevelInterface>! { get }

}

/// The `ToplevelInterfaceRef` type acts as a lightweight Swift reference to an underlying `GdkToplevelInterface` instance.
/// It exposes methods that can operate on this data type through `ToplevelInterfaceProtocol` conformance.
/// Use `ToplevelInterfaceRef` only as an `unowned` reference to an existing `GdkToplevelInterface` instance.
///

public struct ToplevelInterfaceRef: ToplevelInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkToplevelInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToplevelInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkToplevelInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkToplevelInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkToplevelInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkToplevelInterface>?) {
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

    /// Reference intialiser for a related type that implements `ToplevelInterfaceProtocol`
    @inlinable init<T: ToplevelInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ToplevelInterface Record: ToplevelInterfaceProtocol extension (methods and fields)
public extension ToplevelInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkToplevelInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkToplevelInterface>! { return ptr?.assumingMemoryBound(to: GdkToplevelInterface.self) }



}



// MARK: - ToplevelLayout Record

/// The `ToplevelLayoutProtocol` protocol exposes the methods and properties of an underlying `GdkToplevelLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToplevelLayout`.
/// Alternatively, use `ToplevelLayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Toplevel surfaces are sovereign windows that can be presented
/// to the user in various states (maximized, on all workspaces,
/// etc).
/// 
/// The GdkToplevelLayout struct contains information that
/// is necessary to do so, and is passed to `gdk_toplevel_present()`.
public protocol ToplevelLayoutProtocol {
        /// Untyped pointer to the underlying `GdkToplevelLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkToplevelLayout` instance.
    var toplevel_layout_ptr: UnsafeMutablePointer<GdkToplevelLayout>! { get }

}

/// The `ToplevelLayoutRef` type acts as a lightweight Swift reference to an underlying `GdkToplevelLayout` instance.
/// It exposes methods that can operate on this data type through `ToplevelLayoutProtocol` conformance.
/// Use `ToplevelLayoutRef` only as an `unowned` reference to an existing `GdkToplevelLayout` instance.
///
/// Toplevel surfaces are sovereign windows that can be presented
/// to the user in various states (maximized, on all workspaces,
/// etc).
/// 
/// The GdkToplevelLayout struct contains information that
/// is necessary to do so, and is passed to `gdk_toplevel_present()`.
public struct ToplevelLayoutRef: ToplevelLayoutProtocol {
        /// Untyped pointer to the underlying `GdkToplevelLayout` instance.
    /// For type-safe access, use the generated, typed pointer `toplevel_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToplevelLayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkToplevelLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkToplevelLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkToplevelLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkToplevelLayout>?) {
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

    /// Reference intialiser for a related type that implements `ToplevelLayoutProtocol`
    @inlinable init<T: ToplevelLayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a toplevel layout description.
    /// 
    /// Used together with `gdk_toplevel_present()` to describe
    /// how a toplevel surface should be placed and behave on-screen.
    /// 
    /// The size is in ”application pixels”, not
    /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
    @inlinable init() {
        let rv = gdk_toplevel_layout_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ToplevelLayout` type acts as a reference-counted owner of an underlying `GdkToplevelLayout` instance.
/// It provides the methods that can operate on this data type through `ToplevelLayoutProtocol` conformance.
/// Use `ToplevelLayout` as a strong reference or owner of a `GdkToplevelLayout` instance.
///
/// Toplevel surfaces are sovereign windows that can be presented
/// to the user in various states (maximized, on all workspaces,
/// etc).
/// 
/// The GdkToplevelLayout struct contains information that
/// is necessary to do so, and is passed to `gdk_toplevel_present()`.
open class ToplevelLayout: ToplevelLayoutProtocol {
        /// Untyped pointer to the underlying `GdkToplevelLayout` instance.
    /// For type-safe access, use the generated, typed pointer `toplevel_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkToplevelLayout>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkToplevelLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelLayout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkToplevelLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkToplevelLayout>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkToplevelLayout`.
    /// i.e., ownership is transferred to the `ToplevelLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkToplevelLayout>) {
        ptr = UnsafeMutableRawPointer(op)
        gdk_toplevel_layout_ref(ptr.assumingMemoryBound(to: GdkToplevelLayout.self))
    }

    /// Reference intialiser for a related type that implements `ToplevelLayoutProtocol`
    /// Will retain `GdkToplevelLayout`.
    /// - Parameter other: an instance of a related type that implements `ToplevelLayoutProtocol`
    @inlinable public init<T: ToplevelLayoutProtocol>(_ other: T) {
        ptr = other.ptr
        gdk_toplevel_layout_ref(ptr.assumingMemoryBound(to: GdkToplevelLayout.self))
    }

    /// Releases the underlying `GdkToplevelLayout` instance using `gdk_toplevel_layout_unref`.
    deinit {
        gdk_toplevel_layout_unref(ptr.assumingMemoryBound(to: GdkToplevelLayout.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gdk_toplevel_layout_ref(ptr.assumingMemoryBound(to: GdkToplevelLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gdk_toplevel_layout_ref(ptr.assumingMemoryBound(to: GdkToplevelLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gdk_toplevel_layout_ref(ptr.assumingMemoryBound(to: GdkToplevelLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gdk_toplevel_layout_ref(ptr.assumingMemoryBound(to: GdkToplevelLayout.self))
    }

    /// Create a toplevel layout description.
    /// 
    /// Used together with `gdk_toplevel_present()` to describe
    /// how a toplevel surface should be placed and behave on-screen.
    /// 
    /// The size is in ”application pixels”, not
    /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
    @inlinable public init() {
        let rv = gdk_toplevel_layout_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no ToplevelLayout properties

// MARK: no ToplevelLayout signals

// MARK: ToplevelLayout has no signals
// MARK: ToplevelLayout Record: ToplevelLayoutProtocol extension (methods and fields)
public extension ToplevelLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkToplevelLayout` instance.
    @inlinable var toplevel_layout_ptr: UnsafeMutablePointer<GdkToplevelLayout>! { return ptr?.assumingMemoryBound(to: GdkToplevelLayout.self) }

    /// Create a new `GdkToplevelLayout` and copy the contents of `layout` into it.
    @inlinable func copy() -> ToplevelLayoutRef! {
        guard let rv = ToplevelLayoutRef(gconstpointer: gconstpointer(gdk_toplevel_layout_copy(toplevel_layout_ptr))) else { return nil }
        return rv
    }

    /// Check whether `layout` and `other` has identical layout properties.
    @inlinable func equal<ToplevelLayoutT: ToplevelLayoutProtocol>(other: ToplevelLayoutT) -> Bool {
        let rv = ((gdk_toplevel_layout_equal(toplevel_layout_ptr, other.toplevel_layout_ptr)) != 0)
        return rv
    }

    /// If the layout specifies whether to the toplevel should go fullscreen,
    /// the value pointed to by `fullscreen` is set to `true` if it should go
    /// fullscreen, or `false`, if it should go unfullscreen.
    @inlinable func get(fullscreen: UnsafeMutablePointer<gboolean>!) -> Bool {
        let rv = ((gdk_toplevel_layout_get_fullscreen(toplevel_layout_ptr, fullscreen)) != 0)
        return rv
    }

    /// Returns the monitor that the layout is fullscreening
    /// the surface on.
    @inlinable func getFullscreenMonitor() -> MonitorRef! {
        let rv = MonitorRef(gconstpointer: gconstpointer(gdk_toplevel_layout_get_fullscreen_monitor(toplevel_layout_ptr)))
        return rv
    }

    /// If the layout specifies whether to the toplevel should go maximized,
    /// the value pointed to by `maximized` is set to `true` if it should go
    /// fullscreen, or `false`, if it should go unmaximized.
    @inlinable func get(maximized: UnsafeMutablePointer<gboolean>!) -> Bool {
        let rv = ((gdk_toplevel_layout_get_maximized(toplevel_layout_ptr, maximized)) != 0)
        return rv
    }

    /// Returns whether the layout should allow the user
    /// to resize the surface.
    @inlinable func getResizable() -> Bool {
        let rv = ((gdk_toplevel_layout_get_resizable(toplevel_layout_ptr)) != 0)
        return rv
    }

    /// Increases the reference count of `layout`.
    @discardableResult @inlinable func ref() -> ToplevelLayoutRef! {
        guard let rv = ToplevelLayoutRef(gconstpointer: gconstpointer(gdk_toplevel_layout_ref(toplevel_layout_ptr))) else { return nil }
        return rv
    }

    /// Sets whether the layout should cause the surface
    /// to be fullscreen when presented.
    @inlinable func set(fullscreen: Bool, monitor: MonitorRef? = nil) {
        gdk_toplevel_layout_set_fullscreen(toplevel_layout_ptr, gboolean((fullscreen) ? 1 : 0), monitor?.monitor_ptr)
    
    }
    /// Sets whether the layout should cause the surface
    /// to be fullscreen when presented.
    @inlinable func set<MonitorT: MonitorProtocol>(fullscreen: Bool, monitor: MonitorT?) {
        gdk_toplevel_layout_set_fullscreen(toplevel_layout_ptr, gboolean((fullscreen) ? 1 : 0), monitor?.monitor_ptr)
    
    }

    /// Sets whether the layout should cause the surface
    /// to be maximized when presented.
    @inlinable func set(maximized: Bool) {
        gdk_toplevel_layout_set_maximized(toplevel_layout_ptr, gboolean((maximized) ? 1 : 0))
    
    }

    /// Sets whether the layout should allow the user
    /// to resize the surface after it has been presented.
    @inlinable func set(resizable: Bool) {
        gdk_toplevel_layout_set_resizable(toplevel_layout_ptr, gboolean((resizable) ? 1 : 0))
    
    }

    /// Decreases the reference count of `layout`.
    @inlinable func unref() {
        gdk_toplevel_layout_unref(toplevel_layout_ptr)
    
    }
    /// Returns the monitor that the layout is fullscreening
    /// the surface on.
    @inlinable var fullscreenMonitor: MonitorRef! {
        /// Returns the monitor that the layout is fullscreening
        /// the surface on.
        get {
            let rv = MonitorRef(gconstpointer: gconstpointer(gdk_toplevel_layout_get_fullscreen_monitor(toplevel_layout_ptr)))
            return rv
        }
    }

    /// Returns whether the layout should allow the user
    /// to resize the surface.
    @inlinable var resizable: Bool {
        /// Returns whether the layout should allow the user
        /// to resize the surface.
        get {
            let rv = ((gdk_toplevel_layout_get_resizable(toplevel_layout_ptr)) != 0)
            return rv
        }
        /// Sets whether the layout should allow the user
        /// to resize the surface after it has been presented.
        nonmutating set {
            gdk_toplevel_layout_set_resizable(toplevel_layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - ToplevelSize Record

/// The `ToplevelSizeProtocol` protocol exposes the methods and properties of an underlying `GdkToplevelSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToplevelSize`.
/// Alternatively, use `ToplevelSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GdkToplevelSIze struct contains information that may be useful
/// for users of GdkToplevel to compute a surface size. It also carries
/// information back with the computational result.
public protocol ToplevelSizeProtocol {
        /// Untyped pointer to the underlying `GdkToplevelSize` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkToplevelSize` instance.
    var _ptr: UnsafeMutablePointer<GdkToplevelSize>! { get }

}

/// The `ToplevelSizeRef` type acts as a lightweight Swift reference to an underlying `GdkToplevelSize` instance.
/// It exposes methods that can operate on this data type through `ToplevelSizeProtocol` conformance.
/// Use `ToplevelSizeRef` only as an `unowned` reference to an existing `GdkToplevelSize` instance.
///
/// The GdkToplevelSIze struct contains information that may be useful
/// for users of GdkToplevel to compute a surface size. It also carries
/// information back with the computational result.
public struct ToplevelSizeRef: ToplevelSizeProtocol {
        /// Untyped pointer to the underlying `GdkToplevelSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToplevelSizeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkToplevelSize>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkToplevelSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkToplevelSize>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkToplevelSize>?) {
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

    /// Reference intialiser for a related type that implements `ToplevelSizeProtocol`
    @inlinable init<T: ToplevelSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToplevelSize` type acts as an owner of an underlying `GdkToplevelSize` instance.
/// It provides the methods that can operate on this data type through `ToplevelSizeProtocol` conformance.
/// Use `ToplevelSize` as a strong reference or owner of a `GdkToplevelSize` instance.
///
/// The GdkToplevelSIze struct contains information that may be useful
/// for users of GdkToplevel to compute a surface size. It also carries
/// information back with the computational result.
open class ToplevelSize: ToplevelSizeProtocol {
        /// Untyped pointer to the underlying `GdkToplevelSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkToplevelSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkToplevelSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelSize` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkToplevelSize>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToplevelSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkToplevelSize>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkToplevelSize` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ToplevelSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkToplevelSize>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkToplevelSize, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ToplevelSizeProtocol`
    /// `GdkToplevelSize` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ToplevelSizeProtocol`
    @inlinable public init<T: ToplevelSizeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkToplevelSize, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkToplevelSize`.
    deinit {
        // no reference counting for GdkToplevelSize, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkToplevelSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkToplevelSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkToplevelSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkToplevelSize, cannot ref(_ptr)
    }



}

// MARK: no ToplevelSize properties

// MARK: no ToplevelSize signals

// MARK: ToplevelSize has no signals
// MARK: ToplevelSize Record: ToplevelSizeProtocol extension (methods and fields)
public extension ToplevelSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkToplevelSize` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkToplevelSize>! { return ptr?.assumingMemoryBound(to: GdkToplevelSize.self) }

    /// Retrieves the bounds the toplevel is placed within.
    /// 
    /// The bounds represent the largest size a toplevel may have while still being
    /// able to fit within some type of boundary. Depending on the backend, this may
    /// be equivalent to the dimensions of the work area or the monitor on which the
    /// window is being presented on, or something else that limits the way a
    /// toplevel can be presented.
    @inlinable func getBounds(boundsWidth: UnsafeMutablePointer<gint>!, boundsHeight: UnsafeMutablePointer<gint>!) {
        gdk_toplevel_size_get_bounds(_ptr, boundsWidth, boundsHeight)
    
    }

    /// The minimum size corresponds to the limitations the toplevel can be shrunk
    /// to, without resulting in incorrect painting. A user of a `GdkToplevel` should
    /// calculate these given both the existing size, and the bounds retrieved from
    /// the `GdkToplevelSize` object.
    /// 
    /// The minimum size should be within the bounds (see
    /// `gdk_toplevel_size_get_bounds()`).
    @inlinable func setMinSize(minWidth: Int, minHeight: Int) {
        gdk_toplevel_size_set_min_size(_ptr, gint(minWidth), gint(minHeight))
    
    }

    /// The shadow width corresponds to the part of the computed surface size
    /// that would consist of the shadow margin surrounding the window, would
    /// there be any.
    @inlinable func setShadowWidth(`left`: Int, `right`: Int, top: Int, bottom: Int) {
        gdk_toplevel_size_set_shadow_width(_ptr, gint(`left`), gint(`right`), gint(top), gint(bottom))
    
    }

    /// Sets the size the toplevel prefers to be resized to. The size should be
    /// within the bounds (see `gdk_toplevel_size_get_bounds()`). The set size should
    /// be considered as a hint, and should not be assumed to be respected by the
    /// windowing system, or backend.
    @inlinable func setSize(width: Int, height: Int) {
        gdk_toplevel_size_set_size(_ptr, gint(width), gint(height))
    
    }


}



