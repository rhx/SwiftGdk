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

// MARK: - Atom Record

/// The `AtomProtocol` protocol exposes the methods and properties of an underlying `GdkAtom` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Atom`.
/// Alternatively, use `AtomRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque type representing a string as an index into a table
/// of strings on the X server.
public protocol AtomProtocol {
        /// Untyped pointer to the underlying `GdkAtom` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkAtom` instance.
    var _ptr: GdkAtom! { get }

}

/// The `AtomRef` type acts as a lightweight Swift reference to an underlying `GdkAtom` instance.
/// It exposes methods that can operate on this data type through `AtomProtocol` conformance.
/// Use `AtomRef` only as an `unowned` reference to an existing `GdkAtom` instance.
///
/// An opaque type representing a string as an index into a table
/// of strings on the X server.
public struct AtomRef: AtomProtocol {
        /// Untyped pointer to the underlying `GdkAtom` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AtomRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: GdkAtom) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkAtom>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: GdkAtom?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkAtom>?) {
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

    /// Reference intialiser for a related type that implements `AtomProtocol`
    @inlinable init<T: AtomProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Atom` type acts as an owner of an underlying `GdkAtom` instance.
/// It provides the methods that can operate on this data type through `AtomProtocol` conformance.
/// Use `Atom` as a strong reference or owner of a `GdkAtom` instance.
///
/// An opaque type representing a string as an index into a table
/// of strings on the X server.
open class Atom: AtomProtocol {
        /// Untyped pointer to the underlying `GdkAtom` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: GdkAtom) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkAtom>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkAtom>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: GdkAtom?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkAtom` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: GdkAtom) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkAtom, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `AtomProtocol`
    /// `GdkAtom` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AtomProtocol`
    @inlinable public init<T: AtomProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkAtom, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkAtom`.
    deinit {
        // no reference counting for GdkAtom, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkAtom, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkAtom, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkAtom, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkAtom, cannot ref(_ptr)
    }



}

// MARK: no Atom properties

// MARK: no Atom signals

// MARK: Atom has no signals
// MARK: Atom Record: AtomProtocol extension (methods and fields)
public extension AtomProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkAtom` instance.
    @inlinable var _ptr: GdkAtom! { return ptr?.assumingMemoryBound(to: _GdkAtom.self) }

    /// Determines the string corresponding to an atom.
    @inlinable func name() -> String! {
        let rv = gdk_atom_name(_ptr).map({ String(cString: $0) })
        return rv
    }


    // *** propertyGet() causes a syntax error and is therefore not available!


    /// Retrieves selection data that was stored by the selection
    /// data in response to a call to `gdk_selection_convert()`. This function
    /// will not be used by applications, who should use the `GtkClipboard`
    /// API instead.
    @inlinable func selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, property _ptr: UnsafeMutablePointer<GdkAtom?>, propertyFormat: UnsafeMutablePointer<gint>!) -> Int {
        let rv = Int(gdk_selection_property_get(requestor.window_ptr, data, _ptr, propertyFormat))
        return rv
    }


}



// MARK: - Color Record

/// The `ColorProtocol` protocol exposes the methods and properties of an underlying `GdkColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Color`.
/// Alternatively, use `ColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkColor` is used to describe a color,
/// similar to the XColor struct used in the X11 drawing API.
public protocol ColorProtocol {
        /// Untyped pointer to the underlying `GdkColor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkColor` instance.
    var color_ptr: UnsafeMutablePointer<GdkColor>! { get }

}

/// The `ColorRef` type acts as a lightweight Swift reference to an underlying `GdkColor` instance.
/// It exposes methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `ColorRef` only as an `unowned` reference to an existing `GdkColor` instance.
///
/// A `GdkColor` is used to describe a color,
/// similar to the XColor struct used in the X11 drawing API.
public struct ColorRef: ColorProtocol {
        /// Untyped pointer to the underlying `GdkColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkColor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkColor>?) {
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

    /// Reference intialiser for a related type that implements `ColorProtocol`
    @inlinable init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Color` type acts as an owner of an underlying `GdkColor` instance.
/// It provides the methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `Color` as a strong reference or owner of a `GdkColor` instance.
///
/// A `GdkColor` is used to describe a color,
/// similar to the XColor struct used in the X11 drawing API.
open class Color: ColorProtocol {
        /// Untyped pointer to the underlying `GdkColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkColor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkColor>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkColor, cannot ref(color_ptr)
    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    /// `GdkColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ColorProtocol`
    @inlinable public init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkColor, cannot ref(color_ptr)
    }

    /// Do-nothing destructor for `GdkColor`.
    deinit {
        // no reference counting for GdkColor, cannot unref(color_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkColor, cannot ref(color_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkColor, cannot ref(color_ptr)
    }



}

// MARK: no Color properties

// MARK: no Color signals

// MARK: Color has no signals
// MARK: Color Record: ColorProtocol extension (methods and fields)
public extension ColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkColor` instance.
    @inlinable var color_ptr: UnsafeMutablePointer<GdkColor>! { return ptr?.assumingMemoryBound(to: GdkColor.self) }

    /// Makes a copy of a `GdkColor`.
    /// 
    /// The result must be freed using `gdk_color_free()`.
    ///
    /// **copy is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) @inlinable func copy() -> ColorRef! {
        guard let rv = ColorRef(gconstpointer: gconstpointer(gdk_color_copy(color_ptr))) else { return nil }
        return rv
    }

    /// Compares two colors.
    ///
    /// **equal is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) @inlinable func equal<ColorT: ColorProtocol>(colorb: ColorT) -> Bool {
        let rv = ((gdk_color_equal(color_ptr, colorb.color_ptr)) != 0)
        return rv
    }

    /// Frees a `GdkColor` created with `gdk_color_copy()`.
    ///
    /// **free is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) @inlinable func free() {
        gdk_color_free(color_ptr)
    
    }

    /// A hash function suitable for using for a hash
    /// table that stores `GdkColors`.
    ///
    /// **hash is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) @inlinable func hash() -> Int {
        let rv = Int(gdk_color_hash(color_ptr))
        return rv
    }

    /// Returns a textual specification of `color` in the hexadecimal
    /// form “\`rrrrggggbbbb`” where “r”, “g” and “b” are hex digits
    /// representing the red, green and blue components respectively.
    /// 
    /// The returned string can be parsed by `gdk_color_parse()`.
    ///
    /// **to_string is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) @inlinable func toString() -> String! {
        let rv = gdk_color_to_string(color_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Parses a textual specification of a color and fill in the
    /// `red`, `green`, and `blue` fields of a `GdkColor`.
    /// 
    /// The string can either one of a large set of standard names
    /// (taken from the X11 `rgb.txt` file), or it can be a hexadecimal
    /// value in the form “\`rgb`” “\`rrggbb`”, “\`rrrgggbbb`” or
    /// “\`rrrrggggbbbb`” where “r”, “g” and “b” are hex digits of
    /// the red, green, and blue components of the color, respectively.
    /// (White in the four forms is “\`fff`”, “\`ffffff`”, “\`fffffffff`”
    /// and “\`ffffffffffff`”).
    ///
    /// **parse is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) @inlinable func parse(spec: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gdk_color_parse(spec, color_ptr)) != 0)
        return rv
    }

    /// Sets the specified `GdkColor` as the source color of `cr`.
    ///
    /// **cairo_set_source_color is deprecated:**
    /// Use gdk_cairo_set_source_rgba() instead
    @available(*, deprecated) @inlinable func cairoSetSourceColor<ContextT: Cairo.ContextProtocol>(cr: ContextT) {
        gdk_cairo_set_source_color(cr._ptr, color_ptr)
    
    }

    /// Parses a textual specification of a color and fill in the
    /// `red`, `green`, and `blue` fields of a `GdkColor`.
    /// 
    /// The string can either one of a large set of standard names
    /// (taken from the X11 `rgb.txt` file), or it can be a hexadecimal
    /// value in the form “\`rgb`” “\`rrggbb`”, “\`rrrgggbbb`” or
    /// “\`rrrrggggbbbb`” where “r”, “g” and “b” are hex digits of
    /// the red, green, and blue components of the color, respectively.
    /// (White in the four forms is “\`fff`”, “\`ffffff`”, “\`fffffffff`”
    /// and “\`ffffffffffff`”).
    ///
    /// **color_parse is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) @inlinable func colorParse(spec: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gdk_color_parse(spec, color_ptr)) != 0)
        return rv
    }

    /// For allocated colors, the pixel value used to
    ///     draw this color on the screen. Not used anymore.
    @inlinable var pixel: guint32 {
        /// For allocated colors, the pixel value used to
        ///     draw this color on the screen. Not used anymore.
        get {
            let rv = color_ptr.pointee.pixel
            return rv
        }
        /// For allocated colors, the pixel value used to
        ///     draw this color on the screen. Not used anymore.
         set {
            color_ptr.pointee.pixel = newValue
        }
    }

    /// The red component of the color. This is
    ///     a value between 0 and 65535, with 65535 indicating
    ///     full intensity
    @inlinable var red: guint16 {
        /// The red component of the color. This is
        ///     a value between 0 and 65535, with 65535 indicating
        ///     full intensity
        get {
            let rv = color_ptr.pointee.red
            return rv
        }
        /// The red component of the color. This is
        ///     a value between 0 and 65535, with 65535 indicating
        ///     full intensity
         set {
            color_ptr.pointee.red = newValue
        }
    }

    /// The green component of the color
    @inlinable var green: guint16 {
        /// The green component of the color
        get {
            let rv = color_ptr.pointee.green
            return rv
        }
        /// The green component of the color
         set {
            color_ptr.pointee.green = newValue
        }
    }

    /// The blue component of the color
    @inlinable var blue: guint16 {
        /// The blue component of the color
        get {
            let rv = color_ptr.pointee.blue
            return rv
        }
        /// The blue component of the color
         set {
            color_ptr.pointee.blue = newValue
        }
    }

}



