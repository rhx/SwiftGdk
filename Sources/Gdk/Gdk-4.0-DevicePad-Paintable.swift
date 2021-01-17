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

// MARK: - DevicePad Interface

/// The `DevicePadProtocol` protocol exposes the methods and properties of an underlying `GdkDevicePad` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DevicePad`.
/// Alternatively, use `DevicePadRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkDevicePad` is an interface implemented by devices of type
/// `GDK_SOURCE_TABLET_PAD`, it allows querying the features provided
/// by the pad device.
/// 
/// Tablet pads may contain one or more groups, each containing a subset
/// of the buttons/rings/strips available. `gdk_device_pad_get_n_groups()`
/// can be used to obtain the number of groups, `gdk_device_pad_get_n_features()`
/// and `gdk_device_pad_get_feature_group()` can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map each
/// individual pad feature to multiple actions. Only one mode is effective
/// (current) for each given group, different groups may have different
/// current modes. The number of available modes in a group can be found
/// out through `gdk_device_pad_get_group_n_modes()`, and the current mode for
/// a given group will be notified through events of type `GDK_PAD_GROUP_MODE`.
public protocol DevicePadProtocol: DeviceProtocol {
        /// Untyped pointer to the underlying `GdkDevicePad` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDevicePad` instance.
    var device_pad_ptr: UnsafeMutablePointer<GdkDevicePad>! { get }

}

/// The `DevicePadRef` type acts as a lightweight Swift reference to an underlying `GdkDevicePad` instance.
/// It exposes methods that can operate on this data type through `DevicePadProtocol` conformance.
/// Use `DevicePadRef` only as an `unowned` reference to an existing `GdkDevicePad` instance.
///
/// `GdkDevicePad` is an interface implemented by devices of type
/// `GDK_SOURCE_TABLET_PAD`, it allows querying the features provided
/// by the pad device.
/// 
/// Tablet pads may contain one or more groups, each containing a subset
/// of the buttons/rings/strips available. `gdk_device_pad_get_n_groups()`
/// can be used to obtain the number of groups, `gdk_device_pad_get_n_features()`
/// and `gdk_device_pad_get_feature_group()` can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map each
/// individual pad feature to multiple actions. Only one mode is effective
/// (current) for each given group, different groups may have different
/// current modes. The number of available modes in a group can be found
/// out through `gdk_device_pad_get_group_n_modes()`, and the current mode for
/// a given group will be notified through events of type `GDK_PAD_GROUP_MODE`.
public struct DevicePadRef: DevicePadProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDevicePad` instance.
    /// For type-safe access, use the generated, typed pointer `device_pad_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DevicePadRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDevicePad>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDevicePad>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDevicePad>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDevicePad>?) {
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

    /// Reference intialiser for a related type that implements `DevicePadProtocol`
    @inlinable init<T: DevicePadProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DevicePadProtocol>(_ other: T) -> DevicePadRef { DevicePadRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DevicePad` type acts as a reference-counted owner of an underlying `GdkDevicePad` instance.
/// It provides the methods that can operate on this data type through `DevicePadProtocol` conformance.
/// Use `DevicePad` as a strong reference or owner of a `GdkDevicePad` instance.
///
/// `GdkDevicePad` is an interface implemented by devices of type
/// `GDK_SOURCE_TABLET_PAD`, it allows querying the features provided
/// by the pad device.
/// 
/// Tablet pads may contain one or more groups, each containing a subset
/// of the buttons/rings/strips available. `gdk_device_pad_get_n_groups()`
/// can be used to obtain the number of groups, `gdk_device_pad_get_n_features()`
/// and `gdk_device_pad_get_feature_group()` can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map each
/// individual pad feature to multiple actions. Only one mode is effective
/// (current) for each given group, different groups may have different
/// current modes. The number of available modes in a group can be found
/// out through `gdk_device_pad_get_group_n_modes()`, and the current mode for
/// a given group will be notified through events of type `GDK_PAD_GROUP_MODE`.
open class DevicePad: Device, DevicePadProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDevicePad>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDevicePad>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDevicePad>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDevicePad>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDevicePad`.
    /// i.e., ownership is transferred to the `DevicePad` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDevicePad>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DevicePadProtocol`
    /// Will retain `GdkDevicePad`.
    /// - Parameter other: an instance of a related type that implements `DevicePadProtocol`
    @inlinable public init<T: DevicePadProtocol>(devicePad other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DevicePadPropertyName: String, PropertyNameProtocol {
    case capsLockState = "caps-lock-state"
    case direction = "direction"
    /// The `GdkDisplay` the `GdkDevice` pertains to.
    case display = "display"
    case hasBidiLayouts = "has-bidi-layouts"
    /// Whether the device is represented by a cursor on the screen.
    case hasCursor = "has-cursor"
    case modifierState = "modifier-state"
    /// Number of axes in the device.
    case nAxes = "n-axes"
    /// The device name.
    case name = "name"
    case numLockState = "num-lock-state"
    /// The maximal number of concurrent touches on a touch device.
    /// Will be 0 if the device is not a touch device or if the number
    /// of touches is unknown.
    case numTouches = "num-touches"
    /// Product ID of this device, see `gdk_device_get_product_id()`.
    case productId = "product-id"
    case scrollLockState = "scroll-lock-state"
    /// `GdkSeat` of this device.
    case seat = "seat"
    /// Source type for the device.
    case source = "source"
    case tool = "tool"
    /// Vendor ID of this device, see `gdk_device_get_vendor_id()`.
    case vendorId = "vendor-id"
}

public extension DevicePadProtocol {
    /// Bind a `DevicePadPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DevicePadPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DevicePad property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DevicePadPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DevicePad property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DevicePadPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DevicePadSignalName: String, SignalNameProtocol {
    /// The `changed` signal is emitted either when the `GdkDevice`
    /// has changed the number of either axes or keys. For example
    /// on X11 this will normally happen when the physical device
    /// routing events through the logical device changes (for
    /// example, user switches from the USB mouse to a tablet); in
    /// that case the logical device will change to reflect the axes
    /// and keys on the new physical device.
    case changed = "changed"
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
    /// The `tool`-changed signal is emitted on pen/eraser
    /// `GdkDevices` whenever tools enter or leave proximity.
    case toolChanged = "tool-changed"
    case notifyCapsLockState = "notify::caps-lock-state"
    case notifyDirection = "notify::direction"
    /// The `GdkDisplay` the `GdkDevice` pertains to.
    case notifyDisplay = "notify::display"
    case notifyHasBidiLayouts = "notify::has-bidi-layouts"
    /// Whether the device is represented by a cursor on the screen.
    case notifyHasCursor = "notify::has-cursor"
    case notifyModifierState = "notify::modifier-state"
    /// Number of axes in the device.
    case notifyNAxes = "notify::n-axes"
    /// The device name.
    case notifyName = "notify::name"
    case notifyNumLockState = "notify::num-lock-state"
    /// The maximal number of concurrent touches on a touch device.
    /// Will be 0 if the device is not a touch device or if the number
    /// of touches is unknown.
    case notifyNumTouches = "notify::num-touches"
    /// Product ID of this device, see `gdk_device_get_product_id()`.
    case notifyProductId = "notify::product-id"
    case notifyScrollLockState = "notify::scroll-lock-state"
    /// `GdkSeat` of this device.
    case notifySeat = "notify::seat"
    /// Source type for the device.
    case notifySource = "notify::source"
    case notifyTool = "notify::tool"
    /// Vendor ID of this device, see `gdk_device_get_vendor_id()`.
    case notifyVendorId = "notify::vendor-id"
}

// MARK: DevicePad has no signals
// MARK: DevicePad Interface: DevicePadProtocol extension (methods and fields)
public extension DevicePadProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevicePad` instance.
    @inlinable var device_pad_ptr: UnsafeMutablePointer<GdkDevicePad>! { return ptr?.assumingMemoryBound(to: GdkDevicePad.self) }

    /// Returns the group the given `feature` and `idx` belong to,
    /// or -1 if feature/index do not exist in `pad`.
    @inlinable func getFeatureGroup(feature: GdkDevicePadFeature, featureIdx: Int) -> Int {
        let rv = Int(gdk_device_pad_get_feature_group(device_pad_ptr, feature, gint(featureIdx)))
        return rv
    }

    /// Returns the number of modes that `group` may have.
    @inlinable func getGroupNModes(groupIdx: Int) -> Int {
        let rv = Int(gdk_device_pad_get_group_n_modes(device_pad_ptr, gint(groupIdx)))
        return rv
    }

    /// Returns the number of features a tablet pad has.
    @inlinable func getNFeatures(feature: GdkDevicePadFeature) -> Int {
        let rv = Int(gdk_device_pad_get_n_features(device_pad_ptr, feature))
        return rv
    }

    /// Returns the number of groups this pad device has. Pads have
    /// at least one group. A pad group is a subcollection of
    /// buttons/strip/rings that is affected collectively by a same
    /// current mode.
    @inlinable func getNGroups() -> Int {
        let rv = Int(gdk_device_pad_get_n_groups(device_pad_ptr))
        return rv
    }
    /// Returns the number of groups this pad device has. Pads have
    /// at least one group. A pad group is a subcollection of
    /// buttons/strip/rings that is affected collectively by a same
    /// current mode.
    @inlinable var nGroups: Int {
        /// Returns the number of groups this pad device has. Pads have
        /// at least one group. A pad group is a subcollection of
        /// buttons/strip/rings that is affected collectively by a same
        /// current mode.
        get {
            let rv = Int(gdk_device_pad_get_n_groups(device_pad_ptr))
            return rv
        }
    }


}



// MARK: - DragSurface Interface

/// The `DragSurfaceProtocol` protocol exposes the methods and properties of an underlying `GdkDragSurface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragSurface`.
/// Alternatively, use `DragSurfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkDragSurface` is an interface implemented by `GdkSurfaces` used
/// during a DND operation.
public protocol DragSurfaceProtocol: SurfaceProtocol {
        /// Untyped pointer to the underlying `GdkDragSurface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDragSurface` instance.
    var drag_surface_ptr: UnsafeMutablePointer<GdkDragSurface>! { get }

}

/// The `DragSurfaceRef` type acts as a lightweight Swift reference to an underlying `GdkDragSurface` instance.
/// It exposes methods that can operate on this data type through `DragSurfaceProtocol` conformance.
/// Use `DragSurfaceRef` only as an `unowned` reference to an existing `GdkDragSurface` instance.
///
/// A `GdkDragSurface` is an interface implemented by `GdkSurfaces` used
/// during a DND operation.
public struct DragSurfaceRef: DragSurfaceProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GdkDragSurface` instance.
    /// For type-safe access, use the generated, typed pointer `drag_surface_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DragSurfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDragSurface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDragSurface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDragSurface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDragSurface>?) {
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

    /// Reference intialiser for a related type that implements `DragSurfaceProtocol`
    @inlinable init<T: DragSurfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DragSurfaceProtocol>(_ other: T) -> DragSurfaceRef { DragSurfaceRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DragSurface` type acts as a reference-counted owner of an underlying `GdkDragSurface` instance.
/// It provides the methods that can operate on this data type through `DragSurfaceProtocol` conformance.
/// Use `DragSurface` as a strong reference or owner of a `GdkDragSurface` instance.
///
/// A `GdkDragSurface` is an interface implemented by `GdkSurfaces` used
/// during a DND operation.
open class DragSurface: Surface, DragSurfaceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSurface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDragSurface>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSurface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDragSurface>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSurface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSurface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSurface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDragSurface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragSurface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDragSurface>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDragSurface`.
    /// i.e., ownership is transferred to the `DragSurface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDragSurface>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DragSurfaceProtocol`
    /// Will retain `GdkDragSurface`.
    /// - Parameter other: an instance of a related type that implements `DragSurfaceProtocol`
    @inlinable public init<T: DragSurfaceProtocol>(dragSurface other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragSurfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DragSurfacePropertyName: String, PropertyNameProtocol {
    /// The mouse pointer for a `GdkSurface`. See `gdk_surface_set_cursor()` and
    /// `gdk_surface_get_cursor()` for details.
    case cursor = "cursor"
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case display = "display"
    case frameClock = "frame-clock"
    case height = "height"
    case mapped = "mapped"
    case width = "width"
}

public extension DragSurfaceProtocol {
    /// Bind a `DragSurfacePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DragSurfacePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DragSurface property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DragSurfacePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DragSurface property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DragSurfacePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DragSurfaceSignalName: String, SignalNameProtocol {
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
    /// The `GdkDisplay` connection of the surface. See `gdk_surface_get_display()`
    /// for details.
    case notifyDisplay = "notify::display"
    case notifyFrameClock = "notify::frame-clock"
    case notifyHeight = "notify::height"
    case notifyMapped = "notify::mapped"
    case notifyWidth = "notify::width"
}

// MARK: DragSurface has no signals
// MARK: DragSurface Interface: DragSurfaceProtocol extension (methods and fields)
public extension DragSurfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDragSurface` instance.
    @inlinable var drag_surface_ptr: UnsafeMutablePointer<GdkDragSurface>! { return ptr?.assumingMemoryBound(to: GdkDragSurface.self) }

    /// Present `drag_surface`.
    @inlinable func present(width: Int, height: Int) -> Bool {
        let rv = ((gdk_drag_surface_present(drag_surface_ptr, gint(width), gint(height))) != 0)
        return rv
    }


}



// MARK: - Paintable Interface

/// The `PaintableProtocol` protocol exposes the methods and properties of an underlying `GdkPaintable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Paintable`.
/// Alternatively, use `PaintableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkPaintable` is a simple interface used by GDK and GTK to represent
/// objects that can be painted anywhere at any size without requiring any
/// sort of layout. The interface is inspired by similar concepts elsewhere,
/// such as [ClutterContent](https://developer.gnome.org/clutter/stable/ClutterContent.html),
/// [HTML/CSS Paint Sources](https://www.w3.org/TR/css-images-4/`paint`-source),
/// or [SVG Paint Servers](https://www.w3.org/TR/SVG2/pservers.html).
/// 
/// A `GdkPaintable` can be snapshot at any time and size using
/// `gdk_paintable_snapshot()`. How the paintable interprets that size and if it
/// scales or centers itself into the given rectangle is implementation defined,
/// though if you are implementing a `GdkPaintable` and don't know what to do, it
/// is suggested that you scale your paintable ignoring any potential aspect ratio.
/// 
/// The contents that a `GdkPaintable` produces may depend on the `GdkSnapshot` passed
/// to it. For example, paintables may decide to use more detailed images on higher
/// resolution screens or when OpenGL is available. A `GdkPaintable` will however
/// always produce the same output for the same snapshot.
/// 
/// A `GdkPaintable` may change its contents, meaning that it will now produce a
/// different output with the same snapshot. Once that happens, it will call
/// `gdk_paintable_invalidate_contents()` which will emit the
/// `GdkPaintable::invalidate`-contents signal. If a paintable is known to never
/// change its contents, it will set the `GDK_PAINTABLE_STATIC_CONTENTS` flag.
/// If a consumer cannot deal with changing contents, it may call
/// `gdk_paintable_get_current_image()` which will return a static paintable and
/// use that.
/// 
/// A paintable can report an intrinsic (or preferred) size or aspect ratio it
/// wishes to be rendered at, though it doesn't have to. Consumers of the interface
/// can use this information to layout thepaintable appropriately.
/// Just like the contents, the size of a paintable can change. A paintable will
/// indicate this by calling `gdk_paintable_invalidate_size()` which will emit the
/// `GdkPaintable::invalidate`-size signal.
/// And just like for contents, if a paintable is known to never change its size,
/// it will set the `GDK_PAINTABLE_STATIC_SIZE` flag.
/// 
/// Besides API for applications, there are some functions that are only
/// useful for implementing subclasses and should not be used by applications:
/// `gdk_paintable_invalidate_contents()`,
/// `gdk_paintable_invalidate_size()`,
/// `gdk_paintable_new_empty()`.
public protocol PaintableProtocol {
        /// Untyped pointer to the underlying `GdkPaintable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPaintable` instance.
    var paintable_ptr: UnsafeMutablePointer<GdkPaintable>! { get }

}

/// The `PaintableRef` type acts as a lightweight Swift reference to an underlying `GdkPaintable` instance.
/// It exposes methods that can operate on this data type through `PaintableProtocol` conformance.
/// Use `PaintableRef` only as an `unowned` reference to an existing `GdkPaintable` instance.
///
/// `GdkPaintable` is a simple interface used by GDK and GTK to represent
/// objects that can be painted anywhere at any size without requiring any
/// sort of layout. The interface is inspired by similar concepts elsewhere,
/// such as [ClutterContent](https://developer.gnome.org/clutter/stable/ClutterContent.html),
/// [HTML/CSS Paint Sources](https://www.w3.org/TR/css-images-4/`paint`-source),
/// or [SVG Paint Servers](https://www.w3.org/TR/SVG2/pservers.html).
/// 
/// A `GdkPaintable` can be snapshot at any time and size using
/// `gdk_paintable_snapshot()`. How the paintable interprets that size and if it
/// scales or centers itself into the given rectangle is implementation defined,
/// though if you are implementing a `GdkPaintable` and don't know what to do, it
/// is suggested that you scale your paintable ignoring any potential aspect ratio.
/// 
/// The contents that a `GdkPaintable` produces may depend on the `GdkSnapshot` passed
/// to it. For example, paintables may decide to use more detailed images on higher
/// resolution screens or when OpenGL is available. A `GdkPaintable` will however
/// always produce the same output for the same snapshot.
/// 
/// A `GdkPaintable` may change its contents, meaning that it will now produce a
/// different output with the same snapshot. Once that happens, it will call
/// `gdk_paintable_invalidate_contents()` which will emit the
/// `GdkPaintable::invalidate`-contents signal. If a paintable is known to never
/// change its contents, it will set the `GDK_PAINTABLE_STATIC_CONTENTS` flag.
/// If a consumer cannot deal with changing contents, it may call
/// `gdk_paintable_get_current_image()` which will return a static paintable and
/// use that.
/// 
/// A paintable can report an intrinsic (or preferred) size or aspect ratio it
/// wishes to be rendered at, though it doesn't have to. Consumers of the interface
/// can use this information to layout thepaintable appropriately.
/// Just like the contents, the size of a paintable can change. A paintable will
/// indicate this by calling `gdk_paintable_invalidate_size()` which will emit the
/// `GdkPaintable::invalidate`-size signal.
/// And just like for contents, if a paintable is known to never change its size,
/// it will set the `GDK_PAINTABLE_STATIC_SIZE` flag.
/// 
/// Besides API for applications, there are some functions that are only
/// useful for implementing subclasses and should not be used by applications:
/// `gdk_paintable_invalidate_contents()`,
/// `gdk_paintable_invalidate_size()`,
/// `gdk_paintable_new_empty()`.
public struct PaintableRef: PaintableProtocol {
        /// Untyped pointer to the underlying `GdkPaintable` instance.
    /// For type-safe access, use the generated, typed pointer `paintable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PaintableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPaintable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPaintable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPaintable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPaintable>?) {
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

    /// Reference intialiser for a related type that implements `PaintableProtocol`
    @inlinable init<T: PaintableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a paintable that has the given intrinsic size and draws nothing.
    /// This is often useful for implementing the `GdkPaintableInterface.get_current_image``()`
    /// virtual function when the paintable is in an incomplete state (like a
    /// `GtkMediaStream` before receiving the first frame).
    @inlinable static func new(empty intrinsicWidth: Int, intrinsicHeight: Int) -> PaintableRef! {
        guard let rv = PaintableRef(gconstpointer: gconstpointer(gdk_paintable_new_empty(gint(intrinsicWidth), gint(intrinsicHeight)))) else { return nil }
        return rv
    }
}

/// The `Paintable` type acts as an owner of an underlying `GdkPaintable` instance.
/// It provides the methods that can operate on this data type through `PaintableProtocol` conformance.
/// Use `Paintable` as a strong reference or owner of a `GdkPaintable` instance.
///
/// `GdkPaintable` is a simple interface used by GDK and GTK to represent
/// objects that can be painted anywhere at any size without requiring any
/// sort of layout. The interface is inspired by similar concepts elsewhere,
/// such as [ClutterContent](https://developer.gnome.org/clutter/stable/ClutterContent.html),
/// [HTML/CSS Paint Sources](https://www.w3.org/TR/css-images-4/`paint`-source),
/// or [SVG Paint Servers](https://www.w3.org/TR/SVG2/pservers.html).
/// 
/// A `GdkPaintable` can be snapshot at any time and size using
/// `gdk_paintable_snapshot()`. How the paintable interprets that size and if it
/// scales or centers itself into the given rectangle is implementation defined,
/// though if you are implementing a `GdkPaintable` and don't know what to do, it
/// is suggested that you scale your paintable ignoring any potential aspect ratio.
/// 
/// The contents that a `GdkPaintable` produces may depend on the `GdkSnapshot` passed
/// to it. For example, paintables may decide to use more detailed images on higher
/// resolution screens or when OpenGL is available. A `GdkPaintable` will however
/// always produce the same output for the same snapshot.
/// 
/// A `GdkPaintable` may change its contents, meaning that it will now produce a
/// different output with the same snapshot. Once that happens, it will call
/// `gdk_paintable_invalidate_contents()` which will emit the
/// `GdkPaintable::invalidate`-contents signal. If a paintable is known to never
/// change its contents, it will set the `GDK_PAINTABLE_STATIC_CONTENTS` flag.
/// If a consumer cannot deal with changing contents, it may call
/// `gdk_paintable_get_current_image()` which will return a static paintable and
/// use that.
/// 
/// A paintable can report an intrinsic (or preferred) size or aspect ratio it
/// wishes to be rendered at, though it doesn't have to. Consumers of the interface
/// can use this information to layout thepaintable appropriately.
/// Just like the contents, the size of a paintable can change. A paintable will
/// indicate this by calling `gdk_paintable_invalidate_size()` which will emit the
/// `GdkPaintable::invalidate`-size signal.
/// And just like for contents, if a paintable is known to never change its size,
/// it will set the `GDK_PAINTABLE_STATIC_SIZE` flag.
/// 
/// Besides API for applications, there are some functions that are only
/// useful for implementing subclasses and should not be used by applications:
/// `gdk_paintable_invalidate_contents()`,
/// `gdk_paintable_invalidate_size()`,
/// `gdk_paintable_new_empty()`.
open class Paintable: PaintableProtocol {
        /// Untyped pointer to the underlying `GdkPaintable` instance.
    /// For type-safe access, use the generated, typed pointer `paintable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPaintable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPaintable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paintable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPaintable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Paintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPaintable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkPaintable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Paintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPaintable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkPaintable, cannot ref(paintable_ptr)
    }

    /// Reference intialiser for a related type that implements `PaintableProtocol`
    /// `GdkPaintable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PaintableProtocol`
    @inlinable public init<T: PaintableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkPaintable, cannot ref(paintable_ptr)
    }

    /// Do-nothing destructor for `GdkPaintable`.
    deinit {
        // no reference counting for GdkPaintable, cannot unref(paintable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkPaintable, cannot ref(paintable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkPaintable, cannot ref(paintable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkPaintable, cannot ref(paintable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PaintableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkPaintable, cannot ref(paintable_ptr)
    }


    /// Returns a paintable that has the given intrinsic size and draws nothing.
    /// This is often useful for implementing the `GdkPaintableInterface.get_current_image``()`
    /// virtual function when the paintable is in an incomplete state (like a
    /// `GtkMediaStream` before receiving the first frame).
    @inlinable public static func new(empty intrinsicWidth: Int, intrinsicHeight: Int) -> Paintable! {
        guard let rv = Paintable(gconstpointer: gconstpointer(gdk_paintable_new_empty(gint(intrinsicWidth), gint(intrinsicHeight)))) else { return nil }
        return rv
    }

}

// MARK: no Paintable properties

public enum PaintableSignalName: String, SignalNameProtocol {
    /// Emitted when the contents of the `paintable` change.
    /// 
    /// Examples for such an event would be videos changing to the next frame or
    /// the icon theme for an icon changing.
    case invalidateContents = "invalidate-contents"
    /// Emitted when the intrinsic size of the `paintable` changes. This means the values
    /// reported by at least one of `gdk_paintable_get_intrinsic_width()`,
    /// `gdk_paintable_get_intrinsic_height()` or `gdk_paintable_get_intrinsic_aspect_ratio()`
    /// has changed.
    /// 
    /// Examples for such an event would be a paintable displaying the contents of a toplevel
    /// surface being resized.
    case invalidateSize = "invalidate-size"

}

// MARK: Paintable signals
public extension PaintableProtocol {
    /// Connect a Swift signal handler to the given, typed `PaintableSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: PaintableSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `PaintableSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: PaintableSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the contents of the `paintable` change.
    /// 
    /// Examples for such an event would be videos changing to the next frame or
    /// the icon theme for an icon changing.
    /// - Note: This represents the underlying `invalidate-contents` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `invalidateContents` signal is emitted
    @discardableResult @inlinable func onInvalidateContents(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PaintableRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PaintableRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PaintableRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .invalidateContents,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `invalidate-contents` signal for using the `connect(signal:)` methods
    static var invalidateContentsSignal: PaintableSignalName { .invalidateContents }
    
    /// Emitted when the intrinsic size of the `paintable` changes. This means the values
    /// reported by at least one of `gdk_paintable_get_intrinsic_width()`,
    /// `gdk_paintable_get_intrinsic_height()` or `gdk_paintable_get_intrinsic_aspect_ratio()`
    /// has changed.
    /// 
    /// Examples for such an event would be a paintable displaying the contents of a toplevel
    /// surface being resized.
    /// - Note: This represents the underlying `invalidate-size` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `invalidateSize` signal is emitted
    @discardableResult @inlinable func onInvalidateSize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: PaintableRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<PaintableRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(PaintableRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .invalidateSize,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `invalidate-size` signal for using the `connect(signal:)` methods
    static var invalidateSizeSignal: PaintableSignalName { .invalidateSize }
    
    
}

// MARK: Paintable Interface: PaintableProtocol extension (methods and fields)
public extension PaintableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPaintable` instance.
    @inlinable var paintable_ptr: UnsafeMutablePointer<GdkPaintable>! { return ptr?.assumingMemoryBound(to: GdkPaintable.self) }

    /// Applies the sizing algorithm outlined in
    /// https://drafts.csswg.org/css-images-3/`default`-sizing
    /// to the given `paintable`. See that link for more details.
    /// 
    /// It is not necessary to call this function when both `specified_width`
    /// and `specified_height` are known, but it is useful to call this
    /// function in GtkWidget:measure implementations to compute the
    /// other dimension when only one dimension is given.
    @inlinable func computeConcreteSize(specifiedWidth: CDouble, specifiedHeight: CDouble, defaultWidth: CDouble, defaultHeight: CDouble, concreteWidth: UnsafeMutablePointer<CDouble>!, concreteHeight: UnsafeMutablePointer<CDouble>!) {
        gdk_paintable_compute_concrete_size(paintable_ptr, specifiedWidth, specifiedHeight, defaultWidth, defaultHeight, concreteWidth, concreteHeight)
    
    }

    /// Gets an immutable paintable for the current contents displayed by `paintable`.
    /// 
    /// This is useful when you want to retain the current state of an animation, for
    /// example to take a screenshot of a running animation.
    /// 
    /// If the `paintable` is already immutable, it will return itself.
    @inlinable func getCurrentImage() -> PaintableRef! {
        guard let rv = PaintableRef(gconstpointer: gconstpointer(gdk_paintable_get_current_image(paintable_ptr))) else { return nil }
        return rv
    }

    /// Get flags for the paintable. This is oftentimes useful for optimizations.
    /// 
    /// See `GdkPaintableFlags` for the flags and what they mean.
    @inlinable func getFlags() -> PaintableFlags {
        let rv = PaintableFlags(gdk_paintable_get_flags(paintable_ptr))
        return rv
    }

    /// Gets the preferred aspect ratio the `paintable` would like to be displayed at.
    /// The aspect ratio is the width divided by the height, so a value of 0.5 means
    /// that the `paintable` prefers to be displayed twice as high as it is wide.
    /// Consumers of this interface can use this to preserve aspect ratio when displaying
    /// the paintable.
    /// 
    /// This is a purely informational value and does not in any way limit the values
    /// that may be passed to `gdk_paintable_snapshot()`.
    /// 
    /// Usually when a `paintable` returns nonzero values from
    /// `gdk_paintable_get_intrinsic_width()` and `gdk_paintable_get_intrinsic_height()`
    /// the aspect ratio should conform to those values, though that is not required.
    /// 
    /// If the `paintable` does not have a preferred aspect ratio, it returns 0.
    /// Negative values are never returned.
    @inlinable func getIntrinsicAspectRatio() -> CDouble {
        let rv = gdk_paintable_get_intrinsic_aspect_ratio(paintable_ptr)
        return rv
    }

    /// Gets the preferred height the `paintable` would like to be displayed at.
    /// Consumers of this interface can use this to reserve enough space to draw
    /// the paintable.
    /// 
    /// This is a purely informational value and does not in any way limit the values
    /// that may be passed to `gdk_paintable_snapshot()`.
    /// 
    /// If the `paintable` does not have a preferred height, it returns 0. Negative
    /// values are never returned.
    @inlinable func getIntrinsicHeight() -> Int {
        let rv = Int(gdk_paintable_get_intrinsic_height(paintable_ptr))
        return rv
    }

    /// Gets the preferred width the `paintable` would like to be displayed at.
    /// Consumers of this interface can use this to reserve enough space to draw
    /// the paintable.
    /// 
    /// This is a purely informational value and does not in any way limit the values
    /// that may be passed to `gdk_paintable_snapshot()`.
    /// 
    /// If the `paintable` does not have a preferred width, it returns 0. Negative
    /// values are never returned.
    @inlinable func getIntrinsicWidth() -> Int {
        let rv = Int(gdk_paintable_get_intrinsic_width(paintable_ptr))
        return rv
    }

    /// Called by implementations of `GdkPaintable` to invalidate their contents.
    /// Unless the contents are invalidated, implementations must guarantee that
    /// multiple calls of `gdk_paintable_snapshot()` produce the same output.
    /// 
    /// This function will emit the `GdkPaintable::invalidate`-contents signal.
    /// 
    /// If a `paintable` reports the `GDK_PAINTABLE_STATIC_CONTENTS` flag,
    /// it must not call this function.
    @inlinable func invalidateContents() {
        gdk_paintable_invalidate_contents(paintable_ptr)
    
    }

    /// Called by implementations of `GdkPaintable` to invalidate their size.
    /// As long as the size is not invalidated, `paintable` must return the same
    /// values for its intrinsic width, height and aspect ratio.
    /// 
    /// This function will emit the `GdkPaintable::invalidate`-size signal.
    /// 
    /// If a `paintable` reports the `GDK_PAINTABLE_STATIC_SIZE` flag,
    /// it must not call this function.
    @inlinable func invalidateSize() {
        gdk_paintable_invalidate_size(paintable_ptr)
    
    }

    /// Snapshots the given paintable with the given `width` and `height` at the
    /// current (0,0) offset of the `snapshot`. If `width` and `height` are not larger
    /// than zero, this function will do nothing.
    @inlinable func snapshot<SnapshotT: SnapshotProtocol>(snapshot: SnapshotT, width: CDouble, height: CDouble) {
        gdk_paintable_snapshot(paintable_ptr, snapshot.snapshot_ptr, width, height)
    
    }
    /// Gets an immutable paintable for the current contents displayed by `paintable`.
    /// 
    /// This is useful when you want to retain the current state of an animation, for
    /// example to take a screenshot of a running animation.
    /// 
    /// If the `paintable` is already immutable, it will return itself.
    @inlinable var currentImage: PaintableRef! {
        /// Gets an immutable paintable for the current contents displayed by `paintable`.
        /// 
        /// This is useful when you want to retain the current state of an animation, for
        /// example to take a screenshot of a running animation.
        /// 
        /// If the `paintable` is already immutable, it will return itself.
        get {
            guard let rv = PaintableRef(gconstpointer: gconstpointer(gdk_paintable_get_current_image(paintable_ptr))) else { return nil }
            return rv
        }
    }

    /// Get flags for the paintable. This is oftentimes useful for optimizations.
    /// 
    /// See `GdkPaintableFlags` for the flags and what they mean.
    @inlinable var flags: PaintableFlags {
        /// Get flags for the paintable. This is oftentimes useful for optimizations.
        /// 
        /// See `GdkPaintableFlags` for the flags and what they mean.
        get {
            let rv = PaintableFlags(gdk_paintable_get_flags(paintable_ptr))
            return rv
        }
    }

    /// Gets the preferred aspect ratio the `paintable` would like to be displayed at.
    /// The aspect ratio is the width divided by the height, so a value of 0.5 means
    /// that the `paintable` prefers to be displayed twice as high as it is wide.
    /// Consumers of this interface can use this to preserve aspect ratio when displaying
    /// the paintable.
    /// 
    /// This is a purely informational value and does not in any way limit the values
    /// that may be passed to `gdk_paintable_snapshot()`.
    /// 
    /// Usually when a `paintable` returns nonzero values from
    /// `gdk_paintable_get_intrinsic_width()` and `gdk_paintable_get_intrinsic_height()`
    /// the aspect ratio should conform to those values, though that is not required.
    /// 
    /// If the `paintable` does not have a preferred aspect ratio, it returns 0.
    /// Negative values are never returned.
    @inlinable var intrinsicAspectRatio: CDouble {
        /// Gets the preferred aspect ratio the `paintable` would like to be displayed at.
        /// The aspect ratio is the width divided by the height, so a value of 0.5 means
        /// that the `paintable` prefers to be displayed twice as high as it is wide.
        /// Consumers of this interface can use this to preserve aspect ratio when displaying
        /// the paintable.
        /// 
        /// This is a purely informational value and does not in any way limit the values
        /// that may be passed to `gdk_paintable_snapshot()`.
        /// 
        /// Usually when a `paintable` returns nonzero values from
        /// `gdk_paintable_get_intrinsic_width()` and `gdk_paintable_get_intrinsic_height()`
        /// the aspect ratio should conform to those values, though that is not required.
        /// 
        /// If the `paintable` does not have a preferred aspect ratio, it returns 0.
        /// Negative values are never returned.
        get {
            let rv = gdk_paintable_get_intrinsic_aspect_ratio(paintable_ptr)
            return rv
        }
    }

    /// Gets the preferred height the `paintable` would like to be displayed at.
    /// Consumers of this interface can use this to reserve enough space to draw
    /// the paintable.
    /// 
    /// This is a purely informational value and does not in any way limit the values
    /// that may be passed to `gdk_paintable_snapshot()`.
    /// 
    /// If the `paintable` does not have a preferred height, it returns 0. Negative
    /// values are never returned.
    @inlinable var intrinsicHeight: Int {
        /// Gets the preferred height the `paintable` would like to be displayed at.
        /// Consumers of this interface can use this to reserve enough space to draw
        /// the paintable.
        /// 
        /// This is a purely informational value and does not in any way limit the values
        /// that may be passed to `gdk_paintable_snapshot()`.
        /// 
        /// If the `paintable` does not have a preferred height, it returns 0. Negative
        /// values are never returned.
        get {
            let rv = Int(gdk_paintable_get_intrinsic_height(paintable_ptr))
            return rv
        }
    }

    /// Gets the preferred width the `paintable` would like to be displayed at.
    /// Consumers of this interface can use this to reserve enough space to draw
    /// the paintable.
    /// 
    /// This is a purely informational value and does not in any way limit the values
    /// that may be passed to `gdk_paintable_snapshot()`.
    /// 
    /// If the `paintable` does not have a preferred width, it returns 0. Negative
    /// values are never returned.
    @inlinable var intrinsicWidth: Int {
        /// Gets the preferred width the `paintable` would like to be displayed at.
        /// Consumers of this interface can use this to reserve enough space to draw
        /// the paintable.
        /// 
        /// This is a purely informational value and does not in any way limit the values
        /// that may be passed to `gdk_paintable_snapshot()`.
        /// 
        /// If the `paintable` does not have a preferred width, it returns 0. Negative
        /// values are never returned.
        get {
            let rv = Int(gdk_paintable_get_intrinsic_width(paintable_ptr))
            return rv
        }
    }


}



