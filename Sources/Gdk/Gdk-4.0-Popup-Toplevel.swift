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

// MARK: - Popup Interface

/// The `PopupProtocol` protocol exposes the methods and properties of an underlying `GdkPopup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Popup`.
/// Alternatively, use `PopupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkPopup` is a surface that is attached to another surface,
/// called its `GdkPopup:parent`, and is positioned relative to it.
/// 
/// `GdkPopups` are typically used to implement menus and similar popups.
/// They can be modal, which is indicated by the `GdkPopup:autohide` property.
public protocol PopupProtocol: SurfaceProtocol {
        /// Untyped pointer to the underlying `GdkPopup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPopup` instance.
    var popup_ptr: UnsafeMutablePointer<GdkPopup>! { get }

    /// Required Initialiser for types conforming to `PopupProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PopupRef` type acts as a lightweight Swift reference to an underlying `GdkPopup` instance.
/// It exposes methods that can operate on this data type through `PopupProtocol` conformance.
/// Use `PopupRef` only as an `unowned` reference to an existing `GdkPopup` instance.
///
/// A `GdkPopup` is a surface that is attached to another surface,
/// called its `GdkPopup:parent`, and is positioned relative to it.
/// 
/// `GdkPopups` are typically used to implement menus and similar popups.
/// They can be modal, which is indicated by the `GdkPopup:autohide` property.
public struct PopupRef: PopupProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkPopup` instance.
    /// For type-safe access, use the generated, typed pointer `popup_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PopupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPopup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPopup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPopup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPopup>?) {
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

    /// Reference intialiser for a related type that implements `PopupProtocol`
    @inlinable init<T: PopupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PopupProtocol>(_ other: T) -> PopupRef { PopupRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Popup` type acts as a reference-counted owner of an underlying `GdkPopup` instance.
/// It provides the methods that can operate on this data type through `PopupProtocol` conformance.
/// Use `Popup` as a strong reference or owner of a `GdkPopup` instance.
///
/// A `GdkPopup` is a surface that is attached to another surface,
/// called its `GdkPopup:parent`, and is positioned relative to it.
/// 
/// `GdkPopups` are typically used to implement menus and similar popups.
/// They can be modal, which is indicated by the `GdkPopup:autohide` property.
open class Popup: Surface, PopupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPopup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPopup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPopup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Popup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPopup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkPopup`.
    /// i.e., ownership is transferred to the `Popup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPopup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PopupProtocol`
    /// Will retain `GdkPopup`.
    /// - Parameter other: an instance of a related type that implements `PopupProtocol`
    @inlinable public init<T: PopupProtocol>(popup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PopupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum PopupPropertyName: String, PropertyNameProtocol {
    case autohide = "autohide"
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    case cursor = "cursor"
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case display = "display"
    case frameClock = "frame-clock"
    case height = "height"
    case mapped = "mapped"
    case parent = "parent"
    case width = "width"
}

public extension PopupProtocol {
    /// Bind a `PopupPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PopupPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Popup property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PopupPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Popup property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PopupPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum PopupSignalName: String, SignalNameProtocol {
    /// Emitted when `surface` starts being present on the monitor.
    case enterMonitor = "enter-monitor"
    /// Emitted when GDK receives an input event for `surface`.
    case event = "event"
    /// Emitted when the size of `surface` is changed, or when relayout should
    /// be performed.
    /// 
    /// Surface size is reported in ”application pixels”, not
    /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
    case layout = "layout"
    /// Emitted when `surface` stops being present on the monitor.
    case leaveMonitor = "leave-monitor"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when part of the surface needs to be redrawn.
    case render = "render"
    case notifyAutohide = "notify::autohide"
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case notifyDisplay = "notify::display"
    case notifyFrameClock = "notify::frame-clock"
    case notifyHeight = "notify::height"
    case notifyMapped = "notify::mapped"
    case notifyParent = "notify::parent"
    case notifyWidth = "notify::width"
}

// MARK: Popup has no signals
// MARK: Popup Interface: PopupProtocol extension (methods and fields)
public extension PopupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPopup` instance.
    @inlinable var popup_ptr: UnsafeMutablePointer<GdkPopup>! { return ptr?.assumingMemoryBound(to: GdkPopup.self) }

    /// Returns whether this popup is set to hide on outside clicks.
    @inlinable func getAutohide() -> Bool {
        let rv = ((gdk_popup_get_autohide(popup_ptr)) != 0)
        return rv
    }

    /// Returns the parent surface of a popup.
    @inlinable func getParent() -> SurfaceRef! {
        guard let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_popup_get_parent(popup_ptr))) else { return nil }
        return rv
    }

    /// Obtains the position of the popup relative to its parent.
    @inlinable func getPositionX() -> Int {
        let rv = Int(gdk_popup_get_position_x(popup_ptr))
        return rv
    }

    /// Obtains the position of the popup relative to its parent.
    @inlinable func getPositionY() -> Int {
        let rv = Int(gdk_popup_get_position_y(popup_ptr))
        return rv
    }

    /// Gets the current popup rectangle anchor.
    /// 
    /// The value returned may change after calling `gdk_popup_present()`,
    /// or after the `GdkSurface::layout` signal is emitted.
    @inlinable func getRectAnchor() -> GdkGravity {
        let rv = gdk_popup_get_rect_anchor(popup_ptr)
        return rv
    }

    /// Gets the current popup surface anchor.
    /// 
    /// The value returned may change after calling `gdk_popup_present()`,
    /// or after the `GdkSurface::layout` signal is emitted.
    @inlinable func getSurfaceAnchor() -> GdkGravity {
        let rv = gdk_popup_get_surface_anchor(popup_ptr)
        return rv
    }

    /// Present `popup` after having processed the `GdkPopupLayout` rules.
    /// If the popup was previously now showing, it will be showed,
    /// otherwise it will change position according to `layout`.
    /// 
    /// After calling this function, the result should be handled in response
    /// to the `GdkSurface::layout` signal being emitted. The resulting popup
    /// position can be queried using `gdk_popup_get_position_x()`,
    /// `gdk_popup_get_position_y()`, and the resulting size will be sent as
    /// parameters in the layout signal. Use `gdk_popup_get_rect_anchor()` and
    /// `gdk_popup_get_surface_anchor()` to get the resulting anchors.
    /// 
    /// Presenting may fail, for example if the `popup` is set to autohide
    /// and is immediately hidden upon being presented. If presenting failed,
    /// the `GdkSurface::layout` signal will not me emitted.
    @inlinable func present<PopupLayoutT: PopupLayoutProtocol>(width: Int, height: Int, layout: PopupLayoutT) -> Bool {
        let rv = ((gdk_popup_present(popup_ptr, gint(width), gint(height), layout.popup_layout_ptr)) != 0)
        return rv
    }
    @inlinable var autohide: Bool {
        /// Returns whether this popup is set to hide on outside clicks.
        get {
            let rv = ((gdk_popup_get_autohide(popup_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parent: SurfaceRef! {
        /// Returns the parent surface of a popup.
        get {
            guard let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_popup_get_parent(popup_ptr))) else { return nil }
            return rv
        }
    }

    /// Obtains the position of the popup relative to its parent.
    @inlinable var positionX: Int {
        /// Obtains the position of the popup relative to its parent.
        get {
            let rv = Int(gdk_popup_get_position_x(popup_ptr))
            return rv
        }
    }

    /// Obtains the position of the popup relative to its parent.
    @inlinable var positionY: Int {
        /// Obtains the position of the popup relative to its parent.
        get {
            let rv = Int(gdk_popup_get_position_y(popup_ptr))
            return rv
        }
    }

    /// Gets the current popup rectangle anchor.
    /// 
    /// The value returned may change after calling `gdk_popup_present()`,
    /// or after the `GdkSurface::layout` signal is emitted.
    @inlinable var rectAnchor: GdkGravity {
        /// Gets the current popup rectangle anchor.
        /// 
        /// The value returned may change after calling `gdk_popup_present()`,
        /// or after the `GdkSurface::layout` signal is emitted.
        get {
            let rv = gdk_popup_get_rect_anchor(popup_ptr)
            return rv
        }
    }

    /// Gets the current popup surface anchor.
    /// 
    /// The value returned may change after calling `gdk_popup_present()`,
    /// or after the `GdkSurface::layout` signal is emitted.
    @inlinable var surfaceAnchor: GdkGravity {
        /// Gets the current popup surface anchor.
        /// 
        /// The value returned may change after calling `gdk_popup_present()`,
        /// or after the `GdkSurface::layout` signal is emitted.
        get {
            let rv = gdk_popup_get_surface_anchor(popup_ptr)
            return rv
        }
    }


}



// MARK: - Toplevel Interface

/// The `ToplevelProtocol` protocol exposes the methods and properties of an underlying `GdkToplevel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Toplevel`.
/// Alternatively, use `ToplevelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkToplevel` is a freestanding toplevel surface.
/// 
/// The `GdkToplevel` interface provides useful APIs for
/// interacting with the windowing system, such as controlling
/// maximization and size of the surface, setting icons and
/// transient parents for dialogs.
public protocol ToplevelProtocol: SurfaceProtocol {
        /// Untyped pointer to the underlying `GdkToplevel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkToplevel` instance.
    var toplevel_ptr: UnsafeMutablePointer<GdkToplevel>! { get }

    /// Required Initialiser for types conforming to `ToplevelProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ToplevelRef` type acts as a lightweight Swift reference to an underlying `GdkToplevel` instance.
/// It exposes methods that can operate on this data type through `ToplevelProtocol` conformance.
/// Use `ToplevelRef` only as an `unowned` reference to an existing `GdkToplevel` instance.
///
/// A `GdkToplevel` is a freestanding toplevel surface.
/// 
/// The `GdkToplevel` interface provides useful APIs for
/// interacting with the windowing system, such as controlling
/// maximization and size of the surface, setting icons and
/// transient parents for dialogs.
public struct ToplevelRef: ToplevelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkToplevel` instance.
    /// For type-safe access, use the generated, typed pointer `toplevel_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToplevelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkToplevel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkToplevel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkToplevel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkToplevel>?) {
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

    /// Reference intialiser for a related type that implements `ToplevelProtocol`
    @inlinable init<T: ToplevelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ToplevelProtocol>(_ other: T) -> ToplevelRef { ToplevelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Toplevel` type acts as a reference-counted owner of an underlying `GdkToplevel` instance.
/// It provides the methods that can operate on this data type through `ToplevelProtocol` conformance.
/// Use `Toplevel` as a strong reference or owner of a `GdkToplevel` instance.
///
/// A `GdkToplevel` is a freestanding toplevel surface.
/// 
/// The `GdkToplevel` interface provides useful APIs for
/// interacting with the windowing system, such as controlling
/// maximization and size of the surface, setting icons and
/// transient parents for dialogs.
open class Toplevel: Surface, ToplevelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Toplevel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkToplevel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Toplevel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkToplevel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Toplevel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Toplevel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Toplevel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkToplevel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Toplevel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkToplevel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkToplevel`.
    /// i.e., ownership is transferred to the `Toplevel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkToplevel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ToplevelProtocol`
    /// Will retain `GdkToplevel`.
    /// - Parameter other: an instance of a related type that implements `ToplevelProtocol`
    @inlinable public init<T: ToplevelProtocol>(toplevel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToplevelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ToplevelPropertyName: String, PropertyNameProtocol {
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    case cursor = "cursor"
    case decorated = "decorated"
    case deletable = "deletable"
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case display = "display"
    case frameClock = "frame-clock"
    case fullscreenMode = "fullscreen-mode"
    case height = "height"
    case iconList = "icon-list"
    case mapped = "mapped"
    case modal = "modal"
    case shortcutsInhibited = "shortcuts-inhibited"
    case startupId = "startup-id"
    case state = "state"
    case title = "title"
    case transientFor = "transient-for"
    case width = "width"
}

public extension ToplevelProtocol {
    /// Bind a `ToplevelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ToplevelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Toplevel property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ToplevelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Toplevel property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ToplevelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ToplevelSignalName: String, SignalNameProtocol {
    /// Compute the desired size of the toplevel, given the information passed via
    /// the `GdkToplevelSize` object.
    /// 
    /// It will normally be emitted during or after `gdk_toplevel_present()`,
    /// depending on the configuration received by the windowing system. It may
    /// also be emitted at any other point in time, in response to the windowing
    /// system spontaneously changing the configuration.
    /// 
    /// It is the responsibility of the GdkToplevel user to handle this signal;
    /// failing to do so will result in an arbitrary size being used as a result.
    case computeSize = "compute-size"
    /// Emitted when `surface` starts being present on the monitor.
    case enterMonitor = "enter-monitor"
    /// Emitted when GDK receives an input event for `surface`.
    case event = "event"
    /// Emitted when the size of `surface` is changed, or when relayout should
    /// be performed.
    /// 
    /// Surface size is reported in ”application pixels”, not
    /// ”device pixels” (see `gdk_surface_get_scale_factor()`).
    case layout = "layout"
    /// Emitted when `surface` stops being present on the monitor.
    case leaveMonitor = "leave-monitor"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when part of the surface needs to be redrawn.
    case render = "render"
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    case notifyCursor = "notify::cursor"
    case notifyDecorated = "notify::decorated"
    case notifyDeletable = "notify::deletable"
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case notifyDisplay = "notify::display"
    case notifyFrameClock = "notify::frame-clock"
    case notifyFullscreenMode = "notify::fullscreen-mode"
    case notifyHeight = "notify::height"
    case notifyIconList = "notify::icon-list"
    case notifyMapped = "notify::mapped"
    case notifyModal = "notify::modal"
    case notifyShortcutsInhibited = "notify::shortcuts-inhibited"
    case notifyStartupId = "notify::startup-id"
    case notifyState = "notify::state"
    case notifyTitle = "notify::title"
    case notifyTransientFor = "notify::transient-for"
    case notifyWidth = "notify::width"
}

// MARK: Toplevel signals
public extension ToplevelProtocol {
    /// Connect a Swift signal handler to the given, typed `ToplevelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ToplevelSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ToplevelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ToplevelSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Compute the desired size of the toplevel, given the information passed via
    /// the `GdkToplevelSize` object.
    /// 
    /// It will normally be emitted during or after `gdk_toplevel_present()`,
    /// depending on the configuration received by the windowing system. It may
    /// also be emitted at any other point in time, in response to the windowing
    /// system spontaneously changing the configuration.
    /// 
    /// It is the responsibility of the GdkToplevel user to handle this signal;
    /// failing to do so will result in an arbitrary size being used as a result.
    /// - Note: This represents the underlying `compute-size` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter size: a `GdkToplevelSize`
    /// - Parameter handler: The signal handler to call
    /// - Warning: a `onComputeSize` wrapper for this signal could not be generated because it contains unimplemented features: { (2)  `out` or `inout` argument direction is not allowed }
    /// - Note: Instead, you can connect `computeSizeSignal` using the `connect(signal:)` methods
    static var computeSizeSignal: ToplevelSignalName { .computeSize }
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::decorated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDecorated` signal is emitted
    @discardableResult @inlinable func onNotifyDecorated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDecorated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::decorated` signal for using the `connect(signal:)` methods
    static var notifyDecoratedSignal: ToplevelSignalName { .notifyDecorated }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::deletable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDeletable` signal is emitted
    @discardableResult @inlinable func onNotifyDeletable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDeletable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::deletable` signal for using the `connect(signal:)` methods
    static var notifyDeletableSignal: ToplevelSignalName { .notifyDeletable }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::fullscreen-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFullscreenMode` signal is emitted
    @discardableResult @inlinable func onNotifyFullscreenMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFullscreenMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::fullscreen-mode` signal for using the `connect(signal:)` methods
    static var notifyFullscreenModeSignal: ToplevelSignalName { .notifyFullscreenMode }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::icon-list` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIconList` signal is emitted
    @discardableResult @inlinable func onNotifyIconList(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIconList,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::icon-list` signal for using the `connect(signal:)` methods
    static var notifyIconListSignal: ToplevelSignalName { .notifyIconList }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::modal` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModal` signal is emitted
    @discardableResult @inlinable func onNotifyModal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModal,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::modal` signal for using the `connect(signal:)` methods
    static var notifyModalSignal: ToplevelSignalName { .notifyModal }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::shortcuts-inhibited` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShortcutsInhibited` signal is emitted
    @discardableResult @inlinable func onNotifyShortcutsInhibited(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShortcutsInhibited,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::shortcuts-inhibited` signal for using the `connect(signal:)` methods
    static var notifyShortcutsInhibitedSignal: ToplevelSignalName { .notifyShortcutsInhibited }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::startup-id` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyStartupId` signal is emitted
    @discardableResult @inlinable func onNotifyStartupId(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyStartupId,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::startup-id` signal for using the `connect(signal:)` methods
    static var notifyStartupIdSignal: ToplevelSignalName { .notifyStartupId }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::state` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyState` signal is emitted
    @discardableResult @inlinable func onNotifyState(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyState,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::state` signal for using the `connect(signal:)` methods
    static var notifyStateSignal: ToplevelSignalName { .notifyState }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::title` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTitle` signal is emitted
    @discardableResult @inlinable func onNotifyTitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTitle,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::title` signal for using the `connect(signal:)` methods
    static var notifyTitleSignal: ToplevelSignalName { .notifyTitle }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::transient-for` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTransientFor` signal is emitted
    @discardableResult @inlinable func onNotifyTransientFor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ToplevelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ToplevelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ToplevelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTransientFor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::transient-for` signal for using the `connect(signal:)` methods
    static var notifyTransientForSignal: ToplevelSignalName { .notifyTransientFor }
    
}

// MARK: Toplevel Interface: ToplevelProtocol extension (methods and fields)
public extension ToplevelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkToplevel` instance.
    @inlinable var toplevel_ptr: UnsafeMutablePointer<GdkToplevel>! { return ptr?.assumingMemoryBound(to: GdkToplevel.self) }

    /// Begins an interactive move operation (for a toplevel surface).
    /// You might use this function to implement draggable titlebars.
    @inlinable func beginMove<DeviceT: DeviceProtocol>(device: DeviceT, button: Int, x: CDouble, y: CDouble, timestamp: guint32) {
        gdk_toplevel_begin_move(toplevel_ptr, device.device_ptr, gint(button), x, y, timestamp)
    
    }

    /// Begins an interactive resize operation (for a toplevel surface).
    /// You might use this function to implement a “window resize grip.”
    @inlinable func beginResize(edge: GdkSurfaceEdge, device: DeviceRef? = nil, button: Int, x: CDouble, y: CDouble, timestamp: guint32) {
        gdk_toplevel_begin_resize(toplevel_ptr, edge, device?.device_ptr, gint(button), x, y, timestamp)
    
    }
    /// Begins an interactive resize operation (for a toplevel surface).
    /// You might use this function to implement a “window resize grip.”
    @inlinable func beginResize<DeviceT: DeviceProtocol>(edge: GdkSurfaceEdge, device: DeviceT?, button: Int, x: CDouble, y: CDouble, timestamp: guint32) {
        gdk_toplevel_begin_resize(toplevel_ptr, edge, device?.device_ptr, gint(button), x, y, timestamp)
    
    }

    /// Sets keyboard focus to `surface`.
    /// 
    /// In most cases, `gtk_window_present_with_time()` should be used
    /// on a `GtkWindow`, rather than calling this function.
    @inlinable func focus(timestamp: guint32) {
        gdk_toplevel_focus(toplevel_ptr, timestamp)
    
    }

    /// Gets the bitwise OR of the currently active surface state flags,
    /// from the `GdkToplevelState` enumeration.
    @inlinable func getState() -> ToplevelState {
        let rv = ToplevelState(gdk_toplevel_get_state(toplevel_ptr))
        return rv
    }

    /// Requests that the `toplevel` inhibit the system shortcuts, asking the
    /// desktop environment/windowing system to let all keyboard events reach
    /// the surface, as long as it is focused, instead of triggering system
    /// actions.
    /// 
    /// If granted, the rerouting remains active until the default shortcuts
    /// processing is restored with `gdk_toplevel_restore_system_shortcuts()`,
    /// or the request is revoked by the desktop environment, windowing system
    /// or the user.
    /// 
    /// A typical use case for this API is remote desktop or virtual machine
    /// viewers which need to inhibit the default system keyboard shortcuts
    /// so that the remote session or virtual host gets those instead of the
    /// local environment.
    /// 
    /// The windowing system or desktop environment may ask the user to grant
    /// or deny the request or even choose to ignore the request entirely.
    /// 
    /// The caller can be notified whenever the request is granted or revoked
    /// by listening to the GdkToplevel`shortcuts-inhibited` property.
    @inlinable func inhibitSystemShortcuts(event: EventRef? = nil) {
        gdk_toplevel_inhibit_system_shortcuts(toplevel_ptr, event?.event_ptr)
    
    }
    /// Requests that the `toplevel` inhibit the system shortcuts, asking the
    /// desktop environment/windowing system to let all keyboard events reach
    /// the surface, as long as it is focused, instead of triggering system
    /// actions.
    /// 
    /// If granted, the rerouting remains active until the default shortcuts
    /// processing is restored with `gdk_toplevel_restore_system_shortcuts()`,
    /// or the request is revoked by the desktop environment, windowing system
    /// or the user.
    /// 
    /// A typical use case for this API is remote desktop or virtual machine
    /// viewers which need to inhibit the default system keyboard shortcuts
    /// so that the remote session or virtual host gets those instead of the
    /// local environment.
    /// 
    /// The windowing system or desktop environment may ask the user to grant
    /// or deny the request or even choose to ignore the request entirely.
    /// 
    /// The caller can be notified whenever the request is granted or revoked
    /// by listening to the GdkToplevel`shortcuts-inhibited` property.
    @inlinable func inhibitSystemShortcuts<EventT: EventProtocol>(event: EventT?) {
        gdk_toplevel_inhibit_system_shortcuts(toplevel_ptr, event?.event_ptr)
    
    }

    /// Asks to lower the `toplevel` below other windows.
    /// 
    /// The windowing system may choose to ignore the request.
    @inlinable func lower() -> Bool {
        let rv = ((gdk_toplevel_lower(toplevel_ptr)) != 0)
        return rv
    }

    /// Asks to minimize the `toplevel`.
    /// 
    /// The windowing system may choose to ignore the request.
    @inlinable func minimize() -> Bool {
        let rv = ((gdk_toplevel_minimize(toplevel_ptr)) != 0)
        return rv
    }

    /// Present `toplevel` after having processed the `GdkToplevelLayout` rules.
    /// If the toplevel was previously not showing, it will be showed,
    /// otherwise it will change layout according to `layout`.
    /// 
    /// GDK may emit the 'compute-size' signal to let the user of this toplevel
    /// compute the preferred size of the toplevel surface. See
    /// `GdkToplevel::compute-size` for details.
    /// 
    /// Presenting is asynchronous and the specified layout parameters are not
    /// guaranteed to be respected.
    @inlinable func present<ToplevelLayoutT: ToplevelLayoutProtocol>(layout: ToplevelLayoutT) {
        gdk_toplevel_present(toplevel_ptr, layout.toplevel_layout_ptr)
    
    }

    /// Restore default system keyboard shortcuts which were previously
    /// requested to be inhibited by `gdk_toplevel_inhibit_system_shortcuts()`.
    @inlinable func restoreSystemShortcuts() {
        gdk_toplevel_restore_system_shortcuts(toplevel_ptr)
    
    }

    /// Setting `decorated` to `false` hints the desktop environment
    /// that the surface has its own, client-side decorations and
    /// does not need to have window decorations added.
    @inlinable func set(decorated: Bool) {
        gdk_toplevel_set_decorated(toplevel_ptr, gboolean((decorated) ? 1 : 0))
    
    }

    /// Setting `deletable` to `true` hints the desktop environment
    /// that it should offer the user a way to close the surface.
    @inlinable func set(deletable: Bool) {
        gdk_toplevel_set_deletable(toplevel_ptr, gboolean((deletable) ? 1 : 0))
    
    }

    /// Sets a list of icons for the surface.
    /// 
    /// One of these will be used to represent the surface in iconic form.
    /// The icon may be shown in window lists or task bars. Which icon
    /// size is shown depends on the window manager. The window manager
    /// can scale the icon but setting several size icons can give better
    /// image quality.
    /// 
    /// Note that some platforms don't support surface icons.
    @inlinable func setIconList<ListT: GLib.ListProtocol>(surfaces: ListT) {
        gdk_toplevel_set_icon_list(toplevel_ptr, surfaces._ptr)
    
    }

    /// The application can use this hint to tell the
    /// window manager that a certain surface has modal
    /// behaviour. The window manager can use this information
    /// to handle modal surfaces in a special way.
    /// 
    /// You should only use this on surfaces for which you have
    /// previously called `gdk_toplevel_set_transient_for()`.
    @inlinable func set(modal: Bool) {
        gdk_toplevel_set_modal(toplevel_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// When using GTK, typically you should use `gtk_window_set_startup_id()`
    /// instead of this low-level function.
    @inlinable func set(startupId: UnsafePointer<CChar>!) {
        gdk_toplevel_set_startup_id(toplevel_ptr, startupId)
    
    }

    /// Sets the title of a toplevel surface, to be displayed in the titlebar,
    /// in lists of windows, etc.
    @inlinable func set(title: UnsafePointer<CChar>!) {
        gdk_toplevel_set_title(toplevel_ptr, title)
    
    }

    /// Indicates to the window manager that `surface` is a transient dialog
    /// associated with the application surface `parent`. This allows the
    /// window manager to do things like center `surface` on `parent` and
    /// keep `surface` above `parent`.
    /// 
    /// See `gtk_window_set_transient_for()` if you’re using `GtkWindow` or
    /// `GtkDialog`.
    @inlinable func setTransientFor<SurfaceT: SurfaceProtocol>(parent: SurfaceT) {
        gdk_toplevel_set_transient_for(toplevel_ptr, parent.surface_ptr)
    
    }

    /// Asks the windowing system to show the window menu.
    /// 
    /// The window menu is the menu shown when right-clicking the titlebar
    /// on traditional windows managed by the window manager. This is useful
    /// for windows using client-side decorations, activating it with a
    /// right-click on the window decorations.
    @inlinable func showWindowMenu<EventT: EventProtocol>(event: EventT) -> Bool {
        let rv = ((gdk_toplevel_show_window_menu(toplevel_ptr, event.event_ptr)) != 0)
        return rv
    }

    /// Returns whether the desktop environment supports
    /// tiled window states.
    @inlinable func supportsEdgeConstraints() -> Bool {
        let rv = ((gdk_toplevel_supports_edge_constraints(toplevel_ptr)) != 0)
        return rv
    }
    @inlinable var state: ToplevelState {
        /// Gets the bitwise OR of the currently active surface state flags,
        /// from the `GdkToplevelState` enumeration.
        get {
            let rv = ToplevelState(gdk_toplevel_get_state(toplevel_ptr))
            return rv
        }
    }


}



