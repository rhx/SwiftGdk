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

// MARK: - Rectangle Record

/// The `RectangleProtocol` protocol exposes the methods and properties of an underlying `GdkRectangle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Rectangle`.
/// Alternatively, use `RectangleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines the position and size of a rectangle. It is identical to
/// `cairo_rectangle_int_t`.
public protocol RectangleProtocol {
        /// Untyped pointer to the underlying `GdkRectangle` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkRectangle` instance.
    var rectangle_ptr: UnsafeMutablePointer<GdkRectangle>! { get }

}

/// The `RectangleRef` type acts as a lightweight Swift reference to an underlying `GdkRectangle` instance.
/// It exposes methods that can operate on this data type through `RectangleProtocol` conformance.
/// Use `RectangleRef` only as an `unowned` reference to an existing `GdkRectangle` instance.
///
/// Defines the position and size of a rectangle. It is identical to
/// `cairo_rectangle_int_t`.
public struct RectangleRef: RectangleProtocol {
        /// Untyped pointer to the underlying `GdkRectangle` instance.
    /// For type-safe access, use the generated, typed pointer `rectangle_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RectangleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkRectangle>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkRectangle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkRectangle>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkRectangle>?) {
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

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    @inlinable init<T: RectangleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Rectangle` type acts as an owner of an underlying `GdkRectangle` instance.
/// It provides the methods that can operate on this data type through `RectangleProtocol` conformance.
/// Use `Rectangle` as a strong reference or owner of a `GdkRectangle` instance.
///
/// Defines the position and size of a rectangle. It is identical to
/// `cairo_rectangle_int_t`.
open class Rectangle: RectangleProtocol {
        /// Untyped pointer to the underlying `GdkRectangle` instance.
    /// For type-safe access, use the generated, typed pointer `rectangle_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkRectangle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkRectangle>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkRectangle>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkRectangle` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Rectangle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkRectangle>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkRectangle, cannot ref(rectangle_ptr)
    }

    /// Reference intialiser for a related type that implements `RectangleProtocol`
    /// `GdkRectangle` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RectangleProtocol`
    @inlinable public init<T: RectangleProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkRectangle, cannot ref(rectangle_ptr)
    }

    /// Do-nothing destructor for `GdkRectangle`.
    deinit {
        // no reference counting for GdkRectangle, cannot unref(rectangle_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkRectangle, cannot ref(rectangle_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkRectangle, cannot ref(rectangle_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkRectangle, cannot ref(rectangle_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RectangleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkRectangle, cannot ref(rectangle_ptr)
    }



}

// MARK: no Rectangle properties

// MARK: no Rectangle signals

// MARK: Rectangle has no signals
// MARK: Rectangle Record: RectangleProtocol extension (methods and fields)
public extension RectangleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkRectangle` instance.
    @inlinable var rectangle_ptr: UnsafeMutablePointer<GdkRectangle>! { return ptr?.assumingMemoryBound(to: GdkRectangle.self) }

    /// Returns `TRUE` if `rect` contains the point described by `x` and `y`.
    @inlinable func containsPoint(x: Int, y: Int) -> Bool {
        let rv = ((gdk_rectangle_contains_point(rectangle_ptr, gint(x), gint(y))) != 0)
        return rv
    }

    /// Checks if the two given rectangles are equal.
    @inlinable func equal<RectangleT: RectangleProtocol>(rect2: RectangleT) -> Bool {
        let rv = ((gdk_rectangle_equal(rectangle_ptr, rect2.rectangle_ptr)) != 0)
        return rv
    }

    /// Calculates the intersection of two rectangles. It is allowed for
    /// `dest` to be the same as either `src1` or `src2`. If the rectangles
    /// do not intersect, `dest`’s width and height is set to 0 and its x
    /// and y values are undefined. If you are only interested in whether
    /// the rectangles intersect, but not in the intersecting area itself,
    /// pass `nil` for `dest`.
    @inlinable func intersect<RectangleT: RectangleProtocol>(src2: RectangleT, dest: RectangleT?) -> Bool {
        let rv = ((gdk_rectangle_intersect(rectangle_ptr, src2.rectangle_ptr, dest?.rectangle_ptr)) != 0)
        return rv
    }

    /// Calculates the union of two rectangles.
    /// The union of rectangles `src1` and `src2` is the smallest rectangle which
    /// includes both `src1` and `src2` within it.
    /// It is allowed for `dest` to be the same as either `src1` or `src2`.
    /// 
    /// Note that this function does not ignore 'empty' rectangles (ie. with
    /// zero width or height).
    @inlinable func union<RectangleT: RectangleProtocol>(src2: RectangleT, dest: RectangleT) {
        gdk_rectangle_union(rectangle_ptr, src2.rectangle_ptr, dest.rectangle_ptr)
    
    }

    /// Adds the given rectangle to the current path of `cr`.
    @inlinable func cairoRectangle<ContextT: Cairo.ContextProtocol>(cr: ContextT) {
        gdk_cairo_rectangle(cr._ptr, rectangle_ptr)
    
    }

    /// the x coordinate of the top left corner
    @inlinable var x: gint {
        /// the x coordinate of the top left corner
        get {
            let rv = rectangle_ptr.pointee.x
            return rv
        }
        /// the x coordinate of the top left corner
         set {
            rectangle_ptr.pointee.x = newValue
        }
    }

    /// the y coordinate of the top left corner
    @inlinable var y: gint {
        /// the y coordinate of the top left corner
        get {
            let rv = rectangle_ptr.pointee.y
            return rv
        }
        /// the y coordinate of the top left corner
         set {
            rectangle_ptr.pointee.y = newValue
        }
    }

    /// the width of the rectangle
    @inlinable var width: gint {
        /// the width of the rectangle
        get {
            let rv = rectangle_ptr.pointee.width
            return rv
        }
        /// the width of the rectangle
         set {
            rectangle_ptr.pointee.width = newValue
        }
    }

    /// the height of the rectangle
    @inlinable var height: gint {
        /// the height of the rectangle
        get {
            let rv = rectangle_ptr.pointee.height
            return rv
        }
        /// the height of the rectangle
         set {
            rectangle_ptr.pointee.height = newValue
        }
    }

}



/// Metatype/GType declaration for Snapshot
public extension SnapshotClassRef {
    
    /// This getter returns the GLib type identifier registered for `Snapshot`
    static var metatypeReference: GType { gdk_snapshot_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkSnapshotClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkSnapshotClass.self) }
    
    static var metatype: GdkSnapshotClass? { metatypePointer?.pointee } 
    
    static var wrapper: SnapshotClassRef? { SnapshotClassRef(metatypePointer) }
    
    
}

// MARK: - SnapshotClass Record

/// The `SnapshotClassProtocol` protocol exposes the methods and properties of an underlying `GdkSnapshotClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SnapshotClass`.
/// Alternatively, use `SnapshotClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SnapshotClassProtocol {
        /// Untyped pointer to the underlying `GdkSnapshotClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkSnapshotClass` instance.
    var _ptr: UnsafeMutablePointer<GdkSnapshotClass>! { get }

}

/// The `SnapshotClassRef` type acts as a lightweight Swift reference to an underlying `GdkSnapshotClass` instance.
/// It exposes methods that can operate on this data type through `SnapshotClassProtocol` conformance.
/// Use `SnapshotClassRef` only as an `unowned` reference to an existing `GdkSnapshotClass` instance.
///

public struct SnapshotClassRef: SnapshotClassProtocol {
        /// Untyped pointer to the underlying `GdkSnapshotClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SnapshotClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkSnapshotClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkSnapshotClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkSnapshotClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkSnapshotClass>?) {
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

    /// Reference intialiser for a related type that implements `SnapshotClassProtocol`
    @inlinable init<T: SnapshotClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SnapshotClass Record: SnapshotClassProtocol extension (methods and fields)
public extension SnapshotClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkSnapshotClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkSnapshotClass>! { return ptr?.assumingMemoryBound(to: GdkSnapshotClass.self) }



}



