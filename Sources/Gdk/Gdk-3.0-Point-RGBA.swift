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

// MARK: - Point Record

/// The `PointProtocol` protocol exposes the methods and properties of an underlying `GdkPoint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Point`.
/// Alternatively, use `PointRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines the x and y coordinates of a point.
public protocol PointProtocol {
        /// Untyped pointer to the underlying `GdkPoint` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPoint` instance.
    var _ptr: UnsafeMutablePointer<GdkPoint>! { get }

}

/// The `PointRef` type acts as a lightweight Swift reference to an underlying `GdkPoint` instance.
/// It exposes methods that can operate on this data type through `PointProtocol` conformance.
/// Use `PointRef` only as an `unowned` reference to an existing `GdkPoint` instance.
///
/// Defines the x and y coordinates of a point.
public struct PointRef: PointProtocol {
        /// Untyped pointer to the underlying `GdkPoint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PointRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPoint>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPoint>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPoint>?) {
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

    /// Reference intialiser for a related type that implements `PointProtocol`
    @inlinable init<T: PointProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Point` type acts as an owner of an underlying `GdkPoint` instance.
/// It provides the methods that can operate on this data type through `PointProtocol` conformance.
/// Use `Point` as a strong reference or owner of a `GdkPoint` instance.
///
/// Defines the x and y coordinates of a point.
open class Point: PointProtocol {
        /// Untyped pointer to the underlying `GdkPoint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Point` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPoint>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Point` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Point` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Point` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Point` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPoint>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Point` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPoint>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkPoint` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Point` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPoint>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkPoint, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PointProtocol`
    /// `GdkPoint` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PointProtocol`
    @inlinable public init<T: PointProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkPoint, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkPoint`.
    deinit {
        // no reference counting for GdkPoint, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkPoint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkPoint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkPoint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkPoint, cannot ref(_ptr)
    }



}

// MARK: no Point properties

// MARK: no Point signals


// MARK: Point Record: PointProtocol extension (methods and fields)
public extension PointProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPoint` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPoint>! { return ptr?.assumingMemoryBound(to: GdkPoint.self) }


    /// the x coordinate of the point.
    @inlinable var x: gint {
        /// the x coordinate of the point.
        get {
            let rv = _ptr.pointee.x
            return rv
        }
        /// the x coordinate of the point.
         set {
            _ptr.pointee.x = newValue
        }
    }

    /// the y coordinate of the point.
    @inlinable var y: gint {
        /// the y coordinate of the point.
        get {
            let rv = _ptr.pointee.y
            return rv
        }
        /// the y coordinate of the point.
         set {
            _ptr.pointee.y = newValue
        }
    }

}



// MARK: - RGBA Record

/// The `RGBAProtocol` protocol exposes the methods and properties of an underlying `GdkRGBA` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RGBA`.
/// Alternatively, use `RGBARef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkRGBA` is used to represent a (possibly translucent)
/// color, in a way that is compatible with cairo’s notion of color.
public protocol RGBAProtocol {
        /// Untyped pointer to the underlying `GdkRGBA` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkRGBA` instance.
    var rgba_ptr: UnsafeMutablePointer<GdkRGBA>! { get }

}

/// The `RGBARef` type acts as a lightweight Swift reference to an underlying `GdkRGBA` instance.
/// It exposes methods that can operate on this data type through `RGBAProtocol` conformance.
/// Use `RGBARef` only as an `unowned` reference to an existing `GdkRGBA` instance.
///
/// A `GdkRGBA` is used to represent a (possibly translucent)
/// color, in a way that is compatible with cairo’s notion of color.
public struct RGBARef: RGBAProtocol {
        /// Untyped pointer to the underlying `GdkRGBA` instance.
    /// For type-safe access, use the generated, typed pointer `rgba_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RGBARef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkRGBA>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkRGBA>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkRGBA>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkRGBA>?) {
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

    /// Reference intialiser for a related type that implements `RGBAProtocol`
    @inlinable init<T: RGBAProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RGBA` type acts as an owner of an underlying `GdkRGBA` instance.
/// It provides the methods that can operate on this data type through `RGBAProtocol` conformance.
/// Use `RGBA` as a strong reference or owner of a `GdkRGBA` instance.
///
/// A `GdkRGBA` is used to represent a (possibly translucent)
/// color, in a way that is compatible with cairo’s notion of color.
open class RGBA: RGBAProtocol {
        /// Untyped pointer to the underlying `GdkRGBA` instance.
    /// For type-safe access, use the generated, typed pointer `rgba_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RGBA` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkRGBA>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RGBA` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkRGBA>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RGBA` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RGBA` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RGBA` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkRGBA>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RGBA` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkRGBA>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkRGBA` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RGBA` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkRGBA>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkRGBA, cannot ref(rgba_ptr)
    }

    /// Reference intialiser for a related type that implements `RGBAProtocol`
    /// `GdkRGBA` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RGBAProtocol`
    @inlinable public init<T: RGBAProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkRGBA, cannot ref(rgba_ptr)
    }

    /// Do-nothing destructor for `GdkRGBA`.
    deinit {
        // no reference counting for GdkRGBA, cannot unref(rgba_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkRGBA, cannot ref(rgba_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkRGBA, cannot ref(rgba_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkRGBA, cannot ref(rgba_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RGBAProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkRGBA, cannot ref(rgba_ptr)
    }



}

// MARK: no RGBA properties

// MARK: no RGBA signals


// MARK: RGBA Record: RGBAProtocol extension (methods and fields)
public extension RGBAProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkRGBA` instance.
    @inlinable var rgba_ptr: UnsafeMutablePointer<GdkRGBA>! { return ptr?.assumingMemoryBound(to: GdkRGBA.self) }

    /// Makes a copy of a `GdkRGBA`.
    /// 
    /// The result must be freed through `gdk_rgba_free()`.
    @inlinable func copy() -> RGBARef! {
        guard let rv = RGBARef(gconstpointer: gconstpointer(gdk_rgba_copy(rgba_ptr))) else { return nil }
        return rv
    }

    /// Compares two RGBA colors.
    @inlinable func equal<RGBAT: RGBAProtocol>(p2: RGBAT) -> Bool {
        let rv = ((gdk_rgba_equal(rgba_ptr, p2.rgba_ptr)) != 0)
        return rv
    }

    /// Frees a `GdkRGBA` created with `gdk_rgba_copy()`
    @inlinable func free() {
        gdk_rgba_free(rgba_ptr)
    
    }

    /// A hash function suitable for using for a hash
    /// table that stores `GdkRGBAs`.
    @inlinable func hash() -> Int {
        let rv = Int(gdk_rgba_hash(rgba_ptr))
        return rv
    }

    /// Parses a textual representation of a color, filling in
    /// the `red`, `green`, `blue` and `alpha` fields of the `rgba` `GdkRGBA`.
    /// 
    /// The string can be either one of:
    /// - A standard name (Taken from the X11 rgb.txt file).
    /// - A hexadecimal value in the form “\`rgb`”, “\`rrggbb`”,
    ///   “\`rrrgggbbb`” or ”\`rrrrggggbbbb`”
    /// - A RGB color in the form `“rgb(r,g,b)`” (In this case the color will
    ///   have full opacity)
    /// - A RGBA color in the form `“rgba(r,g,b,a)`”
    /// 
    /// Where “r”, “g”, “b” and “a” are respectively the red, green, blue and
    /// alpha color values. In the last two cases, “r”, “g”, and “b” are either integers
    /// in the range 0 to 255 or percentage values in the range 0% to 100``, and
    /// a is a floating point value in the range 0 to 1.
    @inlinable func parse(spec: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gdk_rgba_parse(rgba_ptr, spec)) != 0)
        return rv
    }

    /// Returns a textual specification of `rgba` in the form
    /// ``rgb(r,g,b)`` or
    /// ``rgba(r g,b,a)``,
    /// where “r”, “g”, “b” and “a” represent the red, green,
    /// blue and alpha values respectively. “r”, “g”, and “b” are
    /// represented as integers in the range 0 to 255, and “a”
    /// is represented as a floating point value in the range 0 to 1.
    /// 
    /// These string forms are string forms that are supported by
    /// the CSS3 colors module, and can be parsed by `gdk_rgba_parse()`.
    /// 
    /// Note that this string representation may lose some
    /// precision, since “r”, “g” and “b” are represented as 8-bit
    /// integers. If this is a concern, you should use a
    /// different representation.
    @inlinable func toString() -> String! {
        let rv = gdk_rgba_to_string(rgba_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets the specified `GdkRGBA` as the source color of `cr`.
    @inlinable func cairoSetSourceRgba<ContextT: Cairo.ContextProtocol>(cr: ContextT) {
        gdk_cairo_set_source_rgba(cr._ptr, rgba_ptr)
    
    }

    /// The intensity of the red channel from 0.0 to 1.0 inclusive
    @inlinable var red: gdouble {
        /// The intensity of the red channel from 0.0 to 1.0 inclusive
        get {
            let rv = rgba_ptr.pointee.red
            return rv
        }
        /// The intensity of the red channel from 0.0 to 1.0 inclusive
         set {
            rgba_ptr.pointee.red = newValue
        }
    }

    /// The intensity of the green channel from 0.0 to 1.0 inclusive
    @inlinable var green: gdouble {
        /// The intensity of the green channel from 0.0 to 1.0 inclusive
        get {
            let rv = rgba_ptr.pointee.green
            return rv
        }
        /// The intensity of the green channel from 0.0 to 1.0 inclusive
         set {
            rgba_ptr.pointee.green = newValue
        }
    }

    /// The intensity of the blue channel from 0.0 to 1.0 inclusive
    @inlinable var blue: gdouble {
        /// The intensity of the blue channel from 0.0 to 1.0 inclusive
        get {
            let rv = rgba_ptr.pointee.blue
            return rv
        }
        /// The intensity of the blue channel from 0.0 to 1.0 inclusive
         set {
            rgba_ptr.pointee.blue = newValue
        }
    }

    /// The opacity of the color from 0.0 for completely translucent to
    ///   1.0 for opaque
    @inlinable var alpha: gdouble {
        /// The opacity of the color from 0.0 for completely translucent to
        ///   1.0 for opaque
        get {
            let rv = rgba_ptr.pointee.alpha
            return rv
        }
        /// The opacity of the color from 0.0 for completely translucent to
        ///   1.0 for opaque
         set {
            rgba_ptr.pointee.alpha = newValue
        }
    }

}



