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

// MARK: - Device Class

/// The `DeviceProtocol` protocol exposes the methods and properties of an underlying `GdkDevice` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Device`.
/// Alternatively, use `DeviceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkDevice` object represents a single input device, such
/// as a keyboard, a mouse, a touchpad, etc.
/// 
/// See the `GdkDeviceManager` documentation for more information
/// about the various kinds of master and slave devices, and their
/// relationships.
public protocol DeviceProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDevice` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDevice` instance.
    var device_ptr: UnsafeMutablePointer<GdkDevice>! { get }

}

/// The `DeviceRef` type acts as a lightweight Swift reference to an underlying `GdkDevice` instance.
/// It exposes methods that can operate on this data type through `DeviceProtocol` conformance.
/// Use `DeviceRef` only as an `unowned` reference to an existing `GdkDevice` instance.
///
/// The `GdkDevice` object represents a single input device, such
/// as a keyboard, a mouse, a touchpad, etc.
/// 
/// See the `GdkDeviceManager` documentation for more information
/// about the various kinds of master and slave devices, and their
/// relationships.
public struct DeviceRef: DeviceProtocol {
        /// Untyped pointer to the underlying `GdkDevice` instance.
    /// For type-safe access, use the generated, typed pointer `device_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DeviceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDevice>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDevice>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDevice>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDevice>?) {
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

    /// Reference intialiser for a related type that implements `DeviceProtocol`
    @inlinable init<T: DeviceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Device` type acts as a reference-counted owner of an underlying `GdkDevice` instance.
/// It provides the methods that can operate on this data type through `DeviceProtocol` conformance.
/// Use `Device` as a strong reference or owner of a `GdkDevice` instance.
///
/// The `GdkDevice` object represents a single input device, such
/// as a keyboard, a mouse, a touchpad, etc.
/// 
/// See the `GdkDeviceManager` documentation for more information
/// about the various kinds of master and slave devices, and their
/// relationships.
open class Device: Object, DeviceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDevice>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDevice>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDevice>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDevice>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDevice`.
    /// i.e., ownership is transferred to the `Device` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDevice>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DeviceProtocol`
    /// Will retain `GdkDevice`.
    /// - Parameter other: an instance of a related type that implements `DeviceProtocol`
    @inlinable public init<T: DeviceProtocol>(device other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DevicePropertyName: String, PropertyNameProtocol {
    /// Associated pointer or keyboard with this device, if any. Devices of type `GDK_DEVICE_TYPE_MASTER`
    /// always come in keyboard/pointer pairs. Other device types will have a `nil` associated device.
    case associatedDevice = "associated-device"
    /// The axes currently available for this device.
    case axes = "axes"
    /// The `GdkDeviceManager` the `GdkDevice` pertains to.
    case deviceManager = "device-manager"
    /// The `GdkDisplay` the `GdkDevice` pertains to.
    case display = "display"
    /// Whether the device is represented by a cursor on the screen. Devices of type
    /// `GDK_DEVICE_TYPE_MASTER` will have `true` here.
    case hasCursor = "has-cursor"
    case inputMode = "input-mode"
    /// Source type for the device.
    case inputSource = "input-source"
    /// Number of axes in the device.
    case nAxes = "n-axes"
    /// The device name.
    case name = "name"
    /// The maximal number of concurrent touches on a touch device.
    /// Will be 0 if the device is not a touch device or if the number
    /// of touches is unknown.
    case numTouches = "num-touches"
    /// Product ID of this device, see `gdk_device_get_product_id()`.
    case productId = "product-id"
    /// `GdkSeat` of this device.
    case seat = "seat"
    case tool = "tool"
    /// Device role in the device manager.
    case type = "type"
    /// Vendor ID of this device, see `gdk_device_get_vendor_id()`.
    case vendorId = "vendor-id"
}

public extension DeviceProtocol {
    /// Bind a `DevicePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DevicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Device property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DevicePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Device property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DevicePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DeviceSignalName: String, SignalNameProtocol {
    /// The `changed` signal is emitted either when the `GdkDevice`
    /// has changed the number of either axes or keys. For example
    /// In X this will normally happen when the slave device routing
    /// events through the master device changes (for example, user
    /// switches from the USB mouse to a tablet), in that case the
    /// master device will change to reflect the new slave device
    /// axes and keys.
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
    /// Associated pointer or keyboard with this device, if any. Devices of type `GDK_DEVICE_TYPE_MASTER`
    /// always come in keyboard/pointer pairs. Other device types will have a `nil` associated device.
    case notifyAssociatedDevice = "notify::associated-device"
    /// The axes currently available for this device.
    case notifyAxes = "notify::axes"
    /// The `GdkDeviceManager` the `GdkDevice` pertains to.
    case notifyDeviceManager = "notify::device-manager"
    /// The `GdkDisplay` the `GdkDevice` pertains to.
    case notifyDisplay = "notify::display"
    /// Whether the device is represented by a cursor on the screen. Devices of type
    /// `GDK_DEVICE_TYPE_MASTER` will have `true` here.
    case notifyHasCursor = "notify::has-cursor"
    case notifyInputMode = "notify::input-mode"
    /// Source type for the device.
    case notifyInputSource = "notify::input-source"
    /// Number of axes in the device.
    case notifyNAxes = "notify::n-axes"
    /// The device name.
    case notifyName = "notify::name"
    /// The maximal number of concurrent touches on a touch device.
    /// Will be 0 if the device is not a touch device or if the number
    /// of touches is unknown.
    case notifyNumTouches = "notify::num-touches"
    /// Product ID of this device, see `gdk_device_get_product_id()`.
    case notifyProductId = "notify::product-id"
    /// `GdkSeat` of this device.
    case notifySeat = "notify::seat"
    case notifyTool = "notify::tool"
    /// Device role in the device manager.
    case notifyType_ = "notify::type"
    /// Vendor ID of this device, see `gdk_device_get_vendor_id()`.
    case notifyVendorId = "notify::vendor-id"
}

public extension DeviceProtocol {
    /// Connect a `DeviceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DeviceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Device Class: DeviceProtocol extension (methods and fields)
public extension DeviceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevice` instance.
    @inlinable var device_ptr: UnsafeMutablePointer<GdkDevice>! { return ptr?.assumingMemoryBound(to: GdkDevice.self) }

    /// Returns the associated device to `device`, if `device` is of type
    /// `GDK_DEVICE_TYPE_MASTER`, it will return the paired pointer or
    /// keyboard.
    /// 
    /// If `device` is of type `GDK_DEVICE_TYPE_SLAVE`, it will return
    /// the master device to which `device` is attached to.
    /// 
    /// If `device` is of type `GDK_DEVICE_TYPE_FLOATING`, `nil` will be
    /// returned, as there is no associated device.
    @inlinable func getAssociatedDevice() -> DeviceRef! {
        guard let rv = DeviceRef(gconstpointer: gconstpointer(gdk_device_get_associated_device(device_ptr))) else { return nil }
        return rv
    }

    /// Returns the axes currently available on the device.
    @inlinable func getAxes() -> AxisFlags {
        let rv = AxisFlags(gdk_device_get_axes(device_ptr))
        return rv
    }

    /// Interprets an array of double as axis values for a given device,
    /// and locates the value in the array for a given axis use.
    @inlinable func getAxis(axes: UnsafeMutablePointer<gdouble>!, use: GdkAxisUse, value: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_device_get_axis(device_ptr, axes, use, value)) != 0)
        return rv
    }

    /// Returns the axis use for `index_`.
    @inlinable func getAxisUse(index_: Int) -> GdkAxisUse {
        let rv = gdk_device_get_axis_use(device_ptr, guint(index_))
        return rv
    }

    /// Interprets an array of double as axis values for a given device,
    /// and locates the value in the array for a given axis label, as returned
    /// by `gdk_device_list_axes()`
    @inlinable func getAxisValue(axes: UnsafeMutablePointer<gdouble>!, axisLabel axis_label: GdkAtom!, value: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_device_get_axis_value(device_ptr, axes, axis_label, value)) != 0)
        return rv
    }

    /// Returns the device type for `device`.
    @inlinable func getDeviceType() -> GdkDeviceType {
        let rv = gdk_device_get_device_type(device_ptr)
        return rv
    }

    /// Returns the `GdkDisplay` to which `device` pertains.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_device_get_display(device_ptr)))
        return rv
    }

    /// Determines whether the pointer follows device motion.
    /// This is not meaningful for keyboard devices, which don't have a pointer.
    @inlinable func getHasCursor() -> Bool {
        let rv = ((gdk_device_get_has_cursor(device_ptr)) != 0)
        return rv
    }

    /// Obtains the motion history for a pointer device; given a starting and
    /// ending timestamp, return all events in the motion history for
    /// the device in the given range of time. Some windowing systems
    /// do not support motion history, in which case, `false` will
    /// be returned. (This is not distinguishable from the case where
    /// motion history is supported and no events were found.)
    /// 
    /// Note that there is also `gdk_window_set_event_compression()` to get
    /// more motion events delivered directly, independent of the windowing
    /// system.
    @inlinable func getHistory<WindowT: WindowProtocol>(window: WindowT, start: guint32, stop: guint32, events: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<GdkTimeCoord>?>?>! = nil, nEvents n_events: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let rv = ((gdk_device_get_history(device_ptr, window.window_ptr, start, stop, events, n_events)) != 0)
        return rv
    }

    /// If `index_` has a valid keyval, this function will return `true`
    /// and fill in `keyval` and `modifiers` with the keyval settings.
    @inlinable func getKey(index_: Int, keyval: UnsafeMutablePointer<guint>!, modifiers: UnsafeMutablePointer<GdkModifierType>!) -> Bool {
        let rv = ((gdk_device_get_key(device_ptr, guint(index_), keyval, modifiers)) != 0)
        return rv
    }

    /// Gets information about which window the given pointer device is in, based on events
    /// that have been received so far from the display server. If another application
    /// has a pointer grab, or this application has a grab with owner_events = `false`,
    /// `nil` may be returned even if the pointer is physically over one of this
    /// application's windows.
    @inlinable func getLastEventWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_device_get_last_event_window(device_ptr)))
        return rv
    }

    /// Determines the mode of the device.
    @inlinable func getMode() -> GdkInputMode {
        let rv = gdk_device_get_mode(device_ptr)
        return rv
    }

    /// Returns the number of axes the device currently has.
    @inlinable func getNAxes() -> Int {
        let rv = Int(gdk_device_get_n_axes(device_ptr))
        return rv
    }

    /// Returns the number of keys the device currently has.
    @inlinable func getNKeys() -> Int {
        let rv = Int(gdk_device_get_n_keys(device_ptr))
        return rv
    }

    /// Determines the name of the device.
    @inlinable func getName() -> String! {
        let rv = gdk_device_get_name(device_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the current location of `device`. As a slave device
    /// coordinates are those of its master pointer, This function
    /// may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them, see `gdk_device_grab()`.
    @inlinable func getPosition(screen: UnsafeMutablePointer<UnsafeMutablePointer<GdkScreen>?>! = nil, x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil) {
        gdk_device_get_position(device_ptr, screen, x, y)
    
    }

    /// Gets the current location of `device` in double precision. As a slave device's
    /// coordinates are those of its master pointer, this function
    /// may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them. See `gdk_device_grab()`.
    @inlinable func getPositionDouble(screen: UnsafeMutablePointer<UnsafeMutablePointer<GdkScreen>?>! = nil, x: UnsafeMutablePointer<gdouble>! = nil, y: UnsafeMutablePointer<gdouble>! = nil) {
        gdk_device_get_position_double(device_ptr, screen, x, y)
    
    }

    /// Returns the product ID of this device, or `nil` if this information couldn't
    /// be obtained. This ID is retrieved from the device, and is thus constant for
    /// it. See `gdk_device_get_vendor_id()` for more information.
    @inlinable func getProductId() -> String! {
        let rv = gdk_device_get_product_id(device_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the `GdkSeat` the device belongs to.
    @inlinable func getSeat() -> SeatRef! {
        let rv = SeatRef(gconstpointer: gconstpointer(gdk_device_get_seat(device_ptr)))
        return rv
    }

    /// Determines the type of the device.
    @inlinable func getSource() -> GdkInputSource {
        let rv = gdk_device_get_source(device_ptr)
        return rv
    }

    /// Gets the current state of a pointer device relative to `window`. As a slave
    /// device’s coordinates are those of its master pointer, this
    /// function may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them. See `gdk_device_grab()`.
    @inlinable func getState<WindowT: WindowProtocol>(window: WindowT, axes: UnsafeMutablePointer<gdouble>! = nil, mask: UnsafeMutablePointer<GdkModifierType>! = nil) {
        gdk_device_get_state(device_ptr, window.window_ptr, axes, mask)
    
    }

    /// Returns the vendor ID of this device, or `nil` if this information couldn't
    /// be obtained. This ID is retrieved from the device, and is thus constant for
    /// it.
    /// 
    /// This function, together with `gdk_device_get_product_id()`, can be used to eg.
    /// compose `GSettings` paths to store settings for this device.
    /// 
    /// (C Language Example):
    /// ```C
    ///  static GSettings *
    ///  get_device_settings (GdkDevice *device)
    ///  {
    ///    const gchar *vendor, *product;
    ///    GSettings *settings;
    ///    GdkDevice *device;
    ///    gchar *path;
    /// 
    ///    vendor = gdk_device_get_vendor_id (device);
    ///    product = gdk_device_get_product_id (device);
    /// 
    ///    path = g_strdup_printf ("/org/example/app/devices/%s:%s/", vendor, product);
    ///    settings = g_settings_new_with_path (DEVICE_SCHEMA, path);
    ///    g_free (path);
    /// 
    ///    return settings;
    ///  }
    /// ```
    /// 
    @inlinable func getVendorId() -> String! {
        let rv = gdk_device_get_vendor_id(device_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Obtains the window underneath `device`, returning the location of the device in `win_x` and `win_y`. Returns
    /// `nil` if the window tree under `device` is not known to GDK (for example, belongs to another application).
    /// 
    /// As a slave device coordinates are those of its master pointer, This
    /// function may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them, see `gdk_device_grab()`.
    @inlinable func getWindowAtPosition(winX win_x: UnsafeMutablePointer<gint>! = nil, winY win_y: UnsafeMutablePointer<gint>! = nil) -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_device_get_window_at_position(device_ptr, win_x, win_y)))
        return rv
    }

    /// Obtains the window underneath `device`, returning the location of the device in `win_x` and `win_y` in
    /// double precision. Returns `nil` if the window tree under `device` is not known to GDK (for example,
    /// belongs to another application).
    /// 
    /// As a slave device coordinates are those of its master pointer, This
    /// function may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them, see `gdk_device_grab()`.
    @inlinable func getWindowAtPositionDouble(winX win_x: UnsafeMutablePointer<gdouble>! = nil, winY win_y: UnsafeMutablePointer<gdouble>! = nil) -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_device_get_window_at_position_double(device_ptr, win_x, win_y)))
        return rv
    }

    /// Grabs the device so that all events coming from this device are passed to
    /// this application until the device is ungrabbed with `gdk_device_ungrab()`,
    /// or the window becomes unviewable. This overrides any previous grab on the device
    /// by this client.
    /// 
    /// Note that `device` and `window` need to be on the same display.
    /// 
    /// Device grabs are used for operations which need complete control over the
    /// given device events (either pointer or keyboard). For example in GTK+ this
    /// is used for Drag and Drop operations, popup menus and such.
    /// 
    /// Note that if the event mask of an X window has selected both button press
    /// and button release events, then a button press event will cause an automatic
    /// pointer grab until the button is released. X does this automatically since
    /// most applications expect to receive button press and release events in pairs.
    /// It is equivalent to a pointer grab on the window with `owner_events` set to
    /// `true`.
    /// 
    /// If you set up anything at the time you take the grab that needs to be
    /// cleaned up when the grab ends, you should handle the `GdkEventGrabBroken`
    /// events that are emitted when the grab ends unvoluntarily.
    ///
    /// **grab is deprecated:**
    /// Use gdk_seat_grab() instead.
    @available(*, deprecated) @inlinable func grab<CursorT: CursorProtocol, WindowT: WindowProtocol>(window: WindowT, grabOwnership grab_ownership: GdkGrabOwnership, ownerEvents owner_events: Bool, eventMask event_mask: EventMask, cursor: CursorT? = nil, time_: guint32) -> GdkGrabStatus {
        let rv = gdk_device_grab(device_ptr, window.window_ptr, grab_ownership, gboolean((owner_events) ? 1 : 0), event_mask.value, cursor?.cursor_ptr, time_)
        return rv
    }

    /// Returns a `GList` of `GdkAtoms`, containing the labels for
    /// the axes that `device` currently has.
    @inlinable func listAxes() -> GLib.ListRef! {
        let rv = ListRef(gconstpointer: gconstpointer(gdk_device_list_axes(device_ptr)))
        return rv
    }

    /// If the device if of type `GDK_DEVICE_TYPE_MASTER`, it will return
    /// the list of slave devices attached to it, otherwise it will return
    /// `nil`
    @inlinable func listSlaveDevices() -> GLib.ListRef! {
        let rv = ListRef(gconstpointer: gconstpointer(gdk_device_list_slave_devices(device_ptr)))
        return rv
    }

    /// Specifies how an axis of a device is used.
    @inlinable func setAxisUse(index_: Int, use: GdkAxisUse) {
        gdk_device_set_axis_use(device_ptr, guint(index_), use)
    
    }

    /// Specifies the X key event to generate when a macro button of a device
    /// is pressed.
    @inlinable func setKey(index_: Int, keyval: Int, modifiers: ModifierType) {
        gdk_device_set_key(device_ptr, guint(index_), guint(keyval), modifiers.value)
    
    }

    /// Sets a the mode of an input device. The mode controls if the
    /// device is active and whether the device’s range is mapped to the
    /// entire screen or to a single window.
    /// 
    /// Note: This is only meaningful for floating devices, master devices (and
    /// slaves connected to these) drive the pointer cursor, which is not limited
    /// by the input mode.
    @inlinable func set(mode: GdkInputMode) -> Bool {
        let rv = ((gdk_device_set_mode(device_ptr, mode)) != 0)
        return rv
    }

    /// Release any grab on `device`.
    ///
    /// **ungrab is deprecated:**
    /// Use gdk_seat_ungrab() instead.
    @available(*, deprecated) @inlinable func ungrab(time_: guint32) {
        gdk_device_ungrab(device_ptr, time_)
    
    }

    /// Warps `device` in `display` to the point `x`,`y` on
    /// the screen `screen`, unless the device is confined
    /// to a window by a grab, in which case it will be moved
    /// as far as allowed by the grab. Warping the pointer
    /// creates events as if the user had moved the mouse
    /// instantaneously to the destination.
    /// 
    /// Note that the pointer should normally be under the
    /// control of the user. This function was added to cover
    /// some rare use cases like keyboard navigation support
    /// for the color picker in the `GtkColorSelectionDialog`.
    @inlinable func warp<ScreenT: ScreenProtocol>(screen: ScreenT, x: Int, y: Int) {
        gdk_device_warp(device_ptr, screen.screen_ptr, gint(x), gint(y))
    
    }

    /// Determines information about the current keyboard grab.
    /// This is not public API and must not be used by applications.
    ///
    /// **grab_info_libgtk_only is deprecated:**
    /// The symbol was never meant to be used outside
    ///   of GTK+
    @available(*, deprecated) @inlinable func grabInfoLibgtkOnly<DisplayT: DisplayProtocol>(display: DisplayT, grabWindow grab_window: UnsafeMutablePointer<UnsafeMutablePointer<GdkWindow>?>!, ownerEvents owner_events: UnsafeMutablePointer<gboolean>!) -> Bool {
        let rv = ((gdk_device_grab_info_libgtk_only(display.display_ptr, device_ptr, grab_window, owner_events)) != 0)
        return rv
    }

    /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source.
    @inlinable func dragBeginForDevice<ListT: ListProtocol, WindowT: WindowProtocol>(window: WindowT, targets: ListT) -> DragContextRef! {
        let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin_for_device(window.window_ptr, device_ptr, targets._ptr)))
        return rv
    }

    /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source.
    @inlinable func dragBeginFromPoint<ListT: ListProtocol, WindowT: WindowProtocol>(window: WindowT, targets: ListT, xRoot x_root: Int, yRoot y_root: Int) -> DragContextRef! {
        let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin_from_point(window.window_ptr, device_ptr, targets._ptr, gint(x_root), gint(y_root))))
        return rv
    }
    /// Returns the associated device to `device`, if `device` is of type
    /// `GDK_DEVICE_TYPE_MASTER`, it will return the paired pointer or
    /// keyboard.
    /// 
    /// If `device` is of type `GDK_DEVICE_TYPE_SLAVE`, it will return
    /// the master device to which `device` is attached to.
    /// 
    /// If `device` is of type `GDK_DEVICE_TYPE_FLOATING`, `nil` will be
    /// returned, as there is no associated device.
    @inlinable var associatedDevice: DeviceRef! {
        /// Returns the associated device to `device`, if `device` is of type
        /// `GDK_DEVICE_TYPE_MASTER`, it will return the paired pointer or
        /// keyboard.
        /// 
        /// If `device` is of type `GDK_DEVICE_TYPE_SLAVE`, it will return
        /// the master device to which `device` is attached to.
        /// 
        /// If `device` is of type `GDK_DEVICE_TYPE_FLOATING`, `nil` will be
        /// returned, as there is no associated device.
        get {
            guard let rv = DeviceRef(gconstpointer: gconstpointer(gdk_device_get_associated_device(device_ptr))) else { return nil }
            return rv
        }
    }

    /// The axes currently available for this device.
    @inlinable var axes: AxisFlags {
        /// Returns the axes currently available on the device.
        get {
            let rv = AxisFlags(gdk_device_get_axes(device_ptr))
            return rv
        }
    }

    /// Returns the device type for `device`.
    @inlinable var deviceType: GdkDeviceType {
        /// Returns the device type for `device`.
        get {
            let rv = gdk_device_get_device_type(device_ptr)
            return rv
        }
    }

    /// The `GdkDisplay` the `GdkDevice` pertains to.
    @inlinable var display: DisplayRef! {
        /// Returns the `GdkDisplay` to which `device` pertains.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_device_get_display(device_ptr)))
            return rv
        }
    }

    /// Determines whether the pointer follows device motion.
    /// This is not meaningful for keyboard devices, which don't have a pointer.
    @inlinable var hasCursor: Bool {
        /// Determines whether the pointer follows device motion.
        /// This is not meaningful for keyboard devices, which don't have a pointer.
        get {
            let rv = ((gdk_device_get_has_cursor(device_ptr)) != 0)
            return rv
        }
    }

    /// Gets information about which window the given pointer device is in, based on events
    /// that have been received so far from the display server. If another application
    /// has a pointer grab, or this application has a grab with owner_events = `false`,
    /// `nil` may be returned even if the pointer is physically over one of this
    /// application's windows.
    @inlinable var lastEventWindow: WindowRef! {
        /// Gets information about which window the given pointer device is in, based on events
        /// that have been received so far from the display server. If another application
        /// has a pointer grab, or this application has a grab with owner_events = `false`,
        /// `nil` may be returned even if the pointer is physically over one of this
        /// application's windows.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_device_get_last_event_window(device_ptr)))
            return rv
        }
    }

    /// Determines the mode of the device.
    @inlinable var mode: GdkInputMode {
        /// Determines the mode of the device.
        get {
            let rv = gdk_device_get_mode(device_ptr)
            return rv
        }
        /// Sets a the mode of an input device. The mode controls if the
        /// device is active and whether the device’s range is mapped to the
        /// entire screen or to a single window.
        /// 
        /// Note: This is only meaningful for floating devices, master devices (and
        /// slaves connected to these) drive the pointer cursor, which is not limited
        /// by the input mode.
        nonmutating set {
            _ = gdk_device_set_mode(device_ptr, newValue)
        }
    }

    /// Returns the number of axes the device currently has.
    @inlinable var nAxes: Int {
        /// Returns the number of axes the device currently has.
        get {
            let rv = Int(gdk_device_get_n_axes(device_ptr))
            return rv
        }
    }

    /// Returns the number of keys the device currently has.
    @inlinable var nKeys: Int {
        /// Returns the number of keys the device currently has.
        get {
            let rv = Int(gdk_device_get_n_keys(device_ptr))
            return rv
        }
    }

    /// The device name.
    @inlinable var name: String! {
        /// Determines the name of the device.
        get {
            let rv = gdk_device_get_name(device_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns the product ID of this device, or `nil` if this information couldn't
    /// be obtained. This ID is retrieved from the device, and is thus constant for
    /// it. See `gdk_device_get_vendor_id()` for more information.
    @inlinable var productId: String! {
        /// Returns the product ID of this device, or `nil` if this information couldn't
        /// be obtained. This ID is retrieved from the device, and is thus constant for
        /// it. See `gdk_device_get_vendor_id()` for more information.
        get {
            let rv = gdk_device_get_product_id(device_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// `GdkSeat` of this device.
    @inlinable var seat: SeatRef! {
        /// Returns the `GdkSeat` the device belongs to.
        get {
            let rv = SeatRef(gconstpointer: gconstpointer(gdk_device_get_seat(device_ptr)))
            return rv
        }
    }

    /// Determines the type of the device.
    @inlinable var source: GdkInputSource {
        /// Determines the type of the device.
        get {
            let rv = gdk_device_get_source(device_ptr)
            return rv
        }
    }

    /// Returns the vendor ID of this device, or `nil` if this information couldn't
    /// be obtained. This ID is retrieved from the device, and is thus constant for
    /// it.
    /// 
    /// This function, together with `gdk_device_get_product_id()`, can be used to eg.
    /// compose `GSettings` paths to store settings for this device.
    /// 
    /// (C Language Example):
    /// ```C
    ///  static GSettings *
    ///  get_device_settings (GdkDevice *device)
    ///  {
    ///    const gchar *vendor, *product;
    ///    GSettings *settings;
    ///    GdkDevice *device;
    ///    gchar *path;
    /// 
    ///    vendor = gdk_device_get_vendor_id (device);
    ///    product = gdk_device_get_product_id (device);
    /// 
    ///    path = g_strdup_printf ("/org/example/app/devices/%s:%s/", vendor, product);
    ///    settings = g_settings_new_with_path (DEVICE_SCHEMA, path);
    ///    g_free (path);
    /// 
    ///    return settings;
    ///  }
    /// ```
    /// 
    @inlinable var vendorId: String! {
        /// Returns the vendor ID of this device, or `nil` if this information couldn't
        /// be obtained. This ID is retrieved from the device, and is thus constant for
        /// it.
        /// 
        /// This function, together with `gdk_device_get_product_id()`, can be used to eg.
        /// compose `GSettings` paths to store settings for this device.
        /// 
        /// (C Language Example):
        /// ```C
        ///  static GSettings *
        ///  get_device_settings (GdkDevice *device)
        ///  {
        ///    const gchar *vendor, *product;
        ///    GSettings *settings;
        ///    GdkDevice *device;
        ///    gchar *path;
        /// 
        ///    vendor = gdk_device_get_vendor_id (device);
        ///    product = gdk_device_get_product_id (device);
        /// 
        ///    path = g_strdup_printf ("/org/example/app/devices/%s:%s/", vendor, product);
        ///    settings = g_settings_new_with_path (DEVICE_SCHEMA, path);
        ///    g_free (path);
        /// 
        ///    return settings;
        ///  }
        /// ```
        /// 
        get {
            let rv = gdk_device_get_vendor_id(device_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - DeviceManager Class

/// The `DeviceManagerProtocol` protocol exposes the methods and properties of an underlying `GdkDeviceManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DeviceManager`.
/// Alternatively, use `DeviceManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// In addition to a single pointer and keyboard for user interface input,
/// GDK contains support for a variety of input devices, including graphics
/// tablets, touchscreens and multiple pointers/keyboards interacting
/// simultaneously with the user interface. Such input devices often have
/// additional features, such as sub-pixel positioning information and
/// additional device-dependent information.
/// 
/// In order to query the device hierarchy and be aware of changes in the
/// device hierarchy (such as virtual devices being created or removed, or
/// physical devices being plugged or unplugged), GDK provides
/// `GdkDeviceManager`.
/// 
/// By default, and if the platform supports it, GDK is aware of multiple
/// keyboard/pointer pairs and multitouch devices. This behavior can be
/// changed by calling `gdk_disable_multidevice()` before `gdk_display_open()`.
/// There should rarely be a need to do that though, since GDK defaults
/// to a compatibility mode in which it will emit just one enter/leave
/// event pair for all devices on a window. To enable per-device
/// enter/leave events and other multi-pointer interaction features,
/// `gdk_window_set_support_multidevice()` must be called on
/// `GdkWindows` (or `gtk_widget_set_support_multidevice()` on widgets).
/// window. See the `gdk_window_set_support_multidevice()` documentation
/// for more information.
/// 
/// On X11, multi-device support is implemented through XInput 2.
/// Unless `gdk_disable_multidevice()` is called, the XInput 2
/// `GdkDeviceManager` implementation will be used as the input source.
/// Otherwise either the core or XInput 1 implementations will be used.
/// 
/// For simple applications that don’t have any special interest in
/// input devices, the so-called “client pointer”
/// provides a reasonable approximation to a simple setup with a single
/// pointer and keyboard. The device that has been set as the client
/// pointer can be accessed via `gdk_device_manager_get_client_pointer()`.
/// 
/// Conceptually, in multidevice mode there are 2 device types. Virtual
/// devices (or master devices) are represented by the pointer cursors
/// and keyboard foci that are seen on the screen. Physical devices (or
/// slave devices) represent the hardware that is controlling the virtual
/// devices, and thus have no visible cursor on the screen.
/// 
/// Virtual devices are always paired, so there is a keyboard device for every
/// pointer device. Associations between devices may be inspected through
/// `gdk_device_get_associated_device()`.
/// 
/// There may be several virtual devices, and several physical devices could
/// be controlling each of these virtual devices. Physical devices may also
/// be “floating”, which means they are not attached to any virtual device.
/// 
/// # Master and slave devices
/// 
/// ```
/// carlos@sacarino:~$ xinput list
/// ⎡ Virtual core pointer                          id=2    [master pointer  (3)]
/// ⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Pen stylus                 id=10   [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Finger touch               id=11   [slave  pointer  (2)]
/// ⎜   ↳ SynPS/2 Synaptics TouchPad                id=13   [slave  pointer  (2)]
/// ⎜   ↳ TPPS/2 IBM TrackPoint                     id=14   [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Pen eraser                 id=16   [slave  pointer  (2)]
/// ⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
///     ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
///     ↳ Power Button                              id=6    [slave  keyboard (3)]
///     ↳ Video Bus                                 id=7    [slave  keyboard (3)]
///     ↳ Sleep Button                              id=8    [slave  keyboard (3)]
///     ↳ Integrated Camera                         id=9    [slave  keyboard (3)]
///     ↳ AT Translated Set 2 keyboard              id=12   [slave  keyboard (3)]
///     ↳ ThinkPad Extra Buttons                    id=15   [slave  keyboard (3)]
/// ```
/// 
/// By default, GDK will automatically listen for events coming from all
/// master devices, setting the `GdkDevice` for all events coming from input
/// devices. Events containing device information are `GDK_MOTION_NOTIFY`,
/// `GDK_BUTTON_PRESS`, `GDK_2BUTTON_PRESS`, `GDK_3BUTTON_PRESS`,
/// `GDK_BUTTON_RELEASE`, `GDK_SCROLL`, `GDK_KEY_PRESS`, `GDK_KEY_RELEASE`,
/// `GDK_ENTER_NOTIFY`, `GDK_LEAVE_NOTIFY`, `GDK_FOCUS_CHANGE`,
/// `GDK_PROXIMITY_IN`, `GDK_PROXIMITY_OUT`, `GDK_DRAG_ENTER`, `GDK_DRAG_LEAVE`,
/// `GDK_DRAG_MOTION`, `GDK_DRAG_STATUS`, `GDK_DROP_START`, `GDK_DROP_FINISHED`
/// and `GDK_GRAB_BROKEN`. When dealing with an event on a master device,
/// it is possible to get the source (slave) device that the event originated
/// from via `gdk_event_get_source_device()`.
/// 
/// On a standard session, all physical devices are connected by default to
/// the "Virtual Core Pointer/Keyboard" master devices, hence routing all events
/// through these. This behavior is only modified by device grabs, where the
/// slave device is temporarily detached for as long as the grab is held, and
/// more permanently by user modifications to the device hierarchy.
/// 
/// On certain application specific setups, it may make sense
/// to detach a physical device from its master pointer, and mapping it to
/// an specific window. This can be achieved by the combination of
/// `gdk_device_grab()` and `gdk_device_set_mode()`.
/// 
/// In order to listen for events coming from devices
/// other than a virtual device, `gdk_window_set_device_events()` must be
/// called. Generally, this function can be used to modify the event mask
/// for any given device.
/// 
/// Input devices may also provide additional information besides X/Y.
/// For example, graphics tablets may also provide pressure and X/Y tilt
/// information. This information is device-dependent, and may be
/// queried through `gdk_device_get_axis()`. In multidevice mode, virtual
/// devices will change axes in order to always represent the physical
/// device that is routing events through it. Whenever the physical device
/// changes, the `GdkDevice:n`-axes property will be notified, and
/// `gdk_device_list_axes()` will return the new device axes.
/// 
/// Devices may also have associated “keys” or
/// macro buttons. Such keys can be globally set to map into normal X
/// keyboard events. The mapping is set using `gdk_device_set_key()`.
/// 
/// In GTK+ 3.20, a new `GdkSeat` object has been introduced that
/// supersedes `GdkDeviceManager` and should be preferred in newly
/// written code.
public protocol DeviceManagerProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDeviceManager` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDeviceManager` instance.
    var device_manager_ptr: UnsafeMutablePointer<GdkDeviceManager>! { get }

}

/// The `DeviceManagerRef` type acts as a lightweight Swift reference to an underlying `GdkDeviceManager` instance.
/// It exposes methods that can operate on this data type through `DeviceManagerProtocol` conformance.
/// Use `DeviceManagerRef` only as an `unowned` reference to an existing `GdkDeviceManager` instance.
///
/// In addition to a single pointer and keyboard for user interface input,
/// GDK contains support for a variety of input devices, including graphics
/// tablets, touchscreens and multiple pointers/keyboards interacting
/// simultaneously with the user interface. Such input devices often have
/// additional features, such as sub-pixel positioning information and
/// additional device-dependent information.
/// 
/// In order to query the device hierarchy and be aware of changes in the
/// device hierarchy (such as virtual devices being created or removed, or
/// physical devices being plugged or unplugged), GDK provides
/// `GdkDeviceManager`.
/// 
/// By default, and if the platform supports it, GDK is aware of multiple
/// keyboard/pointer pairs and multitouch devices. This behavior can be
/// changed by calling `gdk_disable_multidevice()` before `gdk_display_open()`.
/// There should rarely be a need to do that though, since GDK defaults
/// to a compatibility mode in which it will emit just one enter/leave
/// event pair for all devices on a window. To enable per-device
/// enter/leave events and other multi-pointer interaction features,
/// `gdk_window_set_support_multidevice()` must be called on
/// `GdkWindows` (or `gtk_widget_set_support_multidevice()` on widgets).
/// window. See the `gdk_window_set_support_multidevice()` documentation
/// for more information.
/// 
/// On X11, multi-device support is implemented through XInput 2.
/// Unless `gdk_disable_multidevice()` is called, the XInput 2
/// `GdkDeviceManager` implementation will be used as the input source.
/// Otherwise either the core or XInput 1 implementations will be used.
/// 
/// For simple applications that don’t have any special interest in
/// input devices, the so-called “client pointer”
/// provides a reasonable approximation to a simple setup with a single
/// pointer and keyboard. The device that has been set as the client
/// pointer can be accessed via `gdk_device_manager_get_client_pointer()`.
/// 
/// Conceptually, in multidevice mode there are 2 device types. Virtual
/// devices (or master devices) are represented by the pointer cursors
/// and keyboard foci that are seen on the screen. Physical devices (or
/// slave devices) represent the hardware that is controlling the virtual
/// devices, and thus have no visible cursor on the screen.
/// 
/// Virtual devices are always paired, so there is a keyboard device for every
/// pointer device. Associations between devices may be inspected through
/// `gdk_device_get_associated_device()`.
/// 
/// There may be several virtual devices, and several physical devices could
/// be controlling each of these virtual devices. Physical devices may also
/// be “floating”, which means they are not attached to any virtual device.
/// 
/// # Master and slave devices
/// 
/// ```
/// carlos@sacarino:~$ xinput list
/// ⎡ Virtual core pointer                          id=2    [master pointer  (3)]
/// ⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Pen stylus                 id=10   [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Finger touch               id=11   [slave  pointer  (2)]
/// ⎜   ↳ SynPS/2 Synaptics TouchPad                id=13   [slave  pointer  (2)]
/// ⎜   ↳ TPPS/2 IBM TrackPoint                     id=14   [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Pen eraser                 id=16   [slave  pointer  (2)]
/// ⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
///     ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
///     ↳ Power Button                              id=6    [slave  keyboard (3)]
///     ↳ Video Bus                                 id=7    [slave  keyboard (3)]
///     ↳ Sleep Button                              id=8    [slave  keyboard (3)]
///     ↳ Integrated Camera                         id=9    [slave  keyboard (3)]
///     ↳ AT Translated Set 2 keyboard              id=12   [slave  keyboard (3)]
///     ↳ ThinkPad Extra Buttons                    id=15   [slave  keyboard (3)]
/// ```
/// 
/// By default, GDK will automatically listen for events coming from all
/// master devices, setting the `GdkDevice` for all events coming from input
/// devices. Events containing device information are `GDK_MOTION_NOTIFY`,
/// `GDK_BUTTON_PRESS`, `GDK_2BUTTON_PRESS`, `GDK_3BUTTON_PRESS`,
/// `GDK_BUTTON_RELEASE`, `GDK_SCROLL`, `GDK_KEY_PRESS`, `GDK_KEY_RELEASE`,
/// `GDK_ENTER_NOTIFY`, `GDK_LEAVE_NOTIFY`, `GDK_FOCUS_CHANGE`,
/// `GDK_PROXIMITY_IN`, `GDK_PROXIMITY_OUT`, `GDK_DRAG_ENTER`, `GDK_DRAG_LEAVE`,
/// `GDK_DRAG_MOTION`, `GDK_DRAG_STATUS`, `GDK_DROP_START`, `GDK_DROP_FINISHED`
/// and `GDK_GRAB_BROKEN`. When dealing with an event on a master device,
/// it is possible to get the source (slave) device that the event originated
/// from via `gdk_event_get_source_device()`.
/// 
/// On a standard session, all physical devices are connected by default to
/// the "Virtual Core Pointer/Keyboard" master devices, hence routing all events
/// through these. This behavior is only modified by device grabs, where the
/// slave device is temporarily detached for as long as the grab is held, and
/// more permanently by user modifications to the device hierarchy.
/// 
/// On certain application specific setups, it may make sense
/// to detach a physical device from its master pointer, and mapping it to
/// an specific window. This can be achieved by the combination of
/// `gdk_device_grab()` and `gdk_device_set_mode()`.
/// 
/// In order to listen for events coming from devices
/// other than a virtual device, `gdk_window_set_device_events()` must be
/// called. Generally, this function can be used to modify the event mask
/// for any given device.
/// 
/// Input devices may also provide additional information besides X/Y.
/// For example, graphics tablets may also provide pressure and X/Y tilt
/// information. This information is device-dependent, and may be
/// queried through `gdk_device_get_axis()`. In multidevice mode, virtual
/// devices will change axes in order to always represent the physical
/// device that is routing events through it. Whenever the physical device
/// changes, the `GdkDevice:n`-axes property will be notified, and
/// `gdk_device_list_axes()` will return the new device axes.
/// 
/// Devices may also have associated “keys” or
/// macro buttons. Such keys can be globally set to map into normal X
/// keyboard events. The mapping is set using `gdk_device_set_key()`.
/// 
/// In GTK+ 3.20, a new `GdkSeat` object has been introduced that
/// supersedes `GdkDeviceManager` and should be preferred in newly
/// written code.
public struct DeviceManagerRef: DeviceManagerProtocol {
        /// Untyped pointer to the underlying `GdkDeviceManager` instance.
    /// For type-safe access, use the generated, typed pointer `device_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DeviceManagerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDeviceManager>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDeviceManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDeviceManager>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDeviceManager>?) {
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

    /// Reference intialiser for a related type that implements `DeviceManagerProtocol`
    @inlinable init<T: DeviceManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DeviceManager` type acts as a reference-counted owner of an underlying `GdkDeviceManager` instance.
/// It provides the methods that can operate on this data type through `DeviceManagerProtocol` conformance.
/// Use `DeviceManager` as a strong reference or owner of a `GdkDeviceManager` instance.
///
/// In addition to a single pointer and keyboard for user interface input,
/// GDK contains support for a variety of input devices, including graphics
/// tablets, touchscreens and multiple pointers/keyboards interacting
/// simultaneously with the user interface. Such input devices often have
/// additional features, such as sub-pixel positioning information and
/// additional device-dependent information.
/// 
/// In order to query the device hierarchy and be aware of changes in the
/// device hierarchy (such as virtual devices being created or removed, or
/// physical devices being plugged or unplugged), GDK provides
/// `GdkDeviceManager`.
/// 
/// By default, and if the platform supports it, GDK is aware of multiple
/// keyboard/pointer pairs and multitouch devices. This behavior can be
/// changed by calling `gdk_disable_multidevice()` before `gdk_display_open()`.
/// There should rarely be a need to do that though, since GDK defaults
/// to a compatibility mode in which it will emit just one enter/leave
/// event pair for all devices on a window. To enable per-device
/// enter/leave events and other multi-pointer interaction features,
/// `gdk_window_set_support_multidevice()` must be called on
/// `GdkWindows` (or `gtk_widget_set_support_multidevice()` on widgets).
/// window. See the `gdk_window_set_support_multidevice()` documentation
/// for more information.
/// 
/// On X11, multi-device support is implemented through XInput 2.
/// Unless `gdk_disable_multidevice()` is called, the XInput 2
/// `GdkDeviceManager` implementation will be used as the input source.
/// Otherwise either the core or XInput 1 implementations will be used.
/// 
/// For simple applications that don’t have any special interest in
/// input devices, the so-called “client pointer”
/// provides a reasonable approximation to a simple setup with a single
/// pointer and keyboard. The device that has been set as the client
/// pointer can be accessed via `gdk_device_manager_get_client_pointer()`.
/// 
/// Conceptually, in multidevice mode there are 2 device types. Virtual
/// devices (or master devices) are represented by the pointer cursors
/// and keyboard foci that are seen on the screen. Physical devices (or
/// slave devices) represent the hardware that is controlling the virtual
/// devices, and thus have no visible cursor on the screen.
/// 
/// Virtual devices are always paired, so there is a keyboard device for every
/// pointer device. Associations between devices may be inspected through
/// `gdk_device_get_associated_device()`.
/// 
/// There may be several virtual devices, and several physical devices could
/// be controlling each of these virtual devices. Physical devices may also
/// be “floating”, which means they are not attached to any virtual device.
/// 
/// # Master and slave devices
/// 
/// ```
/// carlos@sacarino:~$ xinput list
/// ⎡ Virtual core pointer                          id=2    [master pointer  (3)]
/// ⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Pen stylus                 id=10   [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Finger touch               id=11   [slave  pointer  (2)]
/// ⎜   ↳ SynPS/2 Synaptics TouchPad                id=13   [slave  pointer  (2)]
/// ⎜   ↳ TPPS/2 IBM TrackPoint                     id=14   [slave  pointer  (2)]
/// ⎜   ↳ Wacom ISDv4 E6 Pen eraser                 id=16   [slave  pointer  (2)]
/// ⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
///     ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
///     ↳ Power Button                              id=6    [slave  keyboard (3)]
///     ↳ Video Bus                                 id=7    [slave  keyboard (3)]
///     ↳ Sleep Button                              id=8    [slave  keyboard (3)]
///     ↳ Integrated Camera                         id=9    [slave  keyboard (3)]
///     ↳ AT Translated Set 2 keyboard              id=12   [slave  keyboard (3)]
///     ↳ ThinkPad Extra Buttons                    id=15   [slave  keyboard (3)]
/// ```
/// 
/// By default, GDK will automatically listen for events coming from all
/// master devices, setting the `GdkDevice` for all events coming from input
/// devices. Events containing device information are `GDK_MOTION_NOTIFY`,
/// `GDK_BUTTON_PRESS`, `GDK_2BUTTON_PRESS`, `GDK_3BUTTON_PRESS`,
/// `GDK_BUTTON_RELEASE`, `GDK_SCROLL`, `GDK_KEY_PRESS`, `GDK_KEY_RELEASE`,
/// `GDK_ENTER_NOTIFY`, `GDK_LEAVE_NOTIFY`, `GDK_FOCUS_CHANGE`,
/// `GDK_PROXIMITY_IN`, `GDK_PROXIMITY_OUT`, `GDK_DRAG_ENTER`, `GDK_DRAG_LEAVE`,
/// `GDK_DRAG_MOTION`, `GDK_DRAG_STATUS`, `GDK_DROP_START`, `GDK_DROP_FINISHED`
/// and `GDK_GRAB_BROKEN`. When dealing with an event on a master device,
/// it is possible to get the source (slave) device that the event originated
/// from via `gdk_event_get_source_device()`.
/// 
/// On a standard session, all physical devices are connected by default to
/// the "Virtual Core Pointer/Keyboard" master devices, hence routing all events
/// through these. This behavior is only modified by device grabs, where the
/// slave device is temporarily detached for as long as the grab is held, and
/// more permanently by user modifications to the device hierarchy.
/// 
/// On certain application specific setups, it may make sense
/// to detach a physical device from its master pointer, and mapping it to
/// an specific window. This can be achieved by the combination of
/// `gdk_device_grab()` and `gdk_device_set_mode()`.
/// 
/// In order to listen for events coming from devices
/// other than a virtual device, `gdk_window_set_device_events()` must be
/// called. Generally, this function can be used to modify the event mask
/// for any given device.
/// 
/// Input devices may also provide additional information besides X/Y.
/// For example, graphics tablets may also provide pressure and X/Y tilt
/// information. This information is device-dependent, and may be
/// queried through `gdk_device_get_axis()`. In multidevice mode, virtual
/// devices will change axes in order to always represent the physical
/// device that is routing events through it. Whenever the physical device
/// changes, the `GdkDevice:n`-axes property will be notified, and
/// `gdk_device_list_axes()` will return the new device axes.
/// 
/// Devices may also have associated “keys” or
/// macro buttons. Such keys can be globally set to map into normal X
/// keyboard events. The mapping is set using `gdk_device_set_key()`.
/// 
/// In GTK+ 3.20, a new `GdkSeat` object has been introduced that
/// supersedes `GdkDeviceManager` and should be preferred in newly
/// written code.
open class DeviceManager: Object, DeviceManagerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDeviceManager>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDeviceManager>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceManager` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDeviceManager>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDeviceManager>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDeviceManager`.
    /// i.e., ownership is transferred to the `DeviceManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDeviceManager>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DeviceManagerProtocol`
    /// Will retain `GdkDeviceManager`.
    /// - Parameter other: an instance of a related type that implements `DeviceManagerProtocol`
    @inlinable public init<T: DeviceManagerProtocol>(deviceManager other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DeviceManagerPropertyName: String, PropertyNameProtocol {
    case display = "display"
}

public extension DeviceManagerProtocol {
    /// Bind a `DeviceManagerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DeviceManagerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DeviceManager property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DeviceManagerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DeviceManager property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DeviceManagerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DeviceManagerSignalName: String, SignalNameProtocol {
    /// The `device`-added signal is emitted either when a new master
    /// pointer is created, or when a slave (Hardware) input device
    /// is plugged in.
    case deviceAdded = "device-added"
    /// The `device`-changed signal is emitted whenever a device
    /// has changed in the hierarchy, either slave devices being
    /// disconnected from their master device or connected to
    /// another one, or master devices being added or removed
    /// a slave device.
    /// 
    /// If a slave device is detached from all master devices
    /// (`gdk_device_get_associated_device()` returns `nil`), its
    /// `GdkDeviceType` will change to `GDK_DEVICE_TYPE_FLOATING`,
    /// if it's attached, it will change to `GDK_DEVICE_TYPE_SLAVE`.
    case deviceChanged = "device-changed"
    /// The `device`-removed signal is emitted either when a master
    /// pointer is removed, or when a slave (Hardware) input device
    /// is unplugged.
    case deviceRemoved = "device-removed"
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
    case notifyDisplay = "notify::display"
}

public extension DeviceManagerProtocol {
    /// Connect a `DeviceManagerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DeviceManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: DeviceManager Class: DeviceManagerProtocol extension (methods and fields)
public extension DeviceManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDeviceManager` instance.
    @inlinable var device_manager_ptr: UnsafeMutablePointer<GdkDeviceManager>! { return ptr?.assumingMemoryBound(to: GdkDeviceManager.self) }

    /// Returns the client pointer, that is, the master pointer that acts as the core pointer
    /// for this application. In X11, window managers may change this depending on the interaction
    /// pattern under the presence of several pointers.
    /// 
    /// You should use this function seldomly, only in code that isn’t triggered by a `GdkEvent`
    /// and there aren’t other means to get a meaningful `GdkDevice` to operate on.
    ///
    /// **get_client_pointer is deprecated:**
    /// Use gdk_seat_get_pointer() instead.
    @available(*, deprecated) @inlinable func getClientPointer() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_device_manager_get_client_pointer(device_manager_ptr)))
        return rv
    }

    /// Gets the `GdkDisplay` associated to `device_manager`.
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_device_manager_get_display(device_manager_ptr)))
        return rv
    }

    /// Returns the list of devices of type `type` currently attached to
    /// `device_manager`.
    ///
    /// **list_devices is deprecated:**
    /// , use gdk_seat_get_pointer(), gdk_seat_get_keyboard()
    ///             and gdk_seat_get_slaves() instead.
    @available(*, deprecated) @inlinable func listDevices(type: GdkDeviceType) -> GLib.ListRef! {
        let rv = ListRef(gconstpointer: gconstpointer(gdk_device_manager_list_devices(device_manager_ptr, type)))
        return rv
    }
    /// Returns the client pointer, that is, the master pointer that acts as the core pointer
    /// for this application. In X11, window managers may change this depending on the interaction
    /// pattern under the presence of several pointers.
    /// 
    /// You should use this function seldomly, only in code that isn’t triggered by a `GdkEvent`
    /// and there aren’t other means to get a meaningful `GdkDevice` to operate on.
    ///
    /// **get_client_pointer is deprecated:**
    /// Use gdk_seat_get_pointer() instead.
    @inlinable var clientPointer: DeviceRef! {
        /// Returns the client pointer, that is, the master pointer that acts as the core pointer
        /// for this application. In X11, window managers may change this depending on the interaction
        /// pattern under the presence of several pointers.
        /// 
        /// You should use this function seldomly, only in code that isn’t triggered by a `GdkEvent`
        /// and there aren’t other means to get a meaningful `GdkDevice` to operate on.
        ///
        /// **get_client_pointer is deprecated:**
        /// Use gdk_seat_get_pointer() instead.
        @available(*, deprecated) get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_device_manager_get_client_pointer(device_manager_ptr)))
            return rv
        }
    }

    @inlinable var display: DisplayRef! {
        /// Gets the `GdkDisplay` associated to `device_manager`.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_device_manager_get_display(device_manager_ptr)))
            return rv
        }
    }


}



// MARK: - DeviceTool Class

/// The `DeviceToolProtocol` protocol exposes the methods and properties of an underlying `GdkDeviceTool` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DeviceTool`.
/// Alternatively, use `DeviceToolRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DeviceToolProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDeviceTool` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDeviceTool` instance.
    var device_tool_ptr: UnsafeMutablePointer<GdkDeviceTool>! { get }

}

/// The `DeviceToolRef` type acts as a lightweight Swift reference to an underlying `GdkDeviceTool` instance.
/// It exposes methods that can operate on this data type through `DeviceToolProtocol` conformance.
/// Use `DeviceToolRef` only as an `unowned` reference to an existing `GdkDeviceTool` instance.
///

public struct DeviceToolRef: DeviceToolProtocol {
        /// Untyped pointer to the underlying `GdkDeviceTool` instance.
    /// For type-safe access, use the generated, typed pointer `device_tool_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DeviceToolRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDeviceTool>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDeviceTool>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDeviceTool>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDeviceTool>?) {
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

    /// Reference intialiser for a related type that implements `DeviceToolProtocol`
    @inlinable init<T: DeviceToolProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DeviceTool` type acts as a reference-counted owner of an underlying `GdkDeviceTool` instance.
/// It provides the methods that can operate on this data type through `DeviceToolProtocol` conformance.
/// Use `DeviceTool` as a strong reference or owner of a `GdkDeviceTool` instance.
///

open class DeviceTool: Object, DeviceToolProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDeviceTool>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDeviceTool>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDeviceTool>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDeviceTool>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDeviceTool`.
    /// i.e., ownership is transferred to the `DeviceTool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDeviceTool>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DeviceToolProtocol`
    /// Will retain `GdkDeviceTool`.
    /// - Parameter other: an instance of a related type that implements `DeviceToolProtocol`
    @inlinable public init<T: DeviceToolProtocol>(deviceTool other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DeviceToolPropertyName: String, PropertyNameProtocol {
    case axes = "axes"
    case hardwareId = "hardware-id"
    case serial = "serial"
    case toolType = "tool-type"
}

public extension DeviceToolProtocol {
    /// Bind a `DeviceToolPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DeviceToolPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DeviceTool property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DeviceToolPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DeviceTool property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DeviceToolPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DeviceToolSignalName: String, SignalNameProtocol {
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
    case notifyAxes = "notify::axes"
    case notifyHardwareId = "notify::hardware-id"
    case notifySerial = "notify::serial"
    case notifyToolType = "notify::tool-type"
}

public extension DeviceToolProtocol {
    /// Connect a `DeviceToolSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DeviceToolSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: DeviceTool Class: DeviceToolProtocol extension (methods and fields)
public extension DeviceToolProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDeviceTool` instance.
    @inlinable var device_tool_ptr: UnsafeMutablePointer<GdkDeviceTool>! { return ptr?.assumingMemoryBound(to: GdkDeviceTool.self) }

    /// Gets the hardware ID of this tool, or 0 if it's not known. When
    /// non-zero, the identificator is unique for the given tool model,
    /// meaning that two identical tools will share the same `hardware_id`,
    /// but will have different serial numbers (see `gdk_device_tool_get_serial()`).
    /// 
    /// This is a more concrete (and device specific) method to identify
    /// a `GdkDeviceTool` than `gdk_device_tool_get_tool_type()`, as a tablet
    /// may support multiple devices with the same `GdkDeviceToolType`,
    /// but having different hardware identificators.
    @inlinable func getHardwareId() -> guint64 {
        let rv = gdk_device_tool_get_hardware_id(device_tool_ptr)
        return rv
    }

    /// Gets the serial of this tool, this value can be used to identify a
    /// physical tool (eg. a tablet pen) across program executions.
    @inlinable func getSerial() -> guint64 {
        let rv = gdk_device_tool_get_serial(device_tool_ptr)
        return rv
    }

    /// Gets the `GdkDeviceToolType` of the tool.
    @inlinable func getToolType() -> GdkDeviceToolType {
        let rv = gdk_device_tool_get_tool_type(device_tool_ptr)
        return rv
    }
    /// Gets the hardware ID of this tool, or 0 if it's not known. When
    /// non-zero, the identificator is unique for the given tool model,
    /// meaning that two identical tools will share the same `hardware_id`,
    /// but will have different serial numbers (see `gdk_device_tool_get_serial()`).
    /// 
    /// This is a more concrete (and device specific) method to identify
    /// a `GdkDeviceTool` than `gdk_device_tool_get_tool_type()`, as a tablet
    /// may support multiple devices with the same `GdkDeviceToolType`,
    /// but having different hardware identificators.
    @inlinable var hardwareId: guint64 {
        /// Gets the hardware ID of this tool, or 0 if it's not known. When
        /// non-zero, the identificator is unique for the given tool model,
        /// meaning that two identical tools will share the same `hardware_id`,
        /// but will have different serial numbers (see `gdk_device_tool_get_serial()`).
        /// 
        /// This is a more concrete (and device specific) method to identify
        /// a `GdkDeviceTool` than `gdk_device_tool_get_tool_type()`, as a tablet
        /// may support multiple devices with the same `GdkDeviceToolType`,
        /// but having different hardware identificators.
        get {
            let rv = gdk_device_tool_get_hardware_id(device_tool_ptr)
            return rv
        }
    }

    @inlinable var serial: guint64 {
        /// Gets the serial of this tool, this value can be used to identify a
        /// physical tool (eg. a tablet pen) across program executions.
        get {
            let rv = gdk_device_tool_get_serial(device_tool_ptr)
            return rv
        }
    }

    /// Gets the `GdkDeviceToolType` of the tool.
    @inlinable var toolType: GdkDeviceToolType {
        /// Gets the `GdkDeviceToolType` of the tool.
        get {
            let rv = gdk_device_tool_get_tool_type(device_tool_ptr)
            return rv
        }
    }


}



// MARK: - Display Class

/// The `DisplayProtocol` protocol exposes the methods and properties of an underlying `GdkDisplay` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Display`.
/// Alternatively, use `DisplayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkDisplay` objects purpose are two fold:
/// 
/// - To manage and provide information about input devices (pointers and keyboards)
/// 
/// - To manage and provide information about the available `GdkScreens`
/// 
/// GdkDisplay objects are the GDK representation of an X Display,
/// which can be described as a workstation consisting of
/// a keyboard, a pointing device (such as a mouse) and one or more
/// screens.
/// It is used to open and keep track of various GdkScreen objects
/// currently instantiated by the application. It is also used to
/// access the `keyboard(s)` and mouse `pointer(s)` of the display.
/// 
/// Most of the input device handling has been factored out into
/// the separate `GdkDeviceManager` object. Every display has a
/// device manager, which you can obtain using
/// `gdk_display_get_device_manager()`.
public protocol DisplayProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDisplay` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDisplay` instance.
    var display_ptr: UnsafeMutablePointer<GdkDisplay>! { get }

}

/// The `DisplayRef` type acts as a lightweight Swift reference to an underlying `GdkDisplay` instance.
/// It exposes methods that can operate on this data type through `DisplayProtocol` conformance.
/// Use `DisplayRef` only as an `unowned` reference to an existing `GdkDisplay` instance.
///
/// `GdkDisplay` objects purpose are two fold:
/// 
/// - To manage and provide information about input devices (pointers and keyboards)
/// 
/// - To manage and provide information about the available `GdkScreens`
/// 
/// GdkDisplay objects are the GDK representation of an X Display,
/// which can be described as a workstation consisting of
/// a keyboard, a pointing device (such as a mouse) and one or more
/// screens.
/// It is used to open and keep track of various GdkScreen objects
/// currently instantiated by the application. It is also used to
/// access the `keyboard(s)` and mouse `pointer(s)` of the display.
/// 
/// Most of the input device handling has been factored out into
/// the separate `GdkDeviceManager` object. Every display has a
/// device manager, which you can obtain using
/// `gdk_display_get_device_manager()`.
public struct DisplayRef: DisplayProtocol {
        /// Untyped pointer to the underlying `GdkDisplay` instance.
    /// For type-safe access, use the generated, typed pointer `display_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DisplayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDisplay>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDisplay>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDisplay>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDisplay>?) {
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

    /// Reference intialiser for a related type that implements `DisplayProtocol`
    @inlinable init<T: DisplayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GdkDisplay`. This is a convenience
    /// function for:
    /// `gdk_display_manager_get_default_display (gdk_display_manager_get ())`.
    @inlinable static func getDefault() -> DisplayRef! {
        guard let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_get_default())) else { return nil }
        return rv
    }

    /// Opens a display.
    @inlinable static func open(displayName display_name: UnsafePointer<gchar>!) -> DisplayRef! {
        guard let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_open(display_name))) else { return nil }
        return rv
    }

    /// Opens the default display specified by command line arguments or
    /// environment variables, sets it as the default display, and returns
    /// it. `gdk_parse_args()` must have been called first. If the default
    /// display has previously been set, simply returns that. An internal
    /// function that should not be used by applications.
    ///
    /// **open_default_libgtk_only is deprecated:**
    /// This symbol was never meant to be used outside
    ///   of GTK+
    @available(*, deprecated) @inlinable static func openDefaultLibgtkOnly() -> DisplayRef! {
        guard let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_open_default_libgtk_only())) else { return nil }
        return rv
    }
}

/// The `Display` type acts as a reference-counted owner of an underlying `GdkDisplay` instance.
/// It provides the methods that can operate on this data type through `DisplayProtocol` conformance.
/// Use `Display` as a strong reference or owner of a `GdkDisplay` instance.
///
/// `GdkDisplay` objects purpose are two fold:
/// 
/// - To manage and provide information about input devices (pointers and keyboards)
/// 
/// - To manage and provide information about the available `GdkScreens`
/// 
/// GdkDisplay objects are the GDK representation of an X Display,
/// which can be described as a workstation consisting of
/// a keyboard, a pointing device (such as a mouse) and one or more
/// screens.
/// It is used to open and keep track of various GdkScreen objects
/// currently instantiated by the application. It is also used to
/// access the `keyboard(s)` and mouse `pointer(s)` of the display.
/// 
/// Most of the input device handling has been factored out into
/// the separate `GdkDeviceManager` object. Every display has a
/// device manager, which you can obtain using
/// `gdk_display_get_device_manager()`.
open class Display: Object, DisplayProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDisplay>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDisplay>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDisplay>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDisplay>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDisplay`.
    /// i.e., ownership is transferred to the `Display` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDisplay>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DisplayProtocol`
    /// Will retain `GdkDisplay`.
    /// - Parameter other: an instance of a related type that implements `DisplayProtocol`
    @inlinable public init<T: DisplayProtocol>(display other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the default `GdkDisplay`. This is a convenience
    /// function for:
    /// `gdk_display_manager_get_default_display (gdk_display_manager_get ())`.
    @inlinable public static func getDefault() -> Display! {
        guard let rv = Display(gconstpointer: gconstpointer(gdk_display_get_default())) else { return nil }
        return rv
    }

    /// Opens a display.
    @inlinable public static func open(displayName display_name: UnsafePointer<gchar>!) -> Display! {
        guard let rv = Display(gconstpointer: gconstpointer(gdk_display_open(display_name))) else { return nil }
        return rv
    }

    /// Opens the default display specified by command line arguments or
    /// environment variables, sets it as the default display, and returns
    /// it. `gdk_parse_args()` must have been called first. If the default
    /// display has previously been set, simply returns that. An internal
    /// function that should not be used by applications.
    ///
    /// **open_default_libgtk_only is deprecated:**
    /// This symbol was never meant to be used outside
    ///   of GTK+
    @available(*, deprecated) @inlinable public static func openDefaultLibgtkOnly() -> Display! {
        guard let rv = Display(gconstpointer: gconstpointer(gdk_display_open_default_libgtk_only())) else { return nil }
        return rv
    }

}

// MARK: no Display properties

public enum DisplaySignalName: String, SignalNameProtocol {
    /// The `closed` signal is emitted when the connection to the windowing
    /// system for `display` is closed.
    case closed = "closed"
    /// The `monitor`-added signal is emitted whenever a monitor is
    /// added.
    case monitorAdded = "monitor-added"
    /// The `monitor`-removed signal is emitted whenever a monitor is
    /// removed.
    case monitorRemoved = "monitor-removed"
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
    /// The `opened` signal is emitted when the connection to the windowing
    /// system for `display` is opened.
    case opened = "opened"
    /// The `seat`-added signal is emitted whenever a new seat is made
    /// known to the windowing system.
    case seatAdded = "seat-added"
    /// The `seat`-removed signal is emitted whenever a seat is removed
    /// by the windowing system.
    case seatRemoved = "seat-removed"

}

public extension DisplayProtocol {
    /// Connect a `DisplaySignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DisplaySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: Display Class: DisplayProtocol extension (methods and fields)
public extension DisplayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDisplay` instance.
    @inlinable var display_ptr: UnsafeMutablePointer<GdkDisplay>! { return ptr?.assumingMemoryBound(to: GdkDisplay.self) }

    /// Emits a short beep on `display`
    @inlinable func beep() {
        gdk_display_beep(display_ptr)
    
    }

    /// Closes the connection to the windowing system for the given display,
    /// and cleans up associated resources.
    @inlinable func close() {
        gdk_display_close(display_ptr)
    
    }

    /// Returns `true` if there is an ongoing grab on `device` for `display`.
    @inlinable func deviceIsGrabbed<DeviceT: DeviceProtocol>(device: DeviceT) -> Bool {
        let rv = ((gdk_display_device_is_grabbed(display_ptr, device.device_ptr)) != 0)
        return rv
    }

    /// Flushes any requests queued for the windowing system; this happens automatically
    /// when the main loop blocks waiting for new events, but if your application
    /// is drawing without returning control to the main loop, you may need
    /// to call this function explicitly. A common case where this function
    /// needs to be called is when an application is executing drawing commands
    /// from a thread other than the thread where the main loop is running.
    /// 
    /// This is most useful for X11. On windowing systems where requests are
    /// handled synchronously, this function will do nothing.
    @inlinable func flush() {
        gdk_display_flush(display_ptr)
    
    }

    /// Returns a `GdkAppLaunchContext` suitable for launching
    /// applications on the given display.
    @inlinable func getAppLaunchContext() -> AppLaunchContextRef! {
        let rv = AppLaunchContextRef(gconstpointer: gconstpointer(gdk_display_get_app_launch_context(display_ptr)))
        return rv
    }

    /// Returns the default size to use for cursors on `display`.
    @inlinable func getDefaultCursorSize() -> Int {
        let rv = Int(gdk_display_get_default_cursor_size(display_ptr))
        return rv
    }

    /// Returns the default group leader window for all toplevel windows
    /// on `display`. This window is implicitly created by GDK.
    /// See `gdk_window_set_group()`.
    @inlinable func getDefaultGroup() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_display_get_default_group(display_ptr)))
        return rv
    }

    /// Get the default `GdkScreen` for `display`.
    @inlinable func getDefaultScreen() -> ScreenRef! {
        let rv = ScreenRef(gconstpointer: gconstpointer(gdk_display_get_default_screen(display_ptr)))
        return rv
    }

    /// Returns the default `GdkSeat` for this display.
    @inlinable func getDefaultSeat() -> SeatRef! {
        let rv = SeatRef(gconstpointer: gconstpointer(gdk_display_get_default_seat(display_ptr)))
        return rv
    }

    /// Returns the `GdkDeviceManager` associated to `display`.
    ///
    /// **get_device_manager is deprecated:**
    /// Use gdk_display_get_default_seat() and #GdkSeat operations.
    @available(*, deprecated) @inlinable func getDeviceManager() -> DeviceManagerRef! {
        let rv = DeviceManagerRef(gconstpointer: gconstpointer(gdk_display_get_device_manager(display_ptr)))
        return rv
    }

    /// Gets the next `GdkEvent` to be processed for `display`, fetching events from the
    /// windowing system if necessary.
    @inlinable func getEvent() -> EventRef! {
        let rv = EventRef(gconstpointer: gconstpointer(gdk_display_get_event(display_ptr)))
        return rv
    }

    /// Gets the maximal size to use for cursors on `display`.
    @inlinable func getMaximalCursorSize(width: UnsafeMutablePointer<guint>!, height: UnsafeMutablePointer<guint>!) {
        gdk_display_get_maximal_cursor_size(display_ptr, width, height)
    
    }

    /// Gets a monitor associated with this display.
    @inlinable func getMonitor(monitorNum monitor_num: Int) -> MonitorRef! {
        let rv = MonitorRef(gconstpointer: gconstpointer(gdk_display_get_monitor(display_ptr, gint(monitor_num))))
        return rv
    }

    /// Gets the monitor in which the point (`x`, `y`) is located,
    /// or a nearby monitor if the point is not in any monitor.
    @inlinable func getMonitorAtPoint(x: Int, y: Int) -> MonitorRef! {
        let rv = MonitorRef(gconstpointer: gconstpointer(gdk_display_get_monitor_at_point(display_ptr, gint(x), gint(y))))
        return rv
    }

    /// Gets the monitor in which the largest area of `window`
    /// resides, or a monitor close to `window` if it is outside
    /// of all monitors.
    @inlinable func getMonitorAt<WindowT: WindowProtocol>(window: WindowT) -> MonitorRef! {
        let rv = MonitorRef(gconstpointer: gconstpointer(gdk_display_get_monitor_at_window(display_ptr, window.window_ptr)))
        return rv
    }

    /// Gets the number of monitors that belong to `display`.
    /// 
    /// The returned number is valid until the next emission of the
    /// `GdkDisplay::monitor`-added or `GdkDisplay::monitor`-removed signal.
    @inlinable func getNMonitors() -> Int {
        let rv = Int(gdk_display_get_n_monitors(display_ptr))
        return rv
    }

    /// Gets the number of screen managed by the `display`.
    ///
    /// **get_n_screens is deprecated:**
    /// The number of screens is always 1.
    @available(*, deprecated) @inlinable func getNScreens() -> Int {
        let rv = Int(gdk_display_get_n_screens(display_ptr))
        return rv
    }

    /// Gets the name of the display.
    @inlinable func getName() -> String! {
        let rv = gdk_display_get_name(display_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the current location of the pointer and the current modifier
    /// mask for a given display.
    ///
    /// **get_pointer is deprecated:**
    /// Use gdk_device_get_position() instead.
    @available(*, deprecated) @inlinable func getPointer(screen: UnsafeMutablePointer<UnsafeMutablePointer<GdkScreen>?>! = nil, x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil, mask: UnsafeMutablePointer<GdkModifierType>! = nil) {
        gdk_display_get_pointer(display_ptr, screen, x, y, mask)
    
    }

    /// Gets the primary monitor for the display.
    /// 
    /// The primary monitor is considered the monitor where the “main desktop”
    /// lives. While normal application windows typically allow the window
    /// manager to place the windows, specialized desktop applications
    /// such as panels should place themselves on the primary monitor.
    @inlinable func getPrimaryMonitor() -> MonitorRef! {
        let rv = MonitorRef(gconstpointer: gconstpointer(gdk_display_get_primary_monitor(display_ptr)))
        return rv
    }

    /// Returns a screen object for one of the screens of the display.
    ///
    /// **get_screen is deprecated:**
    /// There is only one screen; use gdk_display_get_default_screen() to get it.
    @available(*, deprecated) @inlinable func getScreen(screenNum screen_num: Int) -> ScreenRef! {
        let rv = ScreenRef(gconstpointer: gconstpointer(gdk_display_get_screen(display_ptr, gint(screen_num))))
        return rv
    }

    /// Obtains the window underneath the mouse pointer, returning the location
    /// of the pointer in that window in `win_x`, `win_y` for `screen`. Returns `nil`
    /// if the window under the mouse pointer is not known to GDK (for example,
    /// belongs to another application).
    ///
    /// **get_window_at_pointer is deprecated:**
    /// Use gdk_device_get_window_at_position() instead.
    @available(*, deprecated) @inlinable func getWindowAtPointer(winX win_x: UnsafeMutablePointer<gint>! = nil, winY win_y: UnsafeMutablePointer<gint>! = nil) -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_display_get_window_at_pointer(display_ptr, win_x, win_y)))
        return rv
    }

    /// Returns whether the display has events that are waiting
    /// to be processed.
    @inlinable func hasPending() -> Bool {
        let rv = ((gdk_display_has_pending(display_ptr)) != 0)
        return rv
    }

    /// Release any keyboard grab
    ///
    /// **keyboard_ungrab is deprecated:**
    /// Use gdk_device_ungrab(), together with gdk_device_grab()
    ///             instead.
    @available(*, deprecated) @inlinable func keyboardUngrab(time_: guint32) {
        gdk_display_keyboard_ungrab(display_ptr, time_)
    
    }

    /// Returns the list of available input devices attached to `display`.
    /// The list is statically allocated and should not be freed.
    ///
    /// **list_devices is deprecated:**
    /// Use gdk_device_manager_list_devices() instead.
    @available(*, deprecated) @inlinable func listDevices() -> GLib.ListRef! {
        let rv = ListRef(gconstpointer: gconstpointer(gdk_display_list_devices(display_ptr)))
        return rv
    }

    /// Returns the list of seats known to `display`.
    @inlinable func listSeats() -> GLib.ListRef! {
        let rv = ListRef(gconstpointer: gconstpointer(gdk_display_list_seats(display_ptr)))
        return rv
    }

    /// Indicates to the GUI environment that the application has
    /// finished loading, using a given identifier.
    /// 
    /// GTK+ will call this function automatically for `GtkWindow`
    /// with custom startup-notification identifier unless
    /// `gtk_window_set_auto_startup_notification()` is called to
    /// disable that feature.
    @inlinable func notifyStartupComplete(startupId startup_id: UnsafePointer<gchar>!) {
        gdk_display_notify_startup_complete(display_ptr, startup_id)
    
    }

    /// Gets a copy of the first `GdkEvent` in the `display`’s event queue, without
    /// removing the event from the queue.  (Note that this function will
    /// not get more events from the windowing system.  It only checks the events
    /// that have already been moved to the GDK event queue.)
    @inlinable func peekEvent() -> EventRef! {
        let rv = EventRef(gconstpointer: gconstpointer(gdk_display_peek_event(display_ptr)))
        return rv
    }

    /// Test if the pointer is grabbed.
    ///
    /// **pointer_is_grabbed is deprecated:**
    /// Use gdk_display_device_is_grabbed() instead.
    @available(*, deprecated) @inlinable func pointerIsGrabbed() -> Bool {
        let rv = ((gdk_display_pointer_is_grabbed(display_ptr)) != 0)
        return rv
    }

    /// Release any pointer grab.
    ///
    /// **pointer_ungrab is deprecated:**
    /// Use gdk_device_ungrab(), together with gdk_device_grab()
    ///             instead.
    @available(*, deprecated) @inlinable func pointerUngrab(time_: guint32) {
        gdk_display_pointer_ungrab(display_ptr, time_)
    
    }

    /// Appends a copy of the given event onto the front of the event
    /// queue for `display`.
    @inlinable func put<EventT: EventProtocol>(event: EventT) {
        gdk_display_put_event(display_ptr, event.event_ptr)
    
    }

    /// Request `GdkEventOwnerChange` events for ownership changes
    /// of the selection named by the given atom.
    @inlinable func requestSelectionNotification(selection: GdkAtom!) -> Bool {
        let rv = ((gdk_display_request_selection_notification(display_ptr, selection)) != 0)
        return rv
    }

    /// Sets the double click distance (two clicks within this distance
    /// count as a double click and result in a `GDK_2BUTTON_PRESS` event).
    /// See also `gdk_display_set_double_click_time()`.
    /// Applications should not set this, it is a global
    /// user-configured setting.
    @inlinable func setDoubleClick(distance: Int) {
        gdk_display_set_double_click_distance(display_ptr, guint(distance))
    
    }

    /// Sets the double click time (two clicks within this time interval
    /// count as a double click and result in a `GDK_2BUTTON_PRESS` event).
    /// Applications should not set this, it is a global
    /// user-configured setting.
    @inlinable func setDoubleClickTime(msec: Int) {
        gdk_display_set_double_click_time(display_ptr, guint(msec))
    
    }

    /// Issues a request to the clipboard manager to store the
    /// clipboard data. On X11, this is a special program that works
    /// according to the
    /// [FreeDesktop Clipboard Specification](http://www.freedesktop.org/Standards/clipboard-manager-spec).
    @inlinable func storeClipboard<WindowT: WindowProtocol>(clipboardWindow clipboard_window: WindowT, time_: guint32, targets: UnsafePointer<GdkAtom?>! = nil, nTargets n_targets: Int) {
        gdk_display_store_clipboard(display_ptr, clipboard_window.window_ptr, time_, targets, gint(n_targets))
    
    }

    /// Returns whether the speicifed display supports clipboard
    /// persistance; i.e. if it’s possible to store the clipboard data after an
    /// application has quit. On X11 this checks if a clipboard daemon is
    /// running.
    @inlinable func supportsClipboardPersistence() -> Bool {
        let rv = ((gdk_display_supports_clipboard_persistence(display_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `gdk_window_set_composited()` can be used
    /// to redirect drawing on the window using compositing.
    /// 
    /// Currently this only works on X11 with XComposite and
    /// XDamage extensions available.
    ///
    /// **supports_composite is deprecated:**
    /// Compositing is an outdated technology that
    ///   only ever worked on X11.
    @available(*, deprecated) @inlinable func supportsComposite() -> Bool {
        let rv = ((gdk_display_supports_composite(display_ptr)) != 0)
        return rv
    }

    /// Returns `true` if cursors can use an 8bit alpha channel
    /// on `display`. Otherwise, cursors are restricted to bilevel
    /// alpha (i.e. a mask).
    @inlinable func supportsCursorAlpha() -> Bool {
        let rv = ((gdk_display_supports_cursor_alpha(display_ptr)) != 0)
        return rv
    }

    /// Returns `true` if multicolored cursors are supported
    /// on `display`. Otherwise, cursors have only a forground
    /// and a background color.
    @inlinable func supportsCursorColor() -> Bool {
        let rv = ((gdk_display_supports_cursor_color(display_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `gdk_window_input_shape_combine_mask()` can
    /// be used to modify the input shape of windows on `display`.
    @inlinable func supportsInputShapes() -> Bool {
        let rv = ((gdk_display_supports_input_shapes(display_ptr)) != 0)
        return rv
    }

    /// Returns whether `GdkEventOwnerChange` events will be
    /// sent when the owner of a selection changes.
    @inlinable func supportsSelectionNotification() -> Bool {
        let rv = ((gdk_display_supports_selection_notification(display_ptr)) != 0)
        return rv
    }

    /// Returns `true` if `gdk_window_shape_combine_mask()` can
    /// be used to create shaped windows on `display`.
    @inlinable func supportsShapes() -> Bool {
        let rv = ((gdk_display_supports_shapes(display_ptr)) != 0)
        return rv
    }

    /// Flushes any requests queued for the windowing system and waits until all
    /// requests have been handled. This is often used for making sure that the
    /// display is synchronized with the current state of the program. Calling
    /// `gdk_display_sync()` before `gdk_error_trap_pop()` makes sure that any errors
    /// generated from earlier requests are handled before the error trap is
    /// removed.
    /// 
    /// This is most useful for X11. On windowing systems where requests are
    /// handled synchronously, this function will do nothing.
    @inlinable func sync() {
        gdk_display_sync(display_ptr)
    
    }

    /// Warps the pointer of `display` to the point `x`,`y` on
    /// the screen `screen`, unless the pointer is confined
    /// to a window by a grab, in which case it will be moved
    /// as far as allowed by the grab. Warping the pointer
    /// creates events as if the user had moved the mouse
    /// instantaneously to the destination.
    /// 
    /// Note that the pointer should normally be under the
    /// control of the user. This function was added to cover
    /// some rare use cases like keyboard navigation support
    /// for the color picker in the `GtkColorSelectionDialog`.
    ///
    /// **warp_pointer is deprecated:**
    /// Use gdk_device_warp() instead.
    @available(*, deprecated) @inlinable func warpPointer<ScreenT: ScreenProtocol>(screen: ScreenT, x: Int, y: Int) {
        gdk_display_warp_pointer(display_ptr, screen.screen_ptr, gint(x), gint(y))
    
    }

    /// Creates a `PangoContext` for `display`.
    /// 
    /// The context must be freed when you’re finished with it.
    /// 
    /// When using GTK+, normally you should use `gtk_widget_get_pango_context()`
    /// instead of this function, to get the appropriate context for
    /// the widget you intend to render text onto.
    /// 
    /// The newly created context will have the default font options
    /// (see `cairo_font_options_t`) for the display; if these options
    /// change it will not be updated. Using `gtk_widget_get_pango_context()`
    /// is more convenient if you want to keep a context around and track
    /// changes to the font rendering settings.
    @inlinable func pangoContextGetForDisplay() -> Pango.ContextRef! {
        let rv = Pango.ContextRef(gconstpointer: gconstpointer(gdk_pango_context_get_for_display(display_ptr)))
        return rv
    }

    /// Determine the owner of the given selection.
    /// 
    /// Note that the return value may be owned by a different
    /// process if a foreign window was previously created for that
    /// window, but a new foreign window will never be created by this call.
    @inlinable func selectionOwnerGetForDisplay(selection: GdkAtom!) -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_selection_owner_get_for_display(display_ptr, selection)))
        return rv
    }

    /// Sets the `GdkWindow` `owner` as the current owner of the selection `selection`.
    @inlinable func selectionOwnerSetForDisplay<WindowT: WindowProtocol>(owner: WindowT? = nil, selection: GdkAtom!, time_: guint32, sendEvent send_event: Bool) -> Bool {
        let rv = ((gdk_selection_owner_set_for_display(display_ptr, owner?.window_ptr, selection, time_, gboolean((send_event) ? 1 : 0))) != 0)
        return rv
    }

    /// Send a response to SelectionRequest event.
    @inlinable func selectionSendNotifyForDisplay<WindowT: WindowProtocol>(requestor: WindowT, selection: GdkAtom!, target: GdkAtom!, property: GdkAtom!, time_: guint32) {
        gdk_selection_send_notify_for_display(display_ptr, requestor.window_ptr, selection, target, property, time_)
    
    }

    /// Converts a text property in the given encoding to
    /// a list of UTF-8 strings.
    @inlinable func textPropertyToUtf8ListForDisplay(encoding: GdkAtom!, format: Int, text: UnsafePointer<guchar>!, length: Int, list: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) -> Int {
        let rv = Int(gdk_text_property_to_utf8_list_for_display(display_ptr, encoding, gint(format), text, gint(length), list))
        return rv
    }
    /// Returns a `GdkAppLaunchContext` suitable for launching
    /// applications on the given display.
    @inlinable var appLaunchContext: AppLaunchContextRef! {
        /// Returns a `GdkAppLaunchContext` suitable for launching
        /// applications on the given display.
        get {
            let rv = AppLaunchContextRef(gconstpointer: gconstpointer(gdk_display_get_app_launch_context(display_ptr)))
            return rv
        }
    }

    /// Returns the default size to use for cursors on `display`.
    @inlinable var defaultCursorSize: Int {
        /// Returns the default size to use for cursors on `display`.
        get {
            let rv = Int(gdk_display_get_default_cursor_size(display_ptr))
            return rv
        }
    }

    /// Returns the default group leader window for all toplevel windows
    /// on `display`. This window is implicitly created by GDK.
    /// See `gdk_window_set_group()`.
    @inlinable var defaultGroup: WindowRef! {
        /// Returns the default group leader window for all toplevel windows
        /// on `display`. This window is implicitly created by GDK.
        /// See `gdk_window_set_group()`.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_display_get_default_group(display_ptr)))
            return rv
        }
    }

    /// Get the default `GdkScreen` for `display`.
    @inlinable var defaultScreen: ScreenRef! {
        /// Get the default `GdkScreen` for `display`.
        get {
            let rv = ScreenRef(gconstpointer: gconstpointer(gdk_display_get_default_screen(display_ptr)))
            return rv
        }
    }

    /// Returns the default `GdkSeat` for this display.
    @inlinable var defaultSeat: SeatRef! {
        /// Returns the default `GdkSeat` for this display.
        get {
            let rv = SeatRef(gconstpointer: gconstpointer(gdk_display_get_default_seat(display_ptr)))
            return rv
        }
    }

    /// Returns the `GdkDeviceManager` associated to `display`.
    ///
    /// **get_device_manager is deprecated:**
    /// Use gdk_display_get_default_seat() and #GdkSeat operations.
    @inlinable var deviceManager: DeviceManagerRef! {
        /// Returns the `GdkDeviceManager` associated to `display`.
        ///
        /// **get_device_manager is deprecated:**
        /// Use gdk_display_get_default_seat() and #GdkSeat operations.
        @available(*, deprecated) get {
            let rv = DeviceManagerRef(gconstpointer: gconstpointer(gdk_display_get_device_manager(display_ptr)))
            return rv
        }
    }

    /// Gets the next `GdkEvent` to be processed for `display`, fetching events from the
    /// windowing system if necessary.
    @inlinable var event: EventRef! {
        /// Gets the next `GdkEvent` to be processed for `display`, fetching events from the
        /// windowing system if necessary.
        get {
            let rv = EventRef(gconstpointer: gconstpointer(gdk_display_get_event(display_ptr)))
            return rv
        }
    }

    /// Finds out if the display has been closed.
    @inlinable var isClosed: Bool {
        /// Finds out if the display has been closed.
        get {
            let rv = ((gdk_display_is_closed(display_ptr)) != 0)
            return rv
        }
    }

    /// Gets the number of monitors that belong to `display`.
    /// 
    /// The returned number is valid until the next emission of the
    /// `GdkDisplay::monitor`-added or `GdkDisplay::monitor`-removed signal.
    @inlinable var nMonitors: Int {
        /// Gets the number of monitors that belong to `display`.
        /// 
        /// The returned number is valid until the next emission of the
        /// `GdkDisplay::monitor`-added or `GdkDisplay::monitor`-removed signal.
        get {
            let rv = Int(gdk_display_get_n_monitors(display_ptr))
            return rv
        }
    }

    /// Gets the number of screen managed by the `display`.
    ///
    /// **get_n_screens is deprecated:**
    /// The number of screens is always 1.
    @inlinable var nScreens: Int {
        /// Gets the number of screen managed by the `display`.
        ///
        /// **get_n_screens is deprecated:**
        /// The number of screens is always 1.
        @available(*, deprecated) get {
            let rv = Int(gdk_display_get_n_screens(display_ptr))
            return rv
        }
    }

    /// Gets the name of the display.
    @inlinable var name: String! {
        /// Gets the name of the display.
        get {
            let rv = gdk_display_get_name(display_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the primary monitor for the display.
    /// 
    /// The primary monitor is considered the monitor where the “main desktop”
    /// lives. While normal application windows typically allow the window
    /// manager to place the windows, specialized desktop applications
    /// such as panels should place themselves on the primary monitor.
    @inlinable var primaryMonitor: MonitorRef! {
        /// Gets the primary monitor for the display.
        /// 
        /// The primary monitor is considered the monitor where the “main desktop”
        /// lives. While normal application windows typically allow the window
        /// manager to place the windows, specialized desktop applications
        /// such as panels should place themselves on the primary monitor.
        get {
            let rv = MonitorRef(gconstpointer: gconstpointer(gdk_display_get_primary_monitor(display_ptr)))
            return rv
        }
    }


}



// MARK: - DisplayManager Class

/// The `DisplayManagerProtocol` protocol exposes the methods and properties of an underlying `GdkDisplayManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DisplayManager`.
/// Alternatively, use `DisplayManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The purpose of the `GdkDisplayManager` singleton object is to offer
/// notification when displays appear or disappear or the default display
/// changes.
/// 
/// You can use `gdk_display_manager_get()` to obtain the `GdkDisplayManager`
/// singleton, but that should be rarely necessary. Typically, initializing
/// GTK+ opens a display that you can work with without ever accessing the
/// `GdkDisplayManager`.
/// 
/// The GDK library can be built with support for multiple backends.
/// The `GdkDisplayManager` object determines which backend is used
/// at runtime.
/// 
/// When writing backend-specific code that is supposed to work with
/// multiple GDK backends, you have to consider both compile time and
/// runtime. At compile time, use the `GDK_WINDOWING_X11`, `GDK_WINDOWING_WIN32`
/// macros, etc. to find out which backends are present in the GDK library
/// you are building your application against. At runtime, use type-check
/// macros like `GDK_IS_X11_DISPLAY()` to find out which backend is in use:
/// 
/// ## Backend-specific code ## <a name="backend-specific"></a>
/// 
/// (C Language Example):
/// ```C
/// #ifdef GDK_WINDOWING_X11
///   if (GDK_IS_X11_DISPLAY (display))
///     {
///       // make X11-specific calls here
///     }
///   else
/// #endif
/// #ifdef GDK_WINDOWING_QUARTZ
///   if (GDK_IS_QUARTZ_DISPLAY (display))
///     {
///       // make Quartz-specific calls here
///     }
///   else
/// #endif
///   g_error ("Unsupported GDK backend");
/// ```
/// 
public protocol DisplayManagerProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDisplayManager` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDisplayManager` instance.
    var display_manager_ptr: UnsafeMutablePointer<GdkDisplayManager>! { get }

}

/// The `DisplayManagerRef` type acts as a lightweight Swift reference to an underlying `GdkDisplayManager` instance.
/// It exposes methods that can operate on this data type through `DisplayManagerProtocol` conformance.
/// Use `DisplayManagerRef` only as an `unowned` reference to an existing `GdkDisplayManager` instance.
///
/// The purpose of the `GdkDisplayManager` singleton object is to offer
/// notification when displays appear or disappear or the default display
/// changes.
/// 
/// You can use `gdk_display_manager_get()` to obtain the `GdkDisplayManager`
/// singleton, but that should be rarely necessary. Typically, initializing
/// GTK+ opens a display that you can work with without ever accessing the
/// `GdkDisplayManager`.
/// 
/// The GDK library can be built with support for multiple backends.
/// The `GdkDisplayManager` object determines which backend is used
/// at runtime.
/// 
/// When writing backend-specific code that is supposed to work with
/// multiple GDK backends, you have to consider both compile time and
/// runtime. At compile time, use the `GDK_WINDOWING_X11`, `GDK_WINDOWING_WIN32`
/// macros, etc. to find out which backends are present in the GDK library
/// you are building your application against. At runtime, use type-check
/// macros like `GDK_IS_X11_DISPLAY()` to find out which backend is in use:
/// 
/// ## Backend-specific code ## <a name="backend-specific"></a>
/// 
/// (C Language Example):
/// ```C
/// #ifdef GDK_WINDOWING_X11
///   if (GDK_IS_X11_DISPLAY (display))
///     {
///       // make X11-specific calls here
///     }
///   else
/// #endif
/// #ifdef GDK_WINDOWING_QUARTZ
///   if (GDK_IS_QUARTZ_DISPLAY (display))
///     {
///       // make Quartz-specific calls here
///     }
///   else
/// #endif
///   g_error ("Unsupported GDK backend");
/// ```
/// 
public struct DisplayManagerRef: DisplayManagerProtocol {
        /// Untyped pointer to the underlying `GdkDisplayManager` instance.
    /// For type-safe access, use the generated, typed pointer `display_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DisplayManagerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDisplayManager>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDisplayManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDisplayManager>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDisplayManager>?) {
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

    /// Reference intialiser for a related type that implements `DisplayManagerProtocol`
    @inlinable init<T: DisplayManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the singleton `GdkDisplayManager` object.
    /// 
    /// When called for the first time, this function consults the
    /// `GDK_BACKEND` environment variable to find out which
    /// of the supported GDK backends to use (in case GDK has been compiled
    /// with multiple backends). Applications can use `gdk_set_allowed_backends()`
    /// to limit what backends can be used.
    @inlinable static func displayManagerGet() -> DisplayManagerRef! {
        guard let rv = DisplayManagerRef(gconstpointer: gconstpointer(gdk_display_manager_get())) else { return nil }
        return rv
    }
}

/// The `DisplayManager` type acts as a reference-counted owner of an underlying `GdkDisplayManager` instance.
/// It provides the methods that can operate on this data type through `DisplayManagerProtocol` conformance.
/// Use `DisplayManager` as a strong reference or owner of a `GdkDisplayManager` instance.
///
/// The purpose of the `GdkDisplayManager` singleton object is to offer
/// notification when displays appear or disappear or the default display
/// changes.
/// 
/// You can use `gdk_display_manager_get()` to obtain the `GdkDisplayManager`
/// singleton, but that should be rarely necessary. Typically, initializing
/// GTK+ opens a display that you can work with without ever accessing the
/// `GdkDisplayManager`.
/// 
/// The GDK library can be built with support for multiple backends.
/// The `GdkDisplayManager` object determines which backend is used
/// at runtime.
/// 
/// When writing backend-specific code that is supposed to work with
/// multiple GDK backends, you have to consider both compile time and
/// runtime. At compile time, use the `GDK_WINDOWING_X11`, `GDK_WINDOWING_WIN32`
/// macros, etc. to find out which backends are present in the GDK library
/// you are building your application against. At runtime, use type-check
/// macros like `GDK_IS_X11_DISPLAY()` to find out which backend is in use:
/// 
/// ## Backend-specific code ## <a name="backend-specific"></a>
/// 
/// (C Language Example):
/// ```C
/// #ifdef GDK_WINDOWING_X11
///   if (GDK_IS_X11_DISPLAY (display))
///     {
///       // make X11-specific calls here
///     }
///   else
/// #endif
/// #ifdef GDK_WINDOWING_QUARTZ
///   if (GDK_IS_QUARTZ_DISPLAY (display))
///     {
///       // make Quartz-specific calls here
///     }
///   else
/// #endif
///   g_error ("Unsupported GDK backend");
/// ```
/// 
open class DisplayManager: Object, DisplayManagerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDisplayManager>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDisplayManager>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDisplayManager>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDisplayManager>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDisplayManager`.
    /// i.e., ownership is transferred to the `DisplayManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDisplayManager>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DisplayManagerProtocol`
    /// Will retain `GdkDisplayManager`.
    /// - Parameter other: an instance of a related type that implements `DisplayManagerProtocol`
    @inlinable public init<T: DisplayManagerProtocol>(displayManager other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the singleton `GdkDisplayManager` object.
    /// 
    /// When called for the first time, this function consults the
    /// `GDK_BACKEND` environment variable to find out which
    /// of the supported GDK backends to use (in case GDK has been compiled
    /// with multiple backends). Applications can use `gdk_set_allowed_backends()`
    /// to limit what backends can be used.
    @inlinable public static func displayManagerGet() -> DisplayManager! {
        guard let rv = DisplayManager(gconstpointer: gconstpointer(gdk_display_manager_get())) else { return nil }
        return rv
    }

}

public enum DisplayManagerPropertyName: String, PropertyNameProtocol {
    case defaultDisplay = "default-display"
}

public extension DisplayManagerProtocol {
    /// Bind a `DisplayManagerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DisplayManagerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DisplayManager property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DisplayManagerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DisplayManager property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DisplayManagerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DisplayManagerSignalName: String, SignalNameProtocol {
    /// The `display`-opened signal is emitted when a display is opened.
    case displayOpened = "display-opened"
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
    case notifyDefaultDisplay = "notify::default-display"
}

public extension DisplayManagerProtocol {
    /// Connect a `DisplayManagerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DisplayManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: DisplayManager Class: DisplayManagerProtocol extension (methods and fields)
public extension DisplayManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDisplayManager` instance.
    @inlinable var display_manager_ptr: UnsafeMutablePointer<GdkDisplayManager>! { return ptr?.assumingMemoryBound(to: GdkDisplayManager.self) }

    /// Gets the default `GdkDisplay`.
    @inlinable func getDefaultDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_manager_get_default_display(display_manager_ptr)))
        return rv
    }

    /// List all currently open displays.
    @inlinable func listDisplays() -> SListRef! {
        let rv = SListRef(gconstpointer: gconstpointer(gdk_display_manager_list_displays(display_manager_ptr)))
        return rv
    }

    /// Opens a display.
    @inlinable func openDisplay(name: UnsafePointer<gchar>!) -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_manager_open_display(display_manager_ptr, name)))
        return rv
    }

    /// Sets `display` as the default display.
    @inlinable func setDefault<DisplayT: DisplayProtocol>(display: DisplayT) {
        gdk_display_manager_set_default_display(display_manager_ptr, display.display_ptr)
    
    }
    /// Gets the default `GdkDisplay`.
    @inlinable var defaultDisplay: DisplayRef! {
        /// Gets the default `GdkDisplay`.
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_display_manager_get_default_display(display_manager_ptr)))
            return rv
        }
        /// Sets `display` as the default display.
        nonmutating set {
            gdk_display_manager_set_default_display(display_manager_ptr, UnsafeMutablePointer<GdkDisplay>(newValue?.display_ptr))
        }
    }


}



// MARK: - DragContext Class

/// The `DragContextProtocol` protocol exposes the methods and properties of an underlying `GdkDragContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DragContext`.
/// Alternatively, use `DragContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DragContextProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDragContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDragContext` instance.
    var drag_context_ptr: UnsafeMutablePointer<GdkDragContext>! { get }

}

/// The `DragContextRef` type acts as a lightweight Swift reference to an underlying `GdkDragContext` instance.
/// It exposes methods that can operate on this data type through `DragContextProtocol` conformance.
/// Use `DragContextRef` only as an `unowned` reference to an existing `GdkDragContext` instance.
///

public struct DragContextRef: DragContextProtocol {
        /// Untyped pointer to the underlying `GdkDragContext` instance.
    /// For type-safe access, use the generated, typed pointer `drag_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DragContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDragContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDragContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDragContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDragContext>?) {
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

    /// Reference intialiser for a related type that implements `DragContextProtocol`
    @inlinable init<T: DragContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DragContext` type acts as a reference-counted owner of an underlying `GdkDragContext` instance.
/// It provides the methods that can operate on this data type through `DragContextProtocol` conformance.
/// Use `DragContext` as a strong reference or owner of a `GdkDragContext` instance.
///

open class DragContext: Object, DragContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDragContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDragContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDragContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DragContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDragContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDragContext`.
    /// i.e., ownership is transferred to the `DragContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDragContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DragContextProtocol`
    /// Will retain `GdkDragContext`.
    /// - Parameter other: an instance of a related type that implements `DragContextProtocol`
    @inlinable public init<T: DragContextProtocol>(dragContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no DragContext properties

public enum DragContextSignalName: String, SignalNameProtocol {
    /// A new action is being chosen for the drag and drop operation.
    /// 
    /// This signal will only be emitted if the `GdkDragContext` manages
    /// the drag and drop operation. See `gdk_drag_context_manage_dnd()`
    /// for more information.
    case actionChanged = "action-changed"
    /// The drag and drop operation was cancelled.
    /// 
    /// This signal will only be emitted if the `GdkDragContext` manages
    /// the drag and drop operation. See `gdk_drag_context_manage_dnd()`
    /// for more information.
    case cancel = "cancel"
    /// The drag and drop operation was finished, the drag destination
    /// finished reading all data. The drag source can now free all
    /// miscellaneous data.
    /// 
    /// This signal will only be emitted if the `GdkDragContext` manages
    /// the drag and drop operation. See `gdk_drag_context_manage_dnd()`
    /// for more information.
    case dndFinished = "dnd-finished"
    /// The drag and drop operation was performed on an accepting client.
    /// 
    /// This signal will only be emitted if the `GdkDragContext` manages
    /// the drag and drop operation. See `gdk_drag_context_manage_dnd()`
    /// for more information.
    case dropPerformed = "drop-performed"
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

}

public extension DragContextProtocol {
    /// Connect a `DragContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DragContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: DragContext Class: DragContextProtocol extension (methods and fields)
public extension DragContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDragContext` instance.
    @inlinable var drag_context_ptr: UnsafeMutablePointer<GdkDragContext>! { return ptr?.assumingMemoryBound(to: GdkDragContext.self) }

    /// Determines the bitmask of actions proposed by the source if
    /// `gdk_drag_context_get_suggested_action()` returns `GDK_ACTION_ASK`.
    @inlinable func getActions() -> DragAction {
        let rv = DragAction(gdk_drag_context_get_actions(drag_context_ptr))
        return rv
    }

    /// Returns the destination window for the DND operation.
    @inlinable func getDestWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_drag_context_get_dest_window(drag_context_ptr)))
        return rv
    }

    /// Returns the `GdkDevice` associated to the drag context.
    @inlinable func getDevice() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_drag_context_get_device(drag_context_ptr)))
        return rv
    }

    /// Returns the window on which the drag icon should be rendered
    /// during the drag operation. Note that the window may not be
    /// available until the drag operation has begun. GDK will move
    /// the window in accordance with the ongoing drag operation.
    /// The window is owned by `context` and will be destroyed when
    /// the drag operation is over.
    @inlinable func getDragWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_drag_context_get_drag_window(drag_context_ptr)))
        return rv
    }

    /// Returns the drag protocol that is used by this context.
    @inlinable func getProtocol() -> GdkDragProtocol {
        let rv = gdk_drag_context_get_protocol(drag_context_ptr)
        return rv
    }

    /// Determines the action chosen by the drag destination.
    @inlinable func getSelectedAction() -> DragAction {
        let rv = DragAction(gdk_drag_context_get_selected_action(drag_context_ptr))
        return rv
    }

    /// Returns the `GdkWindow` where the DND operation started.
    @inlinable func getSourceWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_drag_context_get_source_window(drag_context_ptr)))
        return rv
    }

    /// Determines the suggested drag action of the context.
    @inlinable func getSuggestedAction() -> DragAction {
        let rv = DragAction(gdk_drag_context_get_suggested_action(drag_context_ptr))
        return rv
    }

    /// Retrieves the list of targets of the context.
    @inlinable func listTargets() -> GLib.ListRef! {
        let rv = ListRef(gconstpointer: gconstpointer(gdk_drag_context_list_targets(drag_context_ptr)))
        return rv
    }

    /// Requests the drag and drop operation to be managed by `context`.
    /// When a drag and drop operation becomes managed, the `GdkDragContext`
    /// will internally handle all input and source-side `GdkEventDND` events
    /// as required by the windowing system.
    /// 
    /// Once the drag and drop operation is managed, the drag context will
    /// emit the following signals:
    /// - The `GdkDragContext::action`-changed signal whenever the final action
    ///   to be performed by the drag and drop operation changes.
    /// - The `GdkDragContext::drop`-performed signal after the user performs
    ///   the drag and drop gesture (typically by releasing the mouse button).
    /// - The `GdkDragContext::dnd`-finished signal after the drag and drop
    ///   operation concludes (after all `GdkSelection` transfers happen).
    /// - The `GdkDragContext::cancel` signal if the drag and drop operation is
    ///   finished but doesn't happen over an accepting destination, or is
    ///   cancelled through other means.
    @inlinable func manageDnd<WindowT: WindowProtocol>(ipcWindow ipc_window: WindowT, actions: DragAction) -> Bool {
        let rv = ((gdk_drag_context_manage_dnd(drag_context_ptr, ipc_window.window_ptr, actions.value)) != 0)
        return rv
    }

    /// Associates a `GdkDevice` to `context`, so all Drag and Drop events
    /// for `context` are emitted as if they came from this device.
    @inlinable func set<DeviceT: DeviceProtocol>(device: DeviceT) {
        gdk_drag_context_set_device(drag_context_ptr, device.device_ptr)
    
    }

    /// Sets the position of the drag window that will be kept
    /// under the cursor hotspot. Initially, the hotspot is at the
    /// top left corner of the drag window.
    @inlinable func setHotspot(hotX hot_x: Int, hotY hot_y: Int) {
        gdk_drag_context_set_hotspot(drag_context_ptr, gint(hot_x), gint(hot_y))
    
    }

    /// Aborts a drag without dropping.
    /// 
    /// This function is called by the drag source.
    /// 
    /// This function does not need to be called in managed drag and drop
    /// operations. See `gdk_drag_context_manage_dnd()` for more information.
    @inlinable func dragAbort(time_: guint32) {
        gdk_drag_abort(drag_context_ptr, time_)
    
    }

    /// Drops on the current destination.
    /// 
    /// This function is called by the drag source.
    /// 
    /// This function does not need to be called in managed drag and drop
    /// operations. See `gdk_drag_context_manage_dnd()` for more information.
    @inlinable func dragDrop(time_: guint32) {
        gdk_drag_drop(drag_context_ptr, time_)
    
    }

    /// Inform GDK if the drop ended successfully. Passing `false`
    /// for `success` may trigger a drag cancellation animation.
    /// 
    /// This function is called by the drag source, and should
    /// be the last call before dropping the reference to the
    /// `context`.
    /// 
    /// The `GdkDragContext` will only take the first `gdk_drag_drop_done()`
    /// call as effective, if this function is called multiple times,
    /// all subsequent calls will be ignored.
    @inlinable func dragDropDone(success: Bool) {
        gdk_drag_drop_done(drag_context_ptr, gboolean((success) ? 1 : 0))
    
    }

    /// Returns whether the dropped data has been successfully
    /// transferred. This function is intended to be used while
    /// handling a `GDK_DROP_FINISHED` event, its return value is
    /// meaningless at other times.
    @inlinable func dragDropSucceeded() -> Bool {
        let rv = ((gdk_drag_drop_succeeded(drag_context_ptr)) != 0)
        return rv
    }

    /// Finds the destination window and DND protocol to use at the
    /// given pointer position.
    /// 
    /// This function is called by the drag source to obtain the
    /// `dest_window` and `protocol` parameters for `gdk_drag_motion()`.
    @inlinable func dragFindWindowForScreen<ScreenT: ScreenProtocol, WindowT: WindowProtocol>(dragWindow drag_window: WindowT, screen: ScreenT, xRoot x_root: Int, yRoot y_root: Int, destWindow dest_window: UnsafeMutablePointer<UnsafeMutablePointer<GdkWindow>?>!, `protocol`: UnsafeMutablePointer<GdkDragProtocol>!) {
        gdk_drag_find_window_for_screen(drag_context_ptr, drag_window.window_ptr, screen.screen_ptr, gint(x_root), gint(y_root), dest_window, `protocol`)
    
    }

    /// Returns the selection atom for the current source window.
    @inlinable func dragGetSelection() -> GdkAtom! {
        let rv = gdk_drag_get_selection(drag_context_ptr)
        return rv
    }

    /// Updates the drag context when the pointer moves or the
    /// set of actions changes.
    /// 
    /// This function is called by the drag source.
    /// 
    /// This function does not need to be called in managed drag and drop
    /// operations. See `gdk_drag_context_manage_dnd()` for more information.
    @inlinable func dragMotion<WindowT: WindowProtocol>(destWindow dest_window: WindowT, `protocol`: GdkDragProtocol, xRoot x_root: Int, yRoot y_root: Int, suggestedAction suggested_action: DragAction, possibleActions possible_actions: DragAction, time_: guint32) -> Bool {
        let rv = ((gdk_drag_motion(drag_context_ptr, dest_window.window_ptr, `protocol`, gint(x_root), gint(y_root), suggested_action.value, possible_actions.value, time_)) != 0)
        return rv
    }

    /// Selects one of the actions offered by the drag source.
    /// 
    /// This function is called by the drag destination in response to
    /// `gdk_drag_motion()` called by the drag source.
    @inlinable func dragStatus(action: DragAction, time_: guint32) {
        gdk_drag_status(drag_context_ptr, action.value, time_)
    
    }

    /// Ends the drag operation after a drop.
    /// 
    /// This function is called by the drag destination.
    @inlinable func dropFinish(success: Bool, time_: guint32) {
        gdk_drop_finish(drag_context_ptr, gboolean((success) ? 1 : 0), time_)
    
    }

    /// Accepts or rejects a drop.
    /// 
    /// This function is called by the drag destination in response
    /// to a drop initiated by the drag source.
    @inlinable func dropReply(accepted: Bool, time_: guint32) {
        gdk_drop_reply(drag_context_ptr, gboolean((accepted) ? 1 : 0), time_)
    
    }
    /// Determines the bitmask of actions proposed by the source if
    /// `gdk_drag_context_get_suggested_action()` returns `GDK_ACTION_ASK`.
    @inlinable var actions: DragAction {
        /// Determines the bitmask of actions proposed by the source if
        /// `gdk_drag_context_get_suggested_action()` returns `GDK_ACTION_ASK`.
        get {
            let rv = DragAction(gdk_drag_context_get_actions(drag_context_ptr))
            return rv
        }
    }

    /// Returns the destination window for the DND operation.
    @inlinable var destWindow: WindowRef! {
        /// Returns the destination window for the DND operation.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_drag_context_get_dest_window(drag_context_ptr)))
            return rv
        }
    }

    /// Returns the `GdkDevice` associated to the drag context.
    @inlinable var device: DeviceRef! {
        /// Returns the `GdkDevice` associated to the drag context.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_drag_context_get_device(drag_context_ptr)))
            return rv
        }
        /// Associates a `GdkDevice` to `context`, so all Drag and Drop events
        /// for `context` are emitted as if they came from this device.
        nonmutating set {
            gdk_drag_context_set_device(drag_context_ptr, UnsafeMutablePointer<GdkDevice>(newValue?.device_ptr))
        }
    }

    /// Returns the window on which the drag icon should be rendered
    /// during the drag operation. Note that the window may not be
    /// available until the drag operation has begun. GDK will move
    /// the window in accordance with the ongoing drag operation.
    /// The window is owned by `context` and will be destroyed when
    /// the drag operation is over.
    @inlinable var dragWindow: WindowRef! {
        /// Returns the window on which the drag icon should be rendered
        /// during the drag operation. Note that the window may not be
        /// available until the drag operation has begun. GDK will move
        /// the window in accordance with the ongoing drag operation.
        /// The window is owned by `context` and will be destroyed when
        /// the drag operation is over.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_drag_context_get_drag_window(drag_context_ptr)))
            return rv
        }
    }

    /// Returns the drag protocol that is used by this context.
    @inlinable var `protocol`: GdkDragProtocol {
        /// Returns the drag protocol that is used by this context.
        get {
            let rv = gdk_drag_context_get_protocol(drag_context_ptr)
            return rv
        }
    }

    /// Determines the action chosen by the drag destination.
    @inlinable var selectedAction: DragAction {
        /// Determines the action chosen by the drag destination.
        get {
            let rv = DragAction(gdk_drag_context_get_selected_action(drag_context_ptr))
            return rv
        }
    }

    /// Returns the `GdkWindow` where the DND operation started.
    @inlinable var sourceWindow: WindowRef! {
        /// Returns the `GdkWindow` where the DND operation started.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_drag_context_get_source_window(drag_context_ptr)))
            return rv
        }
    }

    /// Determines the suggested drag action of the context.
    @inlinable var suggestedAction: DragAction {
        /// Determines the suggested drag action of the context.
        get {
            let rv = DragAction(gdk_drag_context_get_suggested_action(drag_context_ptr))
            return rv
        }
    }


}



// MARK: - DrawingContext Class

/// The `DrawingContextProtocol` protocol exposes the methods and properties of an underlying `GdkDrawingContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingContext`.
/// Alternatively, use `DrawingContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkDrawingContext` is an object that represents the current drawing
/// state of a `GdkWindow`.
/// 
/// It's possible to use a `GdkDrawingContext` to draw on a `GdkWindow`
/// via rendering API like Cairo or OpenGL.
/// 
/// A `GdkDrawingContext` can only be created by calling `gdk_window_begin_draw_frame()`
/// and will be valid until a call to `gdk_window_end_draw_frame()`.
/// 
/// `GdkDrawingContext` is available since GDK 3.22
public protocol DrawingContextProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkDrawingContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDrawingContext` instance.
    var drawing_context_ptr: UnsafeMutablePointer<GdkDrawingContext>! { get }

}

/// The `DrawingContextRef` type acts as a lightweight Swift reference to an underlying `GdkDrawingContext` instance.
/// It exposes methods that can operate on this data type through `DrawingContextProtocol` conformance.
/// Use `DrawingContextRef` only as an `unowned` reference to an existing `GdkDrawingContext` instance.
///
/// `GdkDrawingContext` is an object that represents the current drawing
/// state of a `GdkWindow`.
/// 
/// It's possible to use a `GdkDrawingContext` to draw on a `GdkWindow`
/// via rendering API like Cairo or OpenGL.
/// 
/// A `GdkDrawingContext` can only be created by calling `gdk_window_begin_draw_frame()`
/// and will be valid until a call to `gdk_window_end_draw_frame()`.
/// 
/// `GdkDrawingContext` is available since GDK 3.22
public struct DrawingContextRef: DrawingContextProtocol {
        /// Untyped pointer to the underlying `GdkDrawingContext` instance.
    /// For type-safe access, use the generated, typed pointer `drawing_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DrawingContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDrawingContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDrawingContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDrawingContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDrawingContext>?) {
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

    /// Reference intialiser for a related type that implements `DrawingContextProtocol`
    @inlinable init<T: DrawingContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DrawingContext` type acts as a reference-counted owner of an underlying `GdkDrawingContext` instance.
/// It provides the methods that can operate on this data type through `DrawingContextProtocol` conformance.
/// Use `DrawingContext` as a strong reference or owner of a `GdkDrawingContext` instance.
///
/// `GdkDrawingContext` is an object that represents the current drawing
/// state of a `GdkWindow`.
/// 
/// It's possible to use a `GdkDrawingContext` to draw on a `GdkWindow`
/// via rendering API like Cairo or OpenGL.
/// 
/// A `GdkDrawingContext` can only be created by calling `gdk_window_begin_draw_frame()`
/// and will be valid until a call to `gdk_window_end_draw_frame()`.
/// 
/// `GdkDrawingContext` is available since GDK 3.22
open class DrawingContext: Object, DrawingContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDrawingContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDrawingContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDrawingContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDrawingContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkDrawingContext`.
    /// i.e., ownership is transferred to the `DrawingContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDrawingContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DrawingContextProtocol`
    /// Will retain `GdkDrawingContext`.
    /// - Parameter other: an instance of a related type that implements `DrawingContextProtocol`
    @inlinable public init<T: DrawingContextProtocol>(drawingContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DrawingContextPropertyName: String, PropertyNameProtocol {
    /// The clip region applied to the drawing context.
    case clip = "clip"
    /// The `GdkWindow` that created the drawing context.
    case window = "window"
}

public extension DrawingContextProtocol {
    /// Bind a `DrawingContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DrawingContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DrawingContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DrawingContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DrawingContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DrawingContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DrawingContextSignalName: String, SignalNameProtocol {
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
    /// The clip region applied to the drawing context.
    case notifyClip = "notify::clip"
    /// The `GdkWindow` that created the drawing context.
    case notifyWindow = "notify::window"
}

public extension DrawingContextProtocol {
    /// Connect a `DrawingContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DrawingContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: DrawingContext Class: DrawingContextProtocol extension (methods and fields)
public extension DrawingContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDrawingContext` instance.
    @inlinable var drawing_context_ptr: UnsafeMutablePointer<GdkDrawingContext>! { return ptr?.assumingMemoryBound(to: GdkDrawingContext.self) }

    /// Retrieves a Cairo context to be used to draw on the `GdkWindow`
    /// that created the `GdkDrawingContext`.
    /// 
    /// The returned context is guaranteed to be valid as long as the
    /// `GdkDrawingContext` is valid, that is between a call to
    /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()`.
    @inlinable func getCairoContext() -> Cairo.ContextRef! {
        let rv = Cairo.ContextRef(gconstpointer: gconstpointer(gdk_drawing_context_get_cairo_context(drawing_context_ptr)))
        return rv
    }

    /// Retrieves a copy of the clip region used when creating the `context`.
    @inlinable func getClip() -> RegionRef! {
        let rv = RegionRef(gconstpointer: gconstpointer(gdk_drawing_context_get_clip(drawing_context_ptr)))
        return rv
    }

    /// Retrieves the window that created the drawing `context`.
    @inlinable func getWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_drawing_context_get_window(drawing_context_ptr)))
        return rv
    }
    /// Retrieves a Cairo context to be used to draw on the `GdkWindow`
    /// that created the `GdkDrawingContext`.
    /// 
    /// The returned context is guaranteed to be valid as long as the
    /// `GdkDrawingContext` is valid, that is between a call to
    /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()`.
    @inlinable var cairoContext: Cairo.ContextRef! {
        /// Retrieves a Cairo context to be used to draw on the `GdkWindow`
        /// that created the `GdkDrawingContext`.
        /// 
        /// The returned context is guaranteed to be valid as long as the
        /// `GdkDrawingContext` is valid, that is between a call to
        /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()`.
        get {
            let rv = Cairo.ContextRef(gconstpointer: gconstpointer(gdk_drawing_context_get_cairo_context(drawing_context_ptr)))
            return rv
        }
    }

    /// The clip region applied to the drawing context.
    @inlinable var clip: RegionRef! {
        /// Retrieves a copy of the clip region used when creating the `context`.
        get {
            let rv = RegionRef(gconstpointer: gconstpointer(gdk_drawing_context_get_clip(drawing_context_ptr)))
            return rv
        }
    }

    /// Checks whether the given `GdkDrawingContext` is valid.
    @inlinable var isValid: Bool {
        /// Checks whether the given `GdkDrawingContext` is valid.
        get {
            let rv = ((gdk_drawing_context_is_valid(drawing_context_ptr)) != 0)
            return rv
        }
    }

    /// The `GdkWindow` that created the drawing context.
    @inlinable var window: WindowRef! {
        /// Retrieves the window that created the drawing `context`.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_drawing_context_get_window(drawing_context_ptr)))
            return rv
        }
    }


}



// MARK: - FrameClock Class

/// The `FrameClockProtocol` protocol exposes the methods and properties of an underlying `GdkFrameClock` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameClock`.
/// Alternatively, use `FrameClockRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkFrameClock` tells the application when to update and repaint a
/// window. This may be synced to the vertical refresh rate of the
/// monitor, for example. Even when the frame clock uses a simple timer
/// rather than a hardware-based vertical sync, the frame clock helps
/// because it ensures everything paints at the same time (reducing the
/// total number of frames). The frame clock can also automatically
/// stop painting when it knows the frames will not be visible, or
/// scale back animation framerates.
/// 
/// `GdkFrameClock` is designed to be compatible with an OpenGL-based
/// implementation or with mozRequestAnimationFrame in Firefox,
/// for example.
/// 
/// A frame clock is idle until someone requests a frame with
/// `gdk_frame_clock_request_phase()`. At some later point that makes
/// sense for the synchronization being implemented, the clock will
/// process a frame and emit signals for each phase that has been
/// requested. (See the signals of the `GdkFrameClock` class for
/// documentation of the phases. `GDK_FRAME_CLOCK_PHASE_UPDATE` and the
/// `GdkFrameClock::update` signal are most interesting for application
/// writers, and are used to update the animations, using the frame time
/// given by `gdk_frame_clock_get_frame_time()`.
/// 
/// The frame time is reported in microseconds and generally in the same
/// timescale as `g_get_monotonic_time()`, however, it is not the same
/// as `g_get_monotonic_time()`. The frame time does not advance during
/// the time a frame is being painted, and outside of a frame, an attempt
/// is made so that all calls to `gdk_frame_clock_get_frame_time()` that
/// are called at a “similar” time get the same value. This means that
/// if different animations are timed by looking at the difference in
/// time between an initial value from `gdk_frame_clock_get_frame_time()`
/// and the value inside the `GdkFrameClock::update` signal of the clock,
/// they will stay exactly synchronized.
public protocol FrameClockProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkFrameClock` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkFrameClock` instance.
    var frame_clock_ptr: UnsafeMutablePointer<GdkFrameClock>! { get }

}

/// The `FrameClockRef` type acts as a lightweight Swift reference to an underlying `GdkFrameClock` instance.
/// It exposes methods that can operate on this data type through `FrameClockProtocol` conformance.
/// Use `FrameClockRef` only as an `unowned` reference to an existing `GdkFrameClock` instance.
///
/// A `GdkFrameClock` tells the application when to update and repaint a
/// window. This may be synced to the vertical refresh rate of the
/// monitor, for example. Even when the frame clock uses a simple timer
/// rather than a hardware-based vertical sync, the frame clock helps
/// because it ensures everything paints at the same time (reducing the
/// total number of frames). The frame clock can also automatically
/// stop painting when it knows the frames will not be visible, or
/// scale back animation framerates.
/// 
/// `GdkFrameClock` is designed to be compatible with an OpenGL-based
/// implementation or with mozRequestAnimationFrame in Firefox,
/// for example.
/// 
/// A frame clock is idle until someone requests a frame with
/// `gdk_frame_clock_request_phase()`. At some later point that makes
/// sense for the synchronization being implemented, the clock will
/// process a frame and emit signals for each phase that has been
/// requested. (See the signals of the `GdkFrameClock` class for
/// documentation of the phases. `GDK_FRAME_CLOCK_PHASE_UPDATE` and the
/// `GdkFrameClock::update` signal are most interesting for application
/// writers, and are used to update the animations, using the frame time
/// given by `gdk_frame_clock_get_frame_time()`.
/// 
/// The frame time is reported in microseconds and generally in the same
/// timescale as `g_get_monotonic_time()`, however, it is not the same
/// as `g_get_monotonic_time()`. The frame time does not advance during
/// the time a frame is being painted, and outside of a frame, an attempt
/// is made so that all calls to `gdk_frame_clock_get_frame_time()` that
/// are called at a “similar” time get the same value. This means that
/// if different animations are timed by looking at the difference in
/// time between an initial value from `gdk_frame_clock_get_frame_time()`
/// and the value inside the `GdkFrameClock::update` signal of the clock,
/// they will stay exactly synchronized.
public struct FrameClockRef: FrameClockProtocol {
        /// Untyped pointer to the underlying `GdkFrameClock` instance.
    /// For type-safe access, use the generated, typed pointer `frame_clock_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameClockRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkFrameClock>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkFrameClock>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkFrameClock>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkFrameClock>?) {
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

    /// Reference intialiser for a related type that implements `FrameClockProtocol`
    @inlinable init<T: FrameClockProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameClock` type acts as a reference-counted owner of an underlying `GdkFrameClock` instance.
/// It provides the methods that can operate on this data type through `FrameClockProtocol` conformance.
/// Use `FrameClock` as a strong reference or owner of a `GdkFrameClock` instance.
///
/// A `GdkFrameClock` tells the application when to update and repaint a
/// window. This may be synced to the vertical refresh rate of the
/// monitor, for example. Even when the frame clock uses a simple timer
/// rather than a hardware-based vertical sync, the frame clock helps
/// because it ensures everything paints at the same time (reducing the
/// total number of frames). The frame clock can also automatically
/// stop painting when it knows the frames will not be visible, or
/// scale back animation framerates.
/// 
/// `GdkFrameClock` is designed to be compatible with an OpenGL-based
/// implementation or with mozRequestAnimationFrame in Firefox,
/// for example.
/// 
/// A frame clock is idle until someone requests a frame with
/// `gdk_frame_clock_request_phase()`. At some later point that makes
/// sense for the synchronization being implemented, the clock will
/// process a frame and emit signals for each phase that has been
/// requested. (See the signals of the `GdkFrameClock` class for
/// documentation of the phases. `GDK_FRAME_CLOCK_PHASE_UPDATE` and the
/// `GdkFrameClock::update` signal are most interesting for application
/// writers, and are used to update the animations, using the frame time
/// given by `gdk_frame_clock_get_frame_time()`.
/// 
/// The frame time is reported in microseconds and generally in the same
/// timescale as `g_get_monotonic_time()`, however, it is not the same
/// as `g_get_monotonic_time()`. The frame time does not advance during
/// the time a frame is being painted, and outside of a frame, an attempt
/// is made so that all calls to `gdk_frame_clock_get_frame_time()` that
/// are called at a “similar” time get the same value. This means that
/// if different animations are timed by looking at the difference in
/// time between an initial value from `gdk_frame_clock_get_frame_time()`
/// and the value inside the `GdkFrameClock::update` signal of the clock,
/// they will stay exactly synchronized.
open class FrameClock: Object, FrameClockProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkFrameClock>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkFrameClock>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClock` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkFrameClock>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkFrameClock>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkFrameClock`.
    /// i.e., ownership is transferred to the `FrameClock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkFrameClock>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FrameClockProtocol`
    /// Will retain `GdkFrameClock`.
    /// - Parameter other: an instance of a related type that implements `FrameClockProtocol`
    @inlinable public init<T: FrameClockProtocol>(frameClock other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FrameClock properties

public enum FrameClockSignalName: String, SignalNameProtocol {
    /// This signal ends processing of the frame. Applications
    /// should generally not handle this signal.
    case afterPaint = "after-paint"
    /// This signal begins processing of the frame. Applications
    /// should generally not handle this signal.
    case beforePaint = "before-paint"
    /// This signal is used to flush pending motion events that
    /// are being batched up and compressed together. Applications
    /// should not handle this signal.
    case flushEvents = "flush-events"
    /// This signal is emitted as the second step of toolkit and
    /// application processing of the frame. Any work to update
    /// sizes and positions of application elements should be
    /// performed. GTK+ normally handles this internally.
    case layout = "layout"
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
    /// This signal is emitted as the third step of toolkit and
    /// application processing of the frame. The frame is
    /// repainted. GDK normally handles this internally and
    /// produces expose events, which are turned into GTK+
    /// `GtkWidget::draw` signals.
    case paint = "paint"
    /// This signal is emitted after processing of the frame is
    /// finished, and is handled internally by GTK+ to resume normal
    /// event processing. Applications should not handle this signal.
    case resumeEvents = "resume-events"
    /// This signal is emitted as the first step of toolkit and
    /// application processing of the frame. Animations should
    /// be updated using `gdk_frame_clock_get_frame_time()`.
    /// Applications can connect directly to this signal, or
    /// use `gtk_widget_add_tick_callback()` as a more convenient
    /// interface.
    case update = "update"

}

public extension FrameClockProtocol {
    /// Connect a `FrameClockSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FrameClockSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: FrameClock Class: FrameClockProtocol extension (methods and fields)
public extension FrameClockProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFrameClock` instance.
    @inlinable var frame_clock_ptr: UnsafeMutablePointer<GdkFrameClock>! { return ptr?.assumingMemoryBound(to: GdkFrameClock.self) }

    /// Starts updates for an animation. Until a matching call to
    /// `gdk_frame_clock_end_updating()` is made, the frame clock will continually
    /// request a new frame with the `GDK_FRAME_CLOCK_PHASE_UPDATE` phase.
    /// This function may be called multiple times and frames will be
    /// requested until `gdk_frame_clock_end_updating()` is called the same
    /// number of times.
    @inlinable func beginUpdating() {
        gdk_frame_clock_begin_updating(frame_clock_ptr)
    
    }

    /// Stops updates for an animation. See the documentation for
    /// `gdk_frame_clock_begin_updating()`.
    @inlinable func endUpdating() {
        gdk_frame_clock_end_updating(frame_clock_ptr)
    
    }

    /// Gets the frame timings for the current frame.
    @inlinable func getCurrentTimings() -> FrameTimingsRef! {
        let rv = FrameTimingsRef(gconstpointer: gconstpointer(gdk_frame_clock_get_current_timings(frame_clock_ptr)))
        return rv
    }

    /// A `GdkFrameClock` maintains a 64-bit counter that increments for
    /// each frame drawn.
    @inlinable func getFrameCounter() -> gint64 {
        let rv = gdk_frame_clock_get_frame_counter(frame_clock_ptr)
        return rv
    }

    /// Gets the time that should currently be used for animations.  Inside
    /// the processing of a frame, it’s the time used to compute the
    /// animation position of everything in a frame. Outside of a frame, it's
    /// the time of the conceptual “previous frame,” which may be either
    /// the actual previous frame time, or if that’s too old, an updated
    /// time.
    @inlinable func getFrameTime() -> gint64 {
        let rv = gdk_frame_clock_get_frame_time(frame_clock_ptr)
        return rv
    }

    /// `GdkFrameClock` internally keeps a history of `GdkFrameTimings`
    /// objects for recent frames that can be retrieved with
    /// `gdk_frame_clock_get_timings()`. The set of stored frames
    /// is the set from the counter values given by
    /// `gdk_frame_clock_get_history_start()` and
    /// `gdk_frame_clock_get_frame_counter()`, inclusive.
    @inlinable func getHistoryStart() -> gint64 {
        let rv = gdk_frame_clock_get_history_start(frame_clock_ptr)
        return rv
    }

    /// Using the frame history stored in the frame clock, finds the last
    /// known presentation time and refresh interval, and assuming that
    /// presentation times are separated by the refresh interval,
    /// predicts a presentation time that is a multiple of the refresh
    /// interval after the last presentation time, and later than `base_time`.
    @inlinable func getRefreshInfo(baseTime base_time: gint64, refreshIntervalReturn refresh_interval_return: UnsafeMutablePointer<gint64>! = nil, presentationTimeReturn presentation_time_return: UnsafeMutablePointer<gint64>!) {
        gdk_frame_clock_get_refresh_info(frame_clock_ptr, base_time, refresh_interval_return, presentation_time_return)
    
    }

    /// Retrieves a `GdkFrameTimings` object holding timing information
    /// for the current frame or a recent frame. The `GdkFrameTimings`
    /// object may not yet be complete: see `gdk_frame_timings_get_complete()`.
    @inlinable func getTimings(frameCounter frame_counter: gint64) -> FrameTimingsRef! {
        let rv = FrameTimingsRef(gconstpointer: gconstpointer(gdk_frame_clock_get_timings(frame_clock_ptr, frame_counter)))
        return rv
    }

    /// Asks the frame clock to run a particular phase. The signal
    /// corresponding the requested phase will be emitted the next
    /// time the frame clock processes. Multiple calls to
    /// `gdk_frame_clock_request_phase()` will be combined together
    /// and only one frame processed. If you are displaying animated
    /// content and want to continually request the
    /// `GDK_FRAME_CLOCK_PHASE_UPDATE` phase for a period of time,
    /// you should use `gdk_frame_clock_begin_updating()` instead, since
    /// this allows GTK+ to adjust system parameters to get maximally
    /// smooth animations.
    @inlinable func request(phase: FrameClockPhase) {
        gdk_frame_clock_request_phase(frame_clock_ptr, phase.value)
    
    }
    /// Gets the frame timings for the current frame.
    @inlinable var currentTimings: FrameTimingsRef! {
        /// Gets the frame timings for the current frame.
        get {
            let rv = FrameTimingsRef(gconstpointer: gconstpointer(gdk_frame_clock_get_current_timings(frame_clock_ptr)))
            return rv
        }
    }

    /// A `GdkFrameClock` maintains a 64-bit counter that increments for
    /// each frame drawn.
    @inlinable var frameCounter: gint64 {
        /// A `GdkFrameClock` maintains a 64-bit counter that increments for
        /// each frame drawn.
        get {
            let rv = gdk_frame_clock_get_frame_counter(frame_clock_ptr)
            return rv
        }
    }

    /// Gets the time that should currently be used for animations.  Inside
    /// the processing of a frame, it’s the time used to compute the
    /// animation position of everything in a frame. Outside of a frame, it's
    /// the time of the conceptual “previous frame,” which may be either
    /// the actual previous frame time, or if that’s too old, an updated
    /// time.
    @inlinable var frameTime: gint64 {
        /// Gets the time that should currently be used for animations.  Inside
        /// the processing of a frame, it’s the time used to compute the
        /// animation position of everything in a frame. Outside of a frame, it's
        /// the time of the conceptual “previous frame,” which may be either
        /// the actual previous frame time, or if that’s too old, an updated
        /// time.
        get {
            let rv = gdk_frame_clock_get_frame_time(frame_clock_ptr)
            return rv
        }
    }

    /// `GdkFrameClock` internally keeps a history of `GdkFrameTimings`
    /// objects for recent frames that can be retrieved with
    /// `gdk_frame_clock_get_timings()`. The set of stored frames
    /// is the set from the counter values given by
    /// `gdk_frame_clock_get_history_start()` and
    /// `gdk_frame_clock_get_frame_counter()`, inclusive.
    @inlinable var historyStart: gint64 {
        /// `GdkFrameClock` internally keeps a history of `GdkFrameTimings`
        /// objects for recent frames that can be retrieved with
        /// `gdk_frame_clock_get_timings()`. The set of stored frames
        /// is the set from the counter values given by
        /// `gdk_frame_clock_get_history_start()` and
        /// `gdk_frame_clock_get_frame_counter()`, inclusive.
        get {
            let rv = gdk_frame_clock_get_history_start(frame_clock_ptr)
            return rv
        }
    }


}



