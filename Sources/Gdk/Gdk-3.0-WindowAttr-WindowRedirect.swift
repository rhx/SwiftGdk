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

// MARK: - WindowAttr Record

/// The `WindowAttrProtocol` protocol exposes the methods and properties of an underlying `GdkWindowAttr` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowAttr`.
/// Alternatively, use `WindowAttrRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Attributes to use for a newly-created window.
public protocol WindowAttrProtocol {
        /// Untyped pointer to the underlying `GdkWindowAttr` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkWindowAttr` instance.
    var _ptr: UnsafeMutablePointer<GdkWindowAttr> { get }
}

/// The `WindowAttrRef` type acts as a lightweight Swift reference to an underlying `GdkWindowAttr` instance.
/// It exposes methods that can operate on this data type through `WindowAttrProtocol` conformance.
/// Use `WindowAttrRef` only as an `unowned` reference to an existing `GdkWindowAttr` instance.
///
/// Attributes to use for a newly-created window.
public struct WindowAttrRef: WindowAttrProtocol {
        /// Untyped pointer to the underlying `GdkWindowAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowAttrRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkWindowAttr>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowAttrProtocol`
    init<T: WindowAttrProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowAttr` type acts as an owner of an underlying `GdkWindowAttr` instance.
/// It provides the methods that can operate on this data type through `WindowAttrProtocol` conformance.
/// Use `WindowAttr` as a strong reference or owner of a `GdkWindowAttr` instance.
///
/// Attributes to use for a newly-created window.
open class WindowAttr: WindowAttrProtocol {
        /// Untyped pointer to the underlying `GdkWindowAttr` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowAttr` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkWindowAttr>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkWindowAttr` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `WindowAttr` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkWindowAttr>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkWindowAttr, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `WindowAttrProtocol`
    /// `GdkWindowAttr` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `WindowAttrProtocol`
    public init<T: WindowAttrProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkWindowAttr, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkWindowAttr`.
    deinit {
        // no reference counting for GdkWindowAttr, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkWindowAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkWindowAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkWindowAttr, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAttrProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkWindowAttr, cannot ref(cast(_ptr))
    }



}

// MARK: no WindowAttr properties

// MARK: no WindowAttr signals


// MARK: WindowAttr Record: WindowAttrProtocol extension (methods and fields)
public extension WindowAttrProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkWindowAttr` instance.
    var _ptr: UnsafeMutablePointer<GdkWindowAttr> { return ptr.assumingMemoryBound(to: GdkWindowAttr.self) }


    /// title of the window (for toplevel windows)
    var title: UnsafePointer<CChar> {
        /// title of the window (for toplevel windows)
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.title)
            return rv
        }
        /// title of the window (for toplevel windows)
         set {
            _ptr.pointee.title = cast(newValue)
        }
    }

    /// event mask (see `gdk_window_set_events()`)
    var eventMask: Int {
        /// event mask (see `gdk_window_set_events()`)
        get {
            let rv: Int = cast(_ptr.pointee.event_mask)
            return rv
        }
        /// event mask (see `gdk_window_set_events()`)
         set {
            _ptr.pointee.event_mask = gint(newValue)
        }
    }

    /// X coordinate relative to parent window (see `gdk_window_move()`)
    var x: Int {
        /// X coordinate relative to parent window (see `gdk_window_move()`)
        get {
            let rv: Int = cast(_ptr.pointee.x)
            return rv
        }
        /// X coordinate relative to parent window (see `gdk_window_move()`)
         set {
            _ptr.pointee.x = gint(newValue)
        }
    }

    /// Y coordinate relative to parent window (see `gdk_window_move()`)
    var y: Int {
        /// Y coordinate relative to parent window (see `gdk_window_move()`)
        get {
            let rv: Int = cast(_ptr.pointee.y)
            return rv
        }
        /// Y coordinate relative to parent window (see `gdk_window_move()`)
         set {
            _ptr.pointee.y = gint(newValue)
        }
    }

    /// width of window
    var width: Int {
        /// width of window
        get {
            let rv: Int = cast(_ptr.pointee.width)
            return rv
        }
        /// width of window
         set {
            _ptr.pointee.width = gint(newValue)
        }
    }

    /// height of window
    var height: Int {
        /// height of window
        get {
            let rv: Int = cast(_ptr.pointee.height)
            return rv
        }
        /// height of window
         set {
            _ptr.pointee.height = gint(newValue)
        }
    }

    /// `GDK_INPUT_OUTPUT` (normal window) or `GDK_INPUT_ONLY` (invisible
    ///  window that receives events)
    var wclass: GdkWindowWindowClass {
        /// `GDK_INPUT_OUTPUT` (normal window) or `GDK_INPUT_ONLY` (invisible
        ///  window that receives events)
        get {
            let rv: GdkWindowWindowClass = cast(_ptr.pointee.wclass)
            return rv
        }
        /// `GDK_INPUT_OUTPUT` (normal window) or `GDK_INPUT_ONLY` (invisible
        ///  window that receives events)
         set {
            _ptr.pointee.wclass = cast(newValue)
        }
    }

    /// `GdkVisual` for window
    var visual: UnsafeMutablePointer<GdkVisual> {
        /// `GdkVisual` for window
        get {
            let rv: UnsafeMutablePointer<GdkVisual> = cast(_ptr.pointee.visual)
            return rv
        }
        /// `GdkVisual` for window
         set {
            _ptr.pointee.visual = cast(newValue)
        }
    }

    /// type of window
    var windowType: GdkWindowType {
        /// type of window
        get {
            let rv: GdkWindowType = cast(_ptr.pointee.window_type)
            return rv
        }
        /// type of window
         set {
            _ptr.pointee.window_type = cast(newValue)
        }
    }

    /// cursor for the window (see `gdk_window_set_cursor()`)
    var cursor: UnsafeMutablePointer<GdkCursor> {
        /// cursor for the window (see `gdk_window_set_cursor()`)
        get {
            let rv: UnsafeMutablePointer<GdkCursor> = cast(_ptr.pointee.cursor)
            return rv
        }
        /// cursor for the window (see `gdk_window_set_cursor()`)
         set {
            _ptr.pointee.cursor = cast(newValue)
        }
    }

    /// don’t use (see `gtk_window_set_wmclass()`)
    var wmclassName: UnsafePointer<CChar> {
        /// don’t use (see `gtk_window_set_wmclass()`)
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.wmclass_name)
            return rv
        }
        /// don’t use (see `gtk_window_set_wmclass()`)
         set {
            _ptr.pointee.wmclass_name = cast(newValue)
        }
    }

    /// don’t use (see `gtk_window_set_wmclass()`)
    var wmclassClass: UnsafePointer<CChar> {
        /// don’t use (see `gtk_window_set_wmclass()`)
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.wmclass_class)
            return rv
        }
        /// don’t use (see `gtk_window_set_wmclass()`)
         set {
            _ptr.pointee.wmclass_class = cast(newValue)
        }
    }

    /// `true` to bypass the window manager
    var overrideRedirect: Bool {
        /// `true` to bypass the window manager
        get {
            let rv: Bool = cast(_ptr.pointee.override_redirect)
            return rv
        }
        /// `true` to bypass the window manager
         set {
            _ptr.pointee.override_redirect = gboolean(newValue ? 1 : 0)
        }
    }

    /// a hint of the function of the window
    var typeHint: GdkWindowTypeHint {
        /// a hint of the function of the window
        get {
            let rv: GdkWindowTypeHint = cast(_ptr.pointee.type_hint)
            return rv
        }
        /// a hint of the function of the window
         set {
            _ptr.pointee.type_hint = cast(newValue)
        }
    }

}



// MARK: - WindowClass Record

/// The `WindowClassProtocol` protocol exposes the methods and properties of an underlying `GdkWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowClass`.
/// Alternatively, use `WindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowClassProtocol {
        /// Untyped pointer to the underlying `GdkWindowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GdkWindowClass> { get }
}

/// The `WindowClassRef` type acts as a lightweight Swift reference to an underlying `GdkWindowClass` instance.
/// It exposes methods that can operate on this data type through `WindowClassProtocol` conformance.
/// Use `WindowClassRef` only as an `unowned` reference to an existing `GdkWindowClass` instance.
///

public struct WindowClassRef: WindowClassProtocol {
        /// Untyped pointer to the underlying `GdkWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowClassProtocol`
    init<T: WindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowClass` type acts as an owner of an underlying `GdkWindowClass` instance.
/// It provides the methods that can operate on this data type through `WindowClassProtocol` conformance.
/// Use `WindowClass` as a strong reference or owner of a `GdkWindowClass` instance.
///

open class WindowClass: WindowClassProtocol {
        /// Untyped pointer to the underlying `GdkWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkWindowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkWindowClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `WindowClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkWindowClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkWindowClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `WindowClassProtocol`
    /// `GdkWindowClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `WindowClassProtocol`
    public init<T: WindowClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkWindowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkWindowClass`.
    deinit {
        // no reference counting for GdkWindowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkWindowClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkWindowClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkWindowClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkWindowClass, cannot ref(cast(_ptr))
    }



}

// MARK: no WindowClass properties

// MARK: no WindowClass signals


// MARK: WindowClass Record: WindowClassProtocol extension (methods and fields)
public extension WindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GdkWindowClass> { return ptr.assumingMemoryBound(to: GdkWindowClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var pickEmbeddedChild is unavailable because pick_embedded_child is void

    // var toEmbedder is unavailable because to_embedder is void

    // var fromEmbedder is unavailable because from_embedder is void

    // var createSurface is unavailable because create_surface is void

    // var GdkReserved1 is unavailable because _gdk_reserved1 is void

    // var GdkReserved2 is unavailable because _gdk_reserved2 is void

    // var GdkReserved3 is unavailable because _gdk_reserved3 is void

    // var GdkReserved4 is unavailable because _gdk_reserved4 is void

    // var GdkReserved5 is unavailable because _gdk_reserved5 is void

    // var GdkReserved6 is unavailable because _gdk_reserved6 is void

    // var GdkReserved7 is unavailable because _gdk_reserved7 is void

    // var GdkReserved8 is unavailable because _gdk_reserved8 is void

}



// MARK: - WindowRedirect Record

/// The `WindowRedirectProtocol` protocol exposes the methods and properties of an underlying `GdkWindowRedirect` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowRedirect`.
/// Alternatively, use `WindowRedirectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowRedirectProtocol {
        /// Untyped pointer to the underlying `GdkWindowRedirect` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkWindowRedirect` instance.
    var _ptr: UnsafeMutablePointer<GdkWindowRedirect> { get }
}

/// The `WindowRedirectRef` type acts as a lightweight Swift reference to an underlying `GdkWindowRedirect` instance.
/// It exposes methods that can operate on this data type through `WindowRedirectProtocol` conformance.
/// Use `WindowRedirectRef` only as an `unowned` reference to an existing `GdkWindowRedirect` instance.
///

public struct WindowRedirectRef: WindowRedirectProtocol {
        /// Untyped pointer to the underlying `GdkWindowRedirect` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowRedirectRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkWindowRedirect>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowRedirectProtocol`
    init<T: WindowRedirectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowRedirect` type acts as an owner of an underlying `GdkWindowRedirect` instance.
/// It provides the methods that can operate on this data type through `WindowRedirectProtocol` conformance.
/// Use `WindowRedirect` as a strong reference or owner of a `GdkWindowRedirect` instance.
///

open class WindowRedirect: WindowRedirectProtocol {
        /// Untyped pointer to the underlying `GdkWindowRedirect` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowRedirect` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkWindowRedirect>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkWindowRedirect` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `WindowRedirect` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkWindowRedirect>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkWindowRedirect, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `WindowRedirectProtocol`
    /// `GdkWindowRedirect` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `WindowRedirectProtocol`
    public init<T: WindowRedirectProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkWindowRedirect, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkWindowRedirect`.
    deinit {
        // no reference counting for GdkWindowRedirect, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkWindowRedirect, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkWindowRedirect, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkWindowRedirect, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowRedirectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkWindowRedirect, cannot ref(cast(_ptr))
    }



}

// MARK: no WindowRedirect properties

// MARK: no WindowRedirect signals


// MARK: WindowRedirect Record: WindowRedirectProtocol extension (methods and fields)
public extension WindowRedirectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkWindowRedirect` instance.
    var _ptr: UnsafeMutablePointer<GdkWindowRedirect> { return ptr.assumingMemoryBound(to: GdkWindowRedirect.self) }



}



