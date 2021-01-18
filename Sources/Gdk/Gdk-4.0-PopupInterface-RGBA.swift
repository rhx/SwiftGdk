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

/// Metatype/GType declaration for Popup
public extension PopupInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Popup`
    static var metatypeReference: GType { gdk_popup_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkPopupInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkPopupInterface.self) }
    
    static var metatype: GdkPopupInterface? { metatypePointer?.pointee } 
    
    static var wrapper: PopupInterfaceRef? { PopupInterfaceRef(metatypePointer) }
    
    
}

// MARK: - PopupInterface Record

/// The `PopupInterfaceProtocol` protocol exposes the methods and properties of an underlying `GdkPopupInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopupInterface`.
/// Alternatively, use `PopupInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PopupInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkPopupInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPopupInterface` instance.
    var _ptr: UnsafeMutablePointer<GdkPopupInterface>! { get }

    /// Required Initialiser for types conforming to `PopupInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PopupInterfaceRef` type acts as a lightweight Swift reference to an underlying `GdkPopupInterface` instance.
/// It exposes methods that can operate on this data type through `PopupInterfaceProtocol` conformance.
/// Use `PopupInterfaceRef` only as an `unowned` reference to an existing `GdkPopupInterface` instance.
///

public struct PopupInterfaceRef: PopupInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkPopupInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopupInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPopupInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPopupInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPopupInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPopupInterface>?) {
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

    /// Reference intialiser for a related type that implements `PopupInterfaceProtocol`
    @inlinable init<T: PopupInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PopupInterface Record: PopupInterfaceProtocol extension (methods and fields)
public extension PopupInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPopupInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPopupInterface>! { return ptr?.assumingMemoryBound(to: GdkPopupInterface.self) }



}



// MARK: - PopupLayout Record

/// The `PopupLayoutProtocol` protocol exposes the methods and properties of an underlying `GdkPopupLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PopupLayout`.
/// Alternatively, use `PopupLayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Popups are positioned relative to their parent surface.
/// The GdkPopupLayout struct contains information that is
/// necessary to do so.
/// 
/// The positioning requires a negotiation with the windowing system,
/// since it depends on external constraints, such as the position of
/// the parent surface, and the screen dimensions.
/// 
/// The basic ingredients are a rectangle on the parent surface,
/// and the anchor on both that rectangle and the popup. The anchors
/// specify a side or corner to place next to each other.
/// 
/// ![Popup anchors](popup-anchors.png)
/// 
/// For cases where placing the anchors next to each other would make
/// the popup extend offscreen, the layout includes some hints for how
/// to resolve this problem. The hints may suggest to flip the anchor
/// position to the other side, or to 'slide' the popup along a side,
/// or to resize it.
/// 
/// ![Flipping popups](popup-flip.png)
/// 
/// ![Sliding popups](popup-slide.png)
/// 
/// These hints may be combined.
/// 
/// Ultimatively, it is up to the windowing system to determine the position
/// and size of the popup. You can learn about the result by calling
/// `gdk_popup_get_position_x()`, `gdk_popup_get_position_y()`,
/// `gdk_popup_get_rect_anchor()` and `gdk_popup_get_surface_anchor()` after the
/// popup has been presented. This can be used to adjust the rendering. For
/// example, GtkPopover changes its arrow position accordingly. But you have
/// to be careful avoid changing the size of the popover, or it has to be
/// presented again.
public protocol PopupLayoutProtocol {
        /// Untyped pointer to the underlying `GdkPopupLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPopupLayout` instance.
    var popup_layout_ptr: UnsafeMutablePointer<GdkPopupLayout>! { get }

    /// Required Initialiser for types conforming to `PopupLayoutProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PopupLayoutRef` type acts as a lightweight Swift reference to an underlying `GdkPopupLayout` instance.
/// It exposes methods that can operate on this data type through `PopupLayoutProtocol` conformance.
/// Use `PopupLayoutRef` only as an `unowned` reference to an existing `GdkPopupLayout` instance.
///
/// Popups are positioned relative to their parent surface.
/// The GdkPopupLayout struct contains information that is
/// necessary to do so.
/// 
/// The positioning requires a negotiation with the windowing system,
/// since it depends on external constraints, such as the position of
/// the parent surface, and the screen dimensions.
/// 
/// The basic ingredients are a rectangle on the parent surface,
/// and the anchor on both that rectangle and the popup. The anchors
/// specify a side or corner to place next to each other.
/// 
/// ![Popup anchors](popup-anchors.png)
/// 
/// For cases where placing the anchors next to each other would make
/// the popup extend offscreen, the layout includes some hints for how
/// to resolve this problem. The hints may suggest to flip the anchor
/// position to the other side, or to 'slide' the popup along a side,
/// or to resize it.
/// 
/// ![Flipping popups](popup-flip.png)
/// 
/// ![Sliding popups](popup-slide.png)
/// 
/// These hints may be combined.
/// 
/// Ultimatively, it is up to the windowing system to determine the position
/// and size of the popup. You can learn about the result by calling
/// `gdk_popup_get_position_x()`, `gdk_popup_get_position_y()`,
/// `gdk_popup_get_rect_anchor()` and `gdk_popup_get_surface_anchor()` after the
/// popup has been presented. This can be used to adjust the rendering. For
/// example, GtkPopover changes its arrow position accordingly. But you have
/// to be careful avoid changing the size of the popover, or it has to be
/// presented again.
public struct PopupLayoutRef: PopupLayoutProtocol {
        /// Untyped pointer to the underlying `GdkPopupLayout` instance.
    /// For type-safe access, use the generated, typed pointer `popup_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopupLayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPopupLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPopupLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPopupLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPopupLayout>?) {
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

    /// Reference intialiser for a related type that implements `PopupLayoutProtocol`
    @inlinable init<T: PopupLayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a popup layout description. Used together with `gdk_popup_present()`
    /// to describe how a popup surface should be placed and behave on-screen.
    /// 
    /// `anchor_rect` is relative to the top-left corner of the surface's parent.
    /// `rect_anchor` and `surface_anchor` determine anchor points on `anchor_rect`
    /// and surface to pin together.
    /// 
    /// The position of `anchor_rect`'s anchor point can optionally be offset using
    /// `gdk_popup_layout_set_offset()`, which is equivalent to offsetting the
    /// position of surface.
    @inlinable init<RectangleT: RectangleProtocol>( anchorRect: RectangleT, rectAnchor: GdkGravity, surfaceAnchor: GdkGravity) {
        let rv = gdk_popup_layout_new(anchorRect.rectangle_ptr, rectAnchor, surfaceAnchor)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `PopupLayout` type acts as a reference-counted owner of an underlying `GdkPopupLayout` instance.
/// It provides the methods that can operate on this data type through `PopupLayoutProtocol` conformance.
/// Use `PopupLayout` as a strong reference or owner of a `GdkPopupLayout` instance.
///
/// Popups are positioned relative to their parent surface.
/// The GdkPopupLayout struct contains information that is
/// necessary to do so.
/// 
/// The positioning requires a negotiation with the windowing system,
/// since it depends on external constraints, such as the position of
/// the parent surface, and the screen dimensions.
/// 
/// The basic ingredients are a rectangle on the parent surface,
/// and the anchor on both that rectangle and the popup. The anchors
/// specify a side or corner to place next to each other.
/// 
/// ![Popup anchors](popup-anchors.png)
/// 
/// For cases where placing the anchors next to each other would make
/// the popup extend offscreen, the layout includes some hints for how
/// to resolve this problem. The hints may suggest to flip the anchor
/// position to the other side, or to 'slide' the popup along a side,
/// or to resize it.
/// 
/// ![Flipping popups](popup-flip.png)
/// 
/// ![Sliding popups](popup-slide.png)
/// 
/// These hints may be combined.
/// 
/// Ultimatively, it is up to the windowing system to determine the position
/// and size of the popup. You can learn about the result by calling
/// `gdk_popup_get_position_x()`, `gdk_popup_get_position_y()`,
/// `gdk_popup_get_rect_anchor()` and `gdk_popup_get_surface_anchor()` after the
/// popup has been presented. This can be used to adjust the rendering. For
/// example, GtkPopover changes its arrow position accordingly. But you have
/// to be careful avoid changing the size of the popover, or it has to be
/// presented again.
open class PopupLayout: PopupLayoutProtocol {
        /// Untyped pointer to the underlying `GdkPopupLayout` instance.
    /// For type-safe access, use the generated, typed pointer `popup_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopupLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPopupLayout>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopupLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPopupLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopupLayout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopupLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopupLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPopupLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PopupLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPopupLayout>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkPopupLayout`.
    /// i.e., ownership is transferred to the `PopupLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPopupLayout>) {
        ptr = UnsafeMutableRawPointer(op)
        gdk_popup_layout_ref(ptr.assumingMemoryBound(to: GdkPopupLayout.self))
    }

    /// Reference intialiser for a related type that implements `PopupLayoutProtocol`
    /// Will retain `GdkPopupLayout`.
    /// - Parameter other: an instance of a related type that implements `PopupLayoutProtocol`
    @inlinable public init<T: PopupLayoutProtocol>(_ other: T) {
        ptr = other.ptr
        gdk_popup_layout_ref(ptr.assumingMemoryBound(to: GdkPopupLayout.self))
    }

    /// Releases the underlying `GdkPopupLayout` instance using `gdk_popup_layout_unref`.
    deinit {
        gdk_popup_layout_unref(ptr.assumingMemoryBound(to: GdkPopupLayout.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gdk_popup_layout_ref(ptr.assumingMemoryBound(to: GdkPopupLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gdk_popup_layout_ref(ptr.assumingMemoryBound(to: GdkPopupLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gdk_popup_layout_ref(ptr.assumingMemoryBound(to: GdkPopupLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gdk_popup_layout_ref(ptr.assumingMemoryBound(to: GdkPopupLayout.self))
    }

    /// Create a popup layout description. Used together with `gdk_popup_present()`
    /// to describe how a popup surface should be placed and behave on-screen.
    /// 
    /// `anchor_rect` is relative to the top-left corner of the surface's parent.
    /// `rect_anchor` and `surface_anchor` determine anchor points on `anchor_rect`
    /// and surface to pin together.
    /// 
    /// The position of `anchor_rect`'s anchor point can optionally be offset using
    /// `gdk_popup_layout_set_offset()`, which is equivalent to offsetting the
    /// position of surface.
    @inlinable public init<RectangleT: RectangleProtocol>( anchorRect: RectangleT, rectAnchor: GdkGravity, surfaceAnchor: GdkGravity) {
        let rv = gdk_popup_layout_new(anchorRect.rectangle_ptr, rectAnchor, surfaceAnchor)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no PopupLayout properties

// MARK: no PopupLayout signals

// MARK: PopupLayout has no signals
// MARK: PopupLayout Record: PopupLayoutProtocol extension (methods and fields)
public extension PopupLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPopupLayout` instance.
    @inlinable var popup_layout_ptr: UnsafeMutablePointer<GdkPopupLayout>! { return ptr?.assumingMemoryBound(to: GdkPopupLayout.self) }

    /// Create a new `GdkPopupLayout` and copy the contents of `layout` into it.
    @inlinable func copy() -> PopupLayoutRef! {
        guard let rv = PopupLayoutRef(gconstpointer: gconstpointer(gdk_popup_layout_copy(popup_layout_ptr))) else { return nil }
        return rv
    }

    /// Check whether `layout` and `other` has identical layout properties.
    @inlinable func equal<PopupLayoutT: PopupLayoutProtocol>(other: PopupLayoutT) -> Bool {
        let rv = ((gdk_popup_layout_equal(popup_layout_ptr, other.popup_layout_ptr)) != 0)
        return rv
    }

    /// Get the `GdkAnchorHints`.
    @inlinable func getAnchorHints() -> AnchorHints {
        let rv = AnchorHints(gdk_popup_layout_get_anchor_hints(popup_layout_ptr))
        return rv
    }

    /// Get the anchor rectangle.
    @inlinable func getAnchorRect() -> RectangleRef! {
        let rv = RectangleRef(gconstpointer: gconstpointer(gdk_popup_layout_get_anchor_rect(popup_layout_ptr)))
        return rv
    }

    /// Retrieves the offset for the anchor rectangle.
    @inlinable func getOffset(dx: UnsafeMutablePointer<gint>!, dy: UnsafeMutablePointer<gint>!) {
        gdk_popup_layout_get_offset(popup_layout_ptr, dx, dy)
    
    }

    /// Returns the anchor position on the anchor rectangle.
    @inlinable func getRectAnchor() -> GdkGravity {
        let rv = gdk_popup_layout_get_rect_anchor(popup_layout_ptr)
        return rv
    }

    /// Returns the anchor position on the popup surface.
    @inlinable func getSurfaceAnchor() -> GdkGravity {
        let rv = gdk_popup_layout_get_surface_anchor(popup_layout_ptr)
        return rv
    }

    /// Increases the reference count of `value`.
    @discardableResult @inlinable func ref() -> PopupLayoutRef! {
        guard let rv = PopupLayoutRef(gconstpointer: gconstpointer(gdk_popup_layout_ref(popup_layout_ptr))) else { return nil }
        return rv
    }

    /// Set new anchor hints.
    /// 
    /// The set `anchor_hints` determines how `surface` will be moved if the anchor
    /// points cause it to move off-screen. For example, `GDK_ANCHOR_FLIP_X` will
    /// replace `GDK_GRAVITY_NORTH_WEST` with `GDK_GRAVITY_NORTH_EAST` and vice versa
    /// if `surface` extends beyond the left or right edges of the monitor.
    @inlinable func set(anchorHints: AnchorHints) {
        gdk_popup_layout_set_anchor_hints(popup_layout_ptr, anchorHints.value)
    
    }

    /// Set the anchor rectangle.
    @inlinable func set<RectangleT: RectangleProtocol>(anchorRect: RectangleT) {
        gdk_popup_layout_set_anchor_rect(popup_layout_ptr, anchorRect.rectangle_ptr)
    
    }

    /// Offset the position of the anchor rectangle with the given delta.
    @inlinable func setOffset(dx: Int, dy: Int) {
        gdk_popup_layout_set_offset(popup_layout_ptr, gint(dx), gint(dy))
    
    }

    /// Set the anchor on the anchor rectangle.
    @inlinable func setRect(anchor: GdkGravity) {
        gdk_popup_layout_set_rect_anchor(popup_layout_ptr, anchor)
    
    }

    /// Set the anchor on the popup surface.
    @inlinable func setSurface(anchor: GdkGravity) {
        gdk_popup_layout_set_surface_anchor(popup_layout_ptr, anchor)
    
    }

    /// Decreases the reference count of `value`.
    @inlinable func unref() {
        gdk_popup_layout_unref(popup_layout_ptr)
    
    }
    /// Get the `GdkAnchorHints`.
    @inlinable var anchorHints: AnchorHints {
        /// Get the `GdkAnchorHints`.
        get {
            let rv = AnchorHints(gdk_popup_layout_get_anchor_hints(popup_layout_ptr))
            return rv
        }
        /// Set new anchor hints.
        /// 
        /// The set `anchor_hints` determines how `surface` will be moved if the anchor
        /// points cause it to move off-screen. For example, `GDK_ANCHOR_FLIP_X` will
        /// replace `GDK_GRAVITY_NORTH_WEST` with `GDK_GRAVITY_NORTH_EAST` and vice versa
        /// if `surface` extends beyond the left or right edges of the monitor.
        nonmutating set {
            gdk_popup_layout_set_anchor_hints(popup_layout_ptr, newValue.value)
        }
    }

    /// Get the anchor rectangle.
    @inlinable var anchorRect: RectangleRef! {
        /// Get the anchor rectangle.
        get {
            let rv = RectangleRef(gconstpointer: gconstpointer(gdk_popup_layout_get_anchor_rect(popup_layout_ptr)))
            return rv
        }
        /// Set the anchor rectangle.
        nonmutating set {
            gdk_popup_layout_set_anchor_rect(popup_layout_ptr, UnsafePointer<GdkRectangle>(newValue?.rectangle_ptr))
        }
    }

    /// Returns the anchor position on the anchor rectangle.
    @inlinable var rectAnchor: GdkGravity {
        /// Returns the anchor position on the anchor rectangle.
        get {
            let rv = gdk_popup_layout_get_rect_anchor(popup_layout_ptr)
            return rv
        }
        /// Set the anchor on the anchor rectangle.
        nonmutating set {
            gdk_popup_layout_set_rect_anchor(popup_layout_ptr, newValue)
        }
    }

    /// Returns the anchor position on the popup surface.
    @inlinable var surfaceAnchor: GdkGravity {
        /// Returns the anchor position on the popup surface.
        get {
            let rv = gdk_popup_layout_get_surface_anchor(popup_layout_ptr)
            return rv
        }
        /// Set the anchor on the popup surface.
        nonmutating set {
            gdk_popup_layout_set_surface_anchor(popup_layout_ptr, newValue)
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

    /// Required Initialiser for types conforming to `RGBAProtocol`
    init(raw: UnsafeMutableRawPointer)
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: RGBA has no signals
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
    /// - A hexadecimal value in the form “\`rgba`”, “\`rrggbbaa`”,
    ///   or ”\`rrrrggggbbbbaaaa`”
    /// - A RGB color in the form `“rgb(r,g,b)`” (In this case the color will
    ///   have full opacity)
    /// - A RGBA color in the form `“rgba(r,g,b,a)`”
    /// 
    /// Where “r”, “g”, “b” and “a” are respectively the red, green, blue and
    /// alpha color values. In the last two cases, “r”, “g”, and “b” are either
    /// integers in the range 0 to 255 or percentage values in the range 0% to
    /// 100``, and a is a floating point value in the range 0 to 1.
    @inlinable func parse(spec: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gdk_rgba_parse(rgba_ptr, spec)) != 0)
        return rv
    }

    /// Returns a textual specification of `rgba` in the form
    /// ``rgb(r,g,b)`` or
    /// ``rgba(r,g,b,a)``,
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
    /// Checks if an `rgba` value is transparent. That is, drawing with the value
    /// would not produce any change.
    @inlinable var isClear: Bool {
        /// Checks if an `rgba` value is transparent. That is, drawing with the value
        /// would not produce any change.
        get {
            let rv = ((gdk_rgba_is_clear(rgba_ptr)) != 0)
            return rv
        }
    }

    /// Checks if an `rgba` value is opaque. That is, drawing with the value
    /// will not retain any results from previous contents.
    @inlinable var isOpaque: Bool {
        /// Checks if an `rgba` value is opaque. That is, drawing with the value
        /// will not retain any results from previous contents.
        get {
            let rv = ((gdk_rgba_is_opaque(rgba_ptr)) != 0)
            return rv
        }
    }

    /// The intensity of the red channel from 0.0 to 1.0 inclusive
    @inlinable var red: CFloat {
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
    @inlinable var green: CFloat {
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
    @inlinable var blue: CFloat {
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
    @inlinable var alpha: CFloat {
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



