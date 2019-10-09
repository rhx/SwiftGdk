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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDevice` instance.
    var device_ptr: UnsafeMutablePointer<GdkDevice> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DeviceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDevice>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DeviceProtocol`
    init<T: DeviceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `Device` instance.
    public init(_ op: UnsafeMutablePointer<GdkDevice>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DeviceProtocol`
    /// Will retain `GdkDevice`.
    public convenience init<T: DeviceProtocol>(_ other: T) {
        self.init(cast(other.device_ptr))
        g_object_ref(cast(device_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDevice.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDevice.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDevice.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDevice>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DevicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(device_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    @discardableResult func connect(signal kind: DeviceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(device_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DeviceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevice` instance.
    var device_ptr: UnsafeMutablePointer<GdkDevice> { return ptr.assumingMemoryBound(to: GdkDevice.self) }

    /// Returns the associated device to `device`, if `device` is of type
    /// `GDK_DEVICE_TYPE_MASTER`, it will return the paired pointer or
    /// keyboard.
    /// 
    /// If `device` is of type `GDK_DEVICE_TYPE_SLAVE`, it will return
    /// the master device to which `device` is attached to.
    /// 
    /// If `device` is of type `GDK_DEVICE_TYPE_FLOATING`, `nil` will be
    /// returned, as there is no associated device.
    func getAssociatedDevice() -> UnsafeMutablePointer<GdkDevice>! {
        let rv = gdk_device_get_associated_device(cast(device_ptr))
        return cast(rv)
    }

    /// Returns the axes currently available on the device.
    func getAxes() -> GdkAxisFlags {
        let rv = gdk_device_get_axes(cast(device_ptr))
        return rv
    }

    /// Interprets an array of double as axis values for a given device,
    /// and locates the value in the array for a given axis use.
    func getAxis(axes: UnsafeMutablePointer<gdouble>, use: AxisUse, value: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_device_get_axis(cast(device_ptr), cast(axes), use, cast(value))
        return Bool(rv != 0)
    }

    /// Returns the axis use for `index_`.
    func getAxisUse(index_: CUnsignedInt) -> GdkAxisUse {
        let rv = gdk_device_get_axis_use(cast(device_ptr), guint(index_))
        return rv
    }

    /// Interprets an array of double as axis values for a given device,
    /// and locates the value in the array for a given axis label, as returned
    /// by `gdk_device_list_axes()`
    func getAxisValue(axes: UnsafeMutablePointer<gdouble>, axisLabel axis_label: Atom, value: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_device_get_axis_value(cast(device_ptr), cast(axes), cast(axis_label.ptr), cast(value))
        return Bool(rv != 0)
    }

    /// Returns the device type for `device`.
    func getDeviceType() -> GdkDeviceType {
        let rv = gdk_device_get_device_type(cast(device_ptr))
        return rv
    }

    /// Returns the `GdkDisplay` to which `device` pertains.
    func getDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gdk_device_get_display(cast(device_ptr))
        return cast(rv)
    }

    /// Determines whether the pointer follows device motion.
    /// This is not meaningful for keyboard devices, which don't have a pointer.
    func getHasCursor() -> Bool {
        let rv = gdk_device_get_has_cursor(cast(device_ptr))
        return Bool(rv != 0)
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
    func getHistory(window: WindowProtocol, start: UInt32, stop: UInt32, events: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<GdkTimeCoord>>>, nEvents n_events: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = gdk_device_get_history(cast(device_ptr), cast(window.ptr), guint32(start), guint32(stop), cast(events), cast(n_events))
        return Bool(rv != 0)
    }

    /// If `index_` has a valid keyval, this function will return `true`
    /// and fill in `keyval` and `modifiers` with the keyval settings.
    func getKey(index_: CUnsignedInt, keyval: UnsafeMutablePointer<CUnsignedInt>, modifiers: UnsafeMutablePointer<GdkModifierType>) -> Bool {
        let rv = gdk_device_get_key(cast(device_ptr), guint(index_), cast(keyval), cast(modifiers))
        return Bool(rv != 0)
    }

    /// Gets information about which window the given pointer device is in, based on events
    /// that have been received so far from the display server. If another application
    /// has a pointer grab, or this application has a grab with owner_events = `false`,
    /// `nil` may be returned even if the pointer is physically over one of this
    /// application's windows.
    func getLastEventWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_device_get_last_event_window(cast(device_ptr))
        return cast(rv)
    }

    /// Determines the mode of the device.
    func getMode() -> GdkInputMode {
        let rv = gdk_device_get_mode(cast(device_ptr))
        return rv
    }

    /// Returns the number of axes the device currently has.
    func getNAxes() -> CInt {
        let rv = gdk_device_get_n_axes(cast(device_ptr))
        return CInt(rv)
    }

    /// Returns the number of keys the device currently has.
    func getNKeys() -> CInt {
        let rv = gdk_device_get_n_keys(cast(device_ptr))
        return CInt(rv)
    }

    /// Determines the name of the device.
    func getName() -> String! {
        let rv = gdk_device_get_name(cast(device_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the current location of `device`. As a slave device
    /// coordinates are those of its master pointer, This function
    /// may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them, see `gdk_device_grab()`.
    func getPosition(screen: ScreenProtocol, x: UnsafeMutablePointer<CInt>, y: UnsafeMutablePointer<CInt>) {
        gdk_device_get_position(cast(device_ptr), cast(screen.ptr), cast(x), cast(y))
    
    }

    /// Gets the current location of `device` in double precision. As a slave device's
    /// coordinates are those of its master pointer, this function
    /// may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them. See `gdk_device_grab()`.
    func getPositionDouble(screen: ScreenProtocol, x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) {
        gdk_device_get_position_double(cast(device_ptr), cast(screen.ptr), cast(x), cast(y))
    
    }

    /// Returns the product ID of this device, or `nil` if this information couldn't
    /// be obtained. This ID is retrieved from the device, and is thus constant for
    /// it. See `gdk_device_get_vendor_id()` for more information.
    func getProductId() -> String! {
        let rv = gdk_device_get_product_id(cast(device_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the `GdkSeat` the device belongs to.
    func getSeat() -> UnsafeMutablePointer<GdkSeat>! {
        let rv = gdk_device_get_seat(cast(device_ptr))
        return cast(rv)
    }

    /// Determines the type of the device.
    func getSource() -> GdkInputSource {
        let rv = gdk_device_get_source(cast(device_ptr))
        return rv
    }

    /// Gets the current state of a pointer device relative to `window`. As a slave
    /// device’s coordinates are those of its master pointer, this
    /// function may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them. See `gdk_device_grab()`.
    func getState(window: WindowProtocol, axes: UnsafeMutablePointer<gdouble>, mask: UnsafeMutablePointer<GdkModifierType>) {
        gdk_device_get_state(cast(device_ptr), cast(window.ptr), cast(axes), cast(mask))
    
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
    func getVendorId() -> String! {
        let rv = gdk_device_get_vendor_id(cast(device_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Obtains the window underneath `device`, returning the location of the device in `win_x` and `win_y`. Returns
    /// `nil` if the window tree under `device` is not known to GDK (for example, belongs to another application).
    /// 
    /// As a slave device coordinates are those of its master pointer, This
    /// function may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them, see `gdk_device_grab()`.
    func getWindowAtPosition(winX win_x: UnsafeMutablePointer<CInt>, winY win_y: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_device_get_window_at_position(cast(device_ptr), cast(win_x), cast(win_y))
        return cast(rv)
    }

    /// Obtains the window underneath `device`, returning the location of the device in `win_x` and `win_y` in
    /// double precision. Returns `nil` if the window tree under `device` is not known to GDK (for example,
    /// belongs to another application).
    /// 
    /// As a slave device coordinates are those of its master pointer, This
    /// function may not be called on devices of type `GDK_DEVICE_TYPE_SLAVE`,
    /// unless there is an ongoing grab on them, see `gdk_device_grab()`.
    func getWindowAtPositionDouble(winX win_x: UnsafeMutablePointer<gdouble>, winY win_y: UnsafeMutablePointer<gdouble>) -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_device_get_window_at_position_double(cast(device_ptr), cast(win_x), cast(win_y))
        return cast(rv)
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
    @available(*, deprecated) func grab(window: WindowProtocol, grabOwnership grab_ownership: GrabOwnership, ownerEvents owner_events: Bool, eventMask event_mask: EventMask, cursor: CursorProtocol, time_: UInt32) -> GdkGrabStatus {
        let rv = gdk_device_grab(cast(device_ptr), cast(window.ptr), grab_ownership, gboolean(owner_events ? 1 : 0), event_mask, cast(cursor.ptr), guint32(time_))
        return rv
    }

    /// Returns a `GList` of `GdkAtoms`, containing the labels for
    /// the axes that `device` currently has.
    func listAxes() -> UnsafeMutablePointer<GList>! {
        let rv = gdk_device_list_axes(cast(device_ptr))
        return cast(rv)
    }

    /// If the device if of type `GDK_DEVICE_TYPE_MASTER`, it will return
    /// the list of slave devices attached to it, otherwise it will return
    /// `nil`
    func listSlaveDevices() -> UnsafeMutablePointer<GList>! {
        let rv = gdk_device_list_slave_devices(cast(device_ptr))
        return cast(rv)
    }

    /// Specifies how an axis of a device is used.
    func setAxisUse(index_: CUnsignedInt, use: AxisUse) {
        gdk_device_set_axis_use(cast(device_ptr), guint(index_), use)
    
    }

    /// Specifies the X key event to generate when a macro button of a device
    /// is pressed.
    func setKey(index_: CUnsignedInt, keyval: CUnsignedInt, modifiers: ModifierType) {
        gdk_device_set_key(cast(device_ptr), guint(index_), guint(keyval), modifiers)
    
    }

    /// Sets a the mode of an input device. The mode controls if the
    /// device is active and whether the device’s range is mapped to the
    /// entire screen or to a single window.
    /// 
    /// Note: This is only meaningful for floating devices, master devices (and
    /// slaves connected to these) drive the pointer cursor, which is not limited
    /// by the input mode.
    func set(mode: InputMode) -> Bool {
        let rv = gdk_device_set_mode(cast(device_ptr), mode)
        return Bool(rv != 0)
    }

    /// Release any grab on `device`.
    ///
    /// **ungrab is deprecated:**
    /// Use gdk_seat_ungrab() instead.
    @available(*, deprecated) func ungrab(time_: UInt32) {
        gdk_device_ungrab(cast(device_ptr), guint32(time_))
    
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
    func warp(screen: ScreenProtocol, x: CInt, y: CInt) {
        gdk_device_warp(cast(device_ptr), cast(screen.ptr), gint(x), gint(y))
    
    }

    /// Determines information about the current keyboard grab.
    /// This is not public API and must not be used by applications.
    ///
    /// **grab_info_libgtk_only is deprecated:**
    /// The symbol was never meant to be used outside
    ///   of GTK+
    @available(*, deprecated) func grabInfoLibgtkOnly(display: DisplayProtocol, grabWindow grab_window: WindowProtocol, ownerEvents owner_events: UnsafeMutablePointer<Bool>) -> Bool {
        let rv = gdk_device_grab_info_libgtk_only(cast(display.ptr), cast(device_ptr), cast(grab_window.ptr), cast(owner_events))
        return Bool(rv != 0)
    }

    /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source.
    func dragBeginForDevice(window: WindowProtocol, targets: ListProtocol) -> UnsafeMutablePointer<GdkDragContext>! {
        let rv = gdk_drag_begin_for_device(cast(window.ptr), cast(device_ptr), cast(targets.ptr))
        return cast(rv)
    }

    /// Starts a drag and creates a new drag context for it.
    /// 
    /// This function is called by the drag source.
    func dragBeginFromPoint(window: WindowProtocol, targets: ListProtocol, xRoot x_root: CInt, yRoot y_root: CInt) -> UnsafeMutablePointer<GdkDragContext>! {
        let rv = gdk_drag_begin_from_point(cast(window.ptr), cast(device_ptr), cast(targets.ptr), gint(x_root), gint(y_root))
        return cast(rv)
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
    var associatedDevice: UnsafeMutablePointer<GdkDevice>! {
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
            let rv = gdk_device_get_associated_device(cast(device_ptr))
            return cast(rv)
        }
    }

    /// The axes currently available for this device.
    var axes: GdkAxisFlags {
        /// Returns the axes currently available on the device.
        get {
            let rv = gdk_device_get_axes(cast(device_ptr))
            return rv
        }
    }

    /// Returns the device type for `device`.
    var deviceType: GdkDeviceType {
        /// Returns the device type for `device`.
        get {
            let rv = gdk_device_get_device_type(cast(device_ptr))
            return rv
        }
    }

    /// The `GdkDisplay` the `GdkDevice` pertains to.
    var display: UnsafeMutablePointer<GdkDisplay>! {
        /// Returns the `GdkDisplay` to which `device` pertains.
        get {
            let rv = gdk_device_get_display(cast(device_ptr))
            return cast(rv)
        }
    }

    /// Determines whether the pointer follows device motion.
    /// This is not meaningful for keyboard devices, which don't have a pointer.
    var hasCursor: Bool {
        /// Determines whether the pointer follows device motion.
        /// This is not meaningful for keyboard devices, which don't have a pointer.
        get {
            let rv = gdk_device_get_has_cursor(cast(device_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets information about which window the given pointer device is in, based on events
    /// that have been received so far from the display server. If another application
    /// has a pointer grab, or this application has a grab with owner_events = `false`,
    /// `nil` may be returned even if the pointer is physically over one of this
    /// application's windows.
    var lastEventWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Gets information about which window the given pointer device is in, based on events
        /// that have been received so far from the display server. If another application
        /// has a pointer grab, or this application has a grab with owner_events = `false`,
        /// `nil` may be returned even if the pointer is physically over one of this
        /// application's windows.
        get {
            let rv = gdk_device_get_last_event_window(cast(device_ptr))
            return cast(rv)
        }
    }

    /// Determines the mode of the device.
    var mode: GdkInputMode {
        /// Determines the mode of the device.
        get {
            let rv = gdk_device_get_mode(cast(device_ptr))
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
            let _ = gdk_device_set_mode(cast(device_ptr), newValue)
        }
    }

    /// Returns the number of axes the device currently has.
    var nAxes: CInt {
        /// Returns the number of axes the device currently has.
        get {
            let rv = gdk_device_get_n_axes(cast(device_ptr))
            return CInt(rv)
        }
    }

    /// Returns the number of keys the device currently has.
    var nKeys: CInt {
        /// Returns the number of keys the device currently has.
        get {
            let rv = gdk_device_get_n_keys(cast(device_ptr))
            return CInt(rv)
        }
    }

    /// The device name.
    var name: String! {
        /// Determines the name of the device.
        get {
            let rv = gdk_device_get_name(cast(device_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Returns the product ID of this device, or `nil` if this information couldn't
    /// be obtained. This ID is retrieved from the device, and is thus constant for
    /// it. See `gdk_device_get_vendor_id()` for more information.
    var productId: String! {
        /// Returns the product ID of this device, or `nil` if this information couldn't
        /// be obtained. This ID is retrieved from the device, and is thus constant for
        /// it. See `gdk_device_get_vendor_id()` for more information.
        get {
            let rv = gdk_device_get_product_id(cast(device_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// `GdkSeat` of this device.
    var seat: UnsafeMutablePointer<GdkSeat>! {
        /// Returns the `GdkSeat` the device belongs to.
        get {
            let rv = gdk_device_get_seat(cast(device_ptr))
            return cast(rv)
        }
    }

    /// Determines the type of the device.
    var source: GdkInputSource {
        /// Determines the type of the device.
        get {
            let rv = gdk_device_get_source(cast(device_ptr))
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
    var vendorId: String! {
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
            let rv = gdk_device_get_vendor_id(cast(device_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDeviceManager` instance.
    var device_manager_ptr: UnsafeMutablePointer<GdkDeviceManager> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DeviceManagerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDeviceManager>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DeviceManagerProtocol`
    init<T: DeviceManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `DeviceManager` instance.
    public init(_ op: UnsafeMutablePointer<GdkDeviceManager>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DeviceManagerProtocol`
    /// Will retain `GdkDeviceManager`.
    public convenience init<T: DeviceManagerProtocol>(_ other: T) {
        self.init(cast(other.device_manager_ptr))
        g_object_ref(cast(device_manager_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDeviceManager.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDeviceManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDeviceManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceManagerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDeviceManager>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DeviceManagerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(device_manager_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    @discardableResult func connect(signal kind: DeviceManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(device_manager_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DeviceManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDeviceManager` instance.
    var device_manager_ptr: UnsafeMutablePointer<GdkDeviceManager> { return ptr.assumingMemoryBound(to: GdkDeviceManager.self) }

    /// Returns the client pointer, that is, the master pointer that acts as the core pointer
    /// for this application. In X11, window managers may change this depending on the interaction
    /// pattern under the presence of several pointers.
    /// 
    /// You should use this function seldomly, only in code that isn’t triggered by a `GdkEvent`
    /// and there aren’t other means to get a meaningful `GdkDevice` to operate on.
    ///
    /// **get_client_pointer is deprecated:**
    /// Use gdk_seat_get_pointer() instead.
    @available(*, deprecated) func getClientPointer() -> UnsafeMutablePointer<GdkDevice>! {
        let rv = gdk_device_manager_get_client_pointer(cast(device_manager_ptr))
        return cast(rv)
    }

    /// Gets the `GdkDisplay` associated to `device_manager`.
    func getDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gdk_device_manager_get_display(cast(device_manager_ptr))
        return cast(rv)
    }

    /// Returns the list of devices of type `type` currently attached to
    /// `device_manager`.
    ///
    /// **list_devices is deprecated:**
    /// , use gdk_seat_get_pointer(), gdk_seat_get_keyboard()
    ///             and gdk_seat_get_slaves() instead.
    @available(*, deprecated) func listDevices(type: DeviceType) -> UnsafeMutablePointer<GList>! {
        let rv = gdk_device_manager_list_devices(cast(device_manager_ptr), type)
        return cast(rv)
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
    var clientPointer: UnsafeMutablePointer<GdkDevice>! {
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
            let rv = gdk_device_manager_get_client_pointer(cast(device_manager_ptr))
            return cast(rv)
        }
    }

    var display: UnsafeMutablePointer<GdkDisplay>! {
        /// Gets the `GdkDisplay` associated to `device_manager`.
        get {
            let rv = gdk_device_manager_get_display(cast(device_manager_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDeviceTool` instance.
    var device_tool_ptr: UnsafeMutablePointer<GdkDeviceTool> { get }
}

/// The `DeviceToolRef` type acts as a lightweight Swift reference to an underlying `GdkDeviceTool` instance.
/// It exposes methods that can operate on this data type through `DeviceToolProtocol` conformance.
/// Use `DeviceToolRef` only as an `unowned` reference to an existing `GdkDeviceTool` instance.
///

public struct DeviceToolRef: DeviceToolProtocol {
    /// Untyped pointer to the underlying `GdkDeviceTool` instance.
    /// For type-safe access, use the generated, typed pointer `device_tool_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DeviceToolRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDeviceTool>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DeviceToolProtocol`
    init<T: DeviceToolProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DeviceTool` type acts as a reference-counted owner of an underlying `GdkDeviceTool` instance.
/// It provides the methods that can operate on this data type through `DeviceToolProtocol` conformance.
/// Use `DeviceTool` as a strong reference or owner of a `GdkDeviceTool` instance.
///

open class DeviceTool: Object, DeviceToolProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DeviceTool` instance.
    public init(_ op: UnsafeMutablePointer<GdkDeviceTool>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DeviceToolProtocol`
    /// Will retain `GdkDeviceTool`.
    public convenience init<T: DeviceToolProtocol>(_ other: T) {
        self.init(cast(other.device_tool_ptr))
        g_object_ref(cast(device_tool_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDeviceTool.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDeviceTool.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDeviceTool.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DeviceToolProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDeviceTool>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DeviceToolPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(device_tool_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    @discardableResult func connect(signal kind: DeviceToolSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(device_tool_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DeviceToolProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDeviceTool` instance.
    var device_tool_ptr: UnsafeMutablePointer<GdkDeviceTool> { return ptr.assumingMemoryBound(to: GdkDeviceTool.self) }

    /// Gets the hardware ID of this tool, or 0 if it's not known. When
    /// non-zero, the identificator is unique for the given tool model,
    /// meaning that two identical tools will share the same `hardware_id`,
    /// but will have different serial numbers (see `gdk_device_tool_get_serial()`).
    /// 
    /// This is a more concrete (and device specific) method to identify
    /// a `GdkDeviceTool` than `gdk_device_tool_get_tool_type()`, as a tablet
    /// may support multiple devices with the same `GdkDeviceToolType`,
    /// but having different hardware identificators.
    func getHardwareId() -> UInt64 {
        let rv = gdk_device_tool_get_hardware_id(cast(device_tool_ptr))
        return UInt64(rv)
    }

    /// Gets the serial of this tool, this value can be used to identify a
    /// physical tool (eg. a tablet pen) across program executions.
    func getSerial() -> UInt64 {
        let rv = gdk_device_tool_get_serial(cast(device_tool_ptr))
        return UInt64(rv)
    }

    /// Gets the `GdkDeviceToolType` of the tool.
    func getToolType() -> GdkDeviceToolType {
        let rv = gdk_device_tool_get_tool_type(cast(device_tool_ptr))
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
    var hardwareId: UInt64 {
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
            let rv = gdk_device_tool_get_hardware_id(cast(device_tool_ptr))
            return UInt64(rv)
        }
    }

    var serial: UInt64 {
        /// Gets the serial of this tool, this value can be used to identify a
        /// physical tool (eg. a tablet pen) across program executions.
        get {
            let rv = gdk_device_tool_get_serial(cast(device_tool_ptr))
            return UInt64(rv)
        }
    }

    /// Gets the `GdkDeviceToolType` of the tool.
    var toolType: GdkDeviceToolType {
        /// Gets the `GdkDeviceToolType` of the tool.
        get {
            let rv = gdk_device_tool_get_tool_type(cast(device_tool_ptr))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDisplay` instance.
    var display_ptr: UnsafeMutablePointer<GdkDisplay> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DisplayRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDisplay>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DisplayProtocol`
    init<T: DisplayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GdkDisplay`. This is a convenience
    /// function for:
    /// `gdk_display_manager_get_default_display (gdk_display_manager_get ())`.
    static func getDefault() -> DisplayRef! {
        let rv = gdk_display_get_default()
        return rv.map { DisplayRef(cast($0)) }
    }

    /// Opens a display.
    static func open(displayName display_name: UnsafePointer<gchar>) -> DisplayRef! {
        let rv = gdk_display_open(display_name)
        return rv.map { DisplayRef(cast($0)) }
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
    @available(*, deprecated) static func openDefaultLibgtkOnly() -> DisplayRef! {
        let rv = gdk_display_open_default_libgtk_only()
        return rv.map { DisplayRef(cast($0)) }
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
    /// Ownership is transferred to the `Display` instance.
    public init(_ op: UnsafeMutablePointer<GdkDisplay>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DisplayProtocol`
    /// Will retain `GdkDisplay`.
    public convenience init<T: DisplayProtocol>(_ other: T) {
        self.init(cast(other.display_ptr))
        g_object_ref(cast(display_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDisplay.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDisplay.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDisplay.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDisplay>(opaquePointer))
    }


    /// Gets the default `GdkDisplay`. This is a convenience
    /// function for:
    /// `gdk_display_manager_get_default_display (gdk_display_manager_get ())`.
    public static func getDefault() -> Display! {
        let rv = gdk_display_get_default()
        return rv.map { Display(cast($0)) }
    }

    /// Opens a display.
    public static func open(displayName display_name: UnsafePointer<gchar>) -> Display! {
        let rv = gdk_display_open(display_name)
        return rv.map { Display(cast($0)) }
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
    @available(*, deprecated) public static func openDefaultLibgtkOnly() -> Display! {
        let rv = gdk_display_open_default_libgtk_only()
        return rv.map { Display(cast($0)) }
    }

}

// MARK: - no Display properties

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
    @discardableResult func connect(signal kind: DisplaySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(display_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DisplayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDisplay` instance.
    var display_ptr: UnsafeMutablePointer<GdkDisplay> { return ptr.assumingMemoryBound(to: GdkDisplay.self) }

    /// Emits a short beep on `display`
    func beep() {
        gdk_display_beep(cast(display_ptr))
    
    }

    /// Closes the connection to the windowing system for the given display,
    /// and cleans up associated resources.
    func close() {
        gdk_display_close(cast(display_ptr))
    
    }

    /// Returns `true` if there is an ongoing grab on `device` for `display`.
    func deviceIsGrabbed(device: DeviceProtocol) -> Bool {
        let rv = gdk_display_device_is_grabbed(cast(display_ptr), cast(device.ptr))
        return Bool(rv != 0)
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
    func flush() {
        gdk_display_flush(cast(display_ptr))
    
    }

    /// Returns a `GdkAppLaunchContext` suitable for launching
    /// applications on the given display.
    func getAppLaunchContext() -> UnsafeMutablePointer<GdkAppLaunchContext>! {
        let rv = gdk_display_get_app_launch_context(cast(display_ptr))
        return cast(rv)
    }

    /// Returns the default size to use for cursors on `display`.
    func getDefaultCursorSize() -> CUnsignedInt {
        let rv = gdk_display_get_default_cursor_size(cast(display_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the default group leader window for all toplevel windows
    /// on `display`. This window is implicitly created by GDK.
    /// See `gdk_window_set_group()`.
    func getDefaultGroup() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_display_get_default_group(cast(display_ptr))
        return cast(rv)
    }

    /// Get the default `GdkScreen` for `display`.
    func getDefaultScreen() -> UnsafeMutablePointer<GdkScreen>! {
        let rv = gdk_display_get_default_screen(cast(display_ptr))
        return cast(rv)
    }

    /// Returns the default `GdkSeat` for this display.
    func getDefaultSeat() -> UnsafeMutablePointer<GdkSeat>! {
        let rv = gdk_display_get_default_seat(cast(display_ptr))
        return cast(rv)
    }

    /// Returns the `GdkDeviceManager` associated to `display`.
    ///
    /// **get_device_manager is deprecated:**
    /// Use gdk_display_get_default_seat() and #GdkSeat operations.
    @available(*, deprecated) func getDeviceManager() -> UnsafeMutablePointer<GdkDeviceManager>! {
        let rv = gdk_display_get_device_manager(cast(display_ptr))
        return cast(rv)
    }

    /// Gets the next `GdkEvent` to be processed for `display`, fetching events from the
    /// windowing system if necessary.
    func getEvent() -> UnsafeMutablePointer<GdkEvent>! {
        let rv = gdk_display_get_event(cast(display_ptr))
        return cast(rv)
    }

    /// Gets the maximal size to use for cursors on `display`.
    func getMaximalCursorSize(width: UnsafeMutablePointer<CUnsignedInt>, height: UnsafeMutablePointer<CUnsignedInt>) {
        gdk_display_get_maximal_cursor_size(cast(display_ptr), cast(width), cast(height))
    
    }

    /// Gets a monitor associated with this display.
    func getMonitor(monitorNum monitor_num: CInt) -> UnsafeMutablePointer<GdkMonitor>! {
        let rv = gdk_display_get_monitor(cast(display_ptr), monitor_num)
        return cast(rv)
    }

    /// Gets the monitor in which the point (`x`, `y`) is located,
    /// or a nearby monitor if the point is not in any monitor.
    func getMonitorAtPoint(x: CInt, y: CInt) -> UnsafeMutablePointer<GdkMonitor>! {
        let rv = gdk_display_get_monitor_at_point(cast(display_ptr), x, y)
        return cast(rv)
    }

    /// Gets the monitor in which the largest area of `window`
    /// resides, or a monitor close to `window` if it is outside
    /// of all monitors.
    func getMonitorAt(window: WindowProtocol) -> UnsafeMutablePointer<GdkMonitor>! {
        let rv = gdk_display_get_monitor_at_window(cast(display_ptr), cast(window.ptr))
        return cast(rv)
    }

    /// Gets the number of monitors that belong to `display`.
    /// 
    /// The returned number is valid until the next emission of the
    /// `GdkDisplay::monitor`-added or `GdkDisplay::monitor`-removed signal.
    func getNMonitors() -> CInt {
        let rv = gdk_display_get_n_monitors(cast(display_ptr))
        return rv
    }

    /// Gets the number of screen managed by the `display`.
    ///
    /// **get_n_screens is deprecated:**
    /// The number of screens is always 1.
    @available(*, deprecated) func getNScreens() -> CInt {
        let rv = gdk_display_get_n_screens(cast(display_ptr))
        return CInt(rv)
    }

    /// Gets the name of the display.
    func getName() -> String! {
        let rv = gdk_display_get_name(cast(display_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the current location of the pointer and the current modifier
    /// mask for a given display.
    ///
    /// **get_pointer is deprecated:**
    /// Use gdk_device_get_position() instead.
    @available(*, deprecated) func getPointer(screen: ScreenProtocol, x: UnsafeMutablePointer<CInt>, y: UnsafeMutablePointer<CInt>, mask: UnsafeMutablePointer<GdkModifierType>) {
        gdk_display_get_pointer(cast(display_ptr), cast(screen.ptr), cast(x), cast(y), cast(mask))
    
    }

    /// Gets the primary monitor for the display.
    /// 
    /// The primary monitor is considered the monitor where the “main desktop”
    /// lives. While normal application windows typically allow the window
    /// manager to place the windows, specialized desktop applications
    /// such as panels should place themselves on the primary monitor.
    func getPrimaryMonitor() -> UnsafeMutablePointer<GdkMonitor>! {
        let rv = gdk_display_get_primary_monitor(cast(display_ptr))
        return cast(rv)
    }

    /// Returns a screen object for one of the screens of the display.
    ///
    /// **get_screen is deprecated:**
    /// There is only one screen; use gdk_display_get_default_screen() to get it.
    @available(*, deprecated) func getScreen(screenNum screen_num: CInt) -> UnsafeMutablePointer<GdkScreen>! {
        let rv = gdk_display_get_screen(cast(display_ptr), gint(screen_num))
        return cast(rv)
    }

    /// Obtains the window underneath the mouse pointer, returning the location
    /// of the pointer in that window in `win_x`, `win_y` for `screen`. Returns `nil`
    /// if the window under the mouse pointer is not known to GDK (for example,
    /// belongs to another application).
    ///
    /// **get_window_at_pointer is deprecated:**
    /// Use gdk_device_get_window_at_position() instead.
    @available(*, deprecated) func getWindowAtPointer(winX win_x: UnsafeMutablePointer<CInt>, winY win_y: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_display_get_window_at_pointer(cast(display_ptr), cast(win_x), cast(win_y))
        return cast(rv)
    }

    /// Returns whether the display has events that are waiting
    /// to be processed.
    func hasPending() -> Bool {
        let rv = gdk_display_has_pending(cast(display_ptr))
        return Bool(rv != 0)
    }

    /// Release any keyboard grab
    ///
    /// **keyboard_ungrab is deprecated:**
    /// Use gdk_device_ungrab(), together with gdk_device_grab()
    ///             instead.
    @available(*, deprecated) func keyboardUngrab(time_: UInt32) {
        gdk_display_keyboard_ungrab(cast(display_ptr), guint32(time_))
    
    }

    /// Returns the list of available input devices attached to `display`.
    /// The list is statically allocated and should not be freed.
    ///
    /// **list_devices is deprecated:**
    /// Use gdk_device_manager_list_devices() instead.
    @available(*, deprecated) func listDevices() -> UnsafeMutablePointer<GList>! {
        let rv = gdk_display_list_devices(cast(display_ptr))
        return cast(rv)
    }

    /// Returns the list of seats known to `display`.
    func listSeats() -> UnsafeMutablePointer<GList>! {
        let rv = gdk_display_list_seats(cast(display_ptr))
        return cast(rv)
    }

    /// Indicates to the GUI environment that the application has
    /// finished loading, using a given identifier.
    /// 
    /// GTK+ will call this function automatically for `GtkWindow`
    /// with custom startup-notification identifier unless
    /// `gtk_window_set_auto_startup_notification()` is called to
    /// disable that feature.
    func notifyStartupComplete(startupId startup_id: UnsafePointer<gchar>) {
        gdk_display_notify_startup_complete(cast(display_ptr), startup_id)
    
    }

    /// Gets a copy of the first `GdkEvent` in the `display`’s event queue, without
    /// removing the event from the queue.  (Note that this function will
    /// not get more events from the windowing system.  It only checks the events
    /// that have already been moved to the GDK event queue.)
    func peekEvent() -> UnsafeMutablePointer<GdkEvent>! {
        let rv = gdk_display_peek_event(cast(display_ptr))
        return cast(rv)
    }

    /// Test if the pointer is grabbed.
    ///
    /// **pointer_is_grabbed is deprecated:**
    /// Use gdk_display_device_is_grabbed() instead.
    @available(*, deprecated) func pointerIsGrabbed() -> Bool {
        let rv = gdk_display_pointer_is_grabbed(cast(display_ptr))
        return Bool(rv != 0)
    }

    /// Release any pointer grab.
    ///
    /// **pointer_ungrab is deprecated:**
    /// Use gdk_device_ungrab(), together with gdk_device_grab()
    ///             instead.
    @available(*, deprecated) func pointerUngrab(time_: UInt32) {
        gdk_display_pointer_ungrab(cast(display_ptr), guint32(time_))
    
    }

    /// Appends a copy of the given event onto the front of the event
    /// queue for `display`.
    func put(event: UnsafePointer<GdkEvent>) {
        gdk_display_put_event(cast(display_ptr), cast(event))
    
    }

    /// Request `GdkEventOwnerChange` events for ownership changes
    /// of the selection named by the given atom.
    func requestSelectionNotification(selection: Atom) -> Bool {
        let rv = gdk_display_request_selection_notification(cast(display_ptr), cast(selection.ptr))
        return Bool(rv != 0)
    }

    /// Sets the double click distance (two clicks within this distance
    /// count as a double click and result in a `GDK_2BUTTON_PRESS` event).
    /// See also `gdk_display_set_double_click_time()`.
    /// Applications should not set this, it is a global
    /// user-configured setting.
    func setDoubleClick(distance: CUnsignedInt) {
        gdk_display_set_double_click_distance(cast(display_ptr), guint(distance))
    
    }

    /// Sets the double click time (two clicks within this time interval
    /// count as a double click and result in a `GDK_2BUTTON_PRESS` event).
    /// Applications should not set this, it is a global
    /// user-configured setting.
    func setDoubleClickTime(msec: CUnsignedInt) {
        gdk_display_set_double_click_time(cast(display_ptr), guint(msec))
    
    }

    /// Issues a request to the clipboard manager to store the
    /// clipboard data. On X11, this is a special program that works
    /// according to the
    /// [FreeDesktop Clipboard Specification](http://www.freedesktop.org/Standards/clipboard-manager-spec).
    func storeClipboard(clipboardWindow clipboard_window: WindowProtocol, time_: UInt32, targets: UnsafePointer<GdkAtom>, nTargets n_targets: CInt) {
        gdk_display_store_clipboard(cast(display_ptr), cast(clipboard_window.ptr), guint32(time_), cast(targets), gint(n_targets))
    
    }

    /// Returns whether the speicifed display supports clipboard
    /// persistance; i.e. if it’s possible to store the clipboard data after an
    /// application has quit. On X11 this checks if a clipboard daemon is
    /// running.
    func supportsClipboardPersistence() -> Bool {
        let rv = gdk_display_supports_clipboard_persistence(cast(display_ptr))
        return Bool(rv != 0)
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
    @available(*, deprecated) func supportsComposite() -> Bool {
        let rv = gdk_display_supports_composite(cast(display_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if cursors can use an 8bit alpha channel
    /// on `display`. Otherwise, cursors are restricted to bilevel
    /// alpha (i.e. a mask).
    func supportsCursorAlpha() -> Bool {
        let rv = gdk_display_supports_cursor_alpha(cast(display_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if multicolored cursors are supported
    /// on `display`. Otherwise, cursors have only a forground
    /// and a background color.
    func supportsCursorColor() -> Bool {
        let rv = gdk_display_supports_cursor_color(cast(display_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if `gdk_window_input_shape_combine_mask()` can
    /// be used to modify the input shape of windows on `display`.
    func supportsInputShapes() -> Bool {
        let rv = gdk_display_supports_input_shapes(cast(display_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether `GdkEventOwnerChange` events will be
    /// sent when the owner of a selection changes.
    func supportsSelectionNotification() -> Bool {
        let rv = gdk_display_supports_selection_notification(cast(display_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if `gdk_window_shape_combine_mask()` can
    /// be used to create shaped windows on `display`.
    func supportsShapes() -> Bool {
        let rv = gdk_display_supports_shapes(cast(display_ptr))
        return Bool(rv != 0)
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
    func sync() {
        gdk_display_sync(cast(display_ptr))
    
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
    @available(*, deprecated) func warpPointer(screen: ScreenProtocol, x: CInt, y: CInt) {
        gdk_display_warp_pointer(cast(display_ptr), cast(screen.ptr), gint(x), gint(y))
    
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
    func pangoContextGetForDisplay() -> UnsafeMutablePointer<PangoContext>! {
        let rv = gdk_pango_context_get_for_display(cast(display_ptr))
        return cast(rv)
    }

    /// Determine the owner of the given selection.
    /// 
    /// Note that the return value may be owned by a different
    /// process if a foreign window was previously created for that
    /// window, but a new foreign window will never be created by this call.
    func selectionOwnerGetForDisplay(selection: Atom) -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_selection_owner_get_for_display(cast(display_ptr), cast(selection.ptr))
        return cast(rv)
    }

    /// Sets the `GdkWindow` `owner` as the current owner of the selection `selection`.
    func selectionOwnerSetForDisplay(owner: WindowProtocol, selection: Atom, time_: UInt32, sendEvent send_event: Bool) -> Bool {
        let rv = gdk_selection_owner_set_for_display(cast(display_ptr), cast(owner.ptr), cast(selection.ptr), guint32(time_), gboolean(send_event ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Send a response to SelectionRequest event.
    func selectionSendNotifyForDisplay(requestor: WindowProtocol, selection: Atom, target: Atom, property: Atom, time_: UInt32) {
        gdk_selection_send_notify_for_display(cast(display_ptr), cast(requestor.ptr), cast(selection.ptr), cast(target.ptr), cast(property.ptr), guint32(time_))
    
    }

    /// Converts a text property in the given encoding to
    /// a list of UTF-8 strings.
    func textPropertyToUtf8ListForDisplay(encoding: Atom, format: CInt, text: UnsafePointer<guchar>, length: CInt, list: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) -> CInt {
        let rv = gdk_text_property_to_utf8_list_for_display(cast(display_ptr), cast(encoding.ptr), gint(format), cast(text), gint(length), cast(list))
        return CInt(rv)
    }
    /// Returns a `GdkAppLaunchContext` suitable for launching
    /// applications on the given display.
    var appLaunchContext: UnsafeMutablePointer<GdkAppLaunchContext>! {
        /// Returns a `GdkAppLaunchContext` suitable for launching
        /// applications on the given display.
        get {
            let rv = gdk_display_get_app_launch_context(cast(display_ptr))
            return cast(rv)
        }
    }

    /// Returns the default size to use for cursors on `display`.
    var defaultCursorSize: CUnsignedInt {
        /// Returns the default size to use for cursors on `display`.
        get {
            let rv = gdk_display_get_default_cursor_size(cast(display_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns the default group leader window for all toplevel windows
    /// on `display`. This window is implicitly created by GDK.
    /// See `gdk_window_set_group()`.
    var defaultGroup: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the default group leader window for all toplevel windows
        /// on `display`. This window is implicitly created by GDK.
        /// See `gdk_window_set_group()`.
        get {
            let rv = gdk_display_get_default_group(cast(display_ptr))
            return cast(rv)
        }
    }

    /// Get the default `GdkScreen` for `display`.
    var defaultScreen: UnsafeMutablePointer<GdkScreen>! {
        /// Get the default `GdkScreen` for `display`.
        get {
            let rv = gdk_display_get_default_screen(cast(display_ptr))
            return cast(rv)
        }
    }

    /// Returns the default `GdkSeat` for this display.
    var defaultSeat: UnsafeMutablePointer<GdkSeat>! {
        /// Returns the default `GdkSeat` for this display.
        get {
            let rv = gdk_display_get_default_seat(cast(display_ptr))
            return cast(rv)
        }
    }

    /// Returns the `GdkDeviceManager` associated to `display`.
    ///
    /// **get_device_manager is deprecated:**
    /// Use gdk_display_get_default_seat() and #GdkSeat operations.
    var deviceManager: UnsafeMutablePointer<GdkDeviceManager>! {
        /// Returns the `GdkDeviceManager` associated to `display`.
        ///
        /// **get_device_manager is deprecated:**
        /// Use gdk_display_get_default_seat() and #GdkSeat operations.
        @available(*, deprecated) get {
            let rv = gdk_display_get_device_manager(cast(display_ptr))
            return cast(rv)
        }
    }

    /// Gets the next `GdkEvent` to be processed for `display`, fetching events from the
    /// windowing system if necessary.
    var event: UnsafeMutablePointer<GdkEvent>! {
        /// Gets the next `GdkEvent` to be processed for `display`, fetching events from the
        /// windowing system if necessary.
        get {
            let rv = gdk_display_get_event(cast(display_ptr))
            return cast(rv)
        }
    }

    /// Finds out if the display has been closed.
    var isClosed: Bool {
        /// Finds out if the display has been closed.
        get {
            let rv = gdk_display_is_closed(cast(display_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the number of monitors that belong to `display`.
    /// 
    /// The returned number is valid until the next emission of the
    /// `GdkDisplay::monitor`-added or `GdkDisplay::monitor`-removed signal.
    var nMonitors: CInt {
        /// Gets the number of monitors that belong to `display`.
        /// 
        /// The returned number is valid until the next emission of the
        /// `GdkDisplay::monitor`-added or `GdkDisplay::monitor`-removed signal.
        get {
            let rv = gdk_display_get_n_monitors(cast(display_ptr))
            return rv
        }
    }

    /// Gets the number of screen managed by the `display`.
    ///
    /// **get_n_screens is deprecated:**
    /// The number of screens is always 1.
    var nScreens: CInt {
        /// Gets the number of screen managed by the `display`.
        ///
        /// **get_n_screens is deprecated:**
        /// The number of screens is always 1.
        @available(*, deprecated) get {
            let rv = gdk_display_get_n_screens(cast(display_ptr))
            return CInt(rv)
        }
    }

    /// Gets the name of the display.
    var name: String! {
        /// Gets the name of the display.
        get {
            let rv = gdk_display_get_name(cast(display_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the primary monitor for the display.
    /// 
    /// The primary monitor is considered the monitor where the “main desktop”
    /// lives. While normal application windows typically allow the window
    /// manager to place the windows, specialized desktop applications
    /// such as panels should place themselves on the primary monitor.
    var primaryMonitor: UnsafeMutablePointer<GdkMonitor>! {
        /// Gets the primary monitor for the display.
        /// 
        /// The primary monitor is considered the monitor where the “main desktop”
        /// lives. While normal application windows typically allow the window
        /// manager to place the windows, specialized desktop applications
        /// such as panels should place themselves on the primary monitor.
        get {
            let rv = gdk_display_get_primary_monitor(cast(display_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDisplayManager` instance.
    var display_manager_ptr: UnsafeMutablePointer<GdkDisplayManager> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DisplayManagerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDisplayManager>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DisplayManagerProtocol`
    init<T: DisplayManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the singleton `GdkDisplayManager` object.
    /// 
    /// When called for the first time, this function consults the
    /// `GDK_BACKEND` environment variable to find out which
    /// of the supported GDK backends to use (in case GDK has been compiled
    /// with multiple backends). Applications can use `gdk_set_allowed_backends()`
    /// to limit what backends can be used.
    static func displayManagerGet() -> DisplayManagerRef! {
        let rv = gdk_display_manager_get()
        return rv.map { DisplayManagerRef(cast($0)) }
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
    /// Ownership is transferred to the `DisplayManager` instance.
    public init(_ op: UnsafeMutablePointer<GdkDisplayManager>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DisplayManagerProtocol`
    /// Will retain `GdkDisplayManager`.
    public convenience init<T: DisplayManagerProtocol>(_ other: T) {
        self.init(cast(other.display_manager_ptr))
        g_object_ref(cast(display_manager_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDisplayManager.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDisplayManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDisplayManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DisplayManagerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDisplayManager>(opaquePointer))
    }


    /// Gets the singleton `GdkDisplayManager` object.
    /// 
    /// When called for the first time, this function consults the
    /// `GDK_BACKEND` environment variable to find out which
    /// of the supported GDK backends to use (in case GDK has been compiled
    /// with multiple backends). Applications can use `gdk_set_allowed_backends()`
    /// to limit what backends can be used.
    public static func displayManagerGet() -> DisplayManager! {
        let rv = gdk_display_manager_get()
        return rv.map { DisplayManager(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DisplayManagerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(display_manager_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    @discardableResult func connect(signal kind: DisplayManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(display_manager_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DisplayManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDisplayManager` instance.
    var display_manager_ptr: UnsafeMutablePointer<GdkDisplayManager> { return ptr.assumingMemoryBound(to: GdkDisplayManager.self) }

    /// Gets the default `GdkDisplay`.
    func getDefaultDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gdk_display_manager_get_default_display(cast(display_manager_ptr))
        return cast(rv)
    }

    /// List all currently open displays.
    func listDisplays() -> UnsafeMutablePointer<GSList>! {
        let rv = gdk_display_manager_list_displays(cast(display_manager_ptr))
        return cast(rv)
    }

    /// Opens a display.
    func openDisplay(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gdk_display_manager_open_display(cast(display_manager_ptr), name)
        return cast(rv)
    }

    /// Sets `display` as the default display.
    func setDefault(display: DisplayProtocol) {
        gdk_display_manager_set_default_display(cast(display_manager_ptr), cast(display.ptr))
    
    }
    /// Gets the default `GdkDisplay`.
    var defaultDisplay: UnsafeMutablePointer<GdkDisplay>! {
        /// Gets the default `GdkDisplay`.
        get {
            let rv = gdk_display_manager_get_default_display(cast(display_manager_ptr))
            return cast(rv)
        }
        /// Sets `display` as the default display.
        nonmutating set {
            gdk_display_manager_set_default_display(cast(display_manager_ptr), cast(newValue))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDragContext` instance.
    var drag_context_ptr: UnsafeMutablePointer<GdkDragContext> { get }
}

/// The `DragContextRef` type acts as a lightweight Swift reference to an underlying `GdkDragContext` instance.
/// It exposes methods that can operate on this data type through `DragContextProtocol` conformance.
/// Use `DragContextRef` only as an `unowned` reference to an existing `GdkDragContext` instance.
///

public struct DragContextRef: DragContextProtocol {
    /// Untyped pointer to the underlying `GdkDragContext` instance.
    /// For type-safe access, use the generated, typed pointer `drag_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DragContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDragContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DragContextProtocol`
    init<T: DragContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DragContext` type acts as a reference-counted owner of an underlying `GdkDragContext` instance.
/// It provides the methods that can operate on this data type through `DragContextProtocol` conformance.
/// Use `DragContext` as a strong reference or owner of a `GdkDragContext` instance.
///

open class DragContext: Object, DragContextProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DragContext` instance.
    public init(_ op: UnsafeMutablePointer<GdkDragContext>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DragContextProtocol`
    /// Will retain `GdkDragContext`.
    public convenience init<T: DragContextProtocol>(_ other: T) {
        self.init(cast(other.drag_context_ptr))
        g_object_ref(cast(drag_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDragContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDragContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDragContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DragContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDragContext>(opaquePointer))
    }



}

// MARK: - no DragContext properties

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
    @discardableResult func connect(signal kind: DragContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(drag_context_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DragContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDragContext` instance.
    var drag_context_ptr: UnsafeMutablePointer<GdkDragContext> { return ptr.assumingMemoryBound(to: GdkDragContext.self) }

    /// Determines the bitmask of actions proposed by the source if
    /// `gdk_drag_context_get_suggested_action()` returns `GDK_ACTION_ASK`.
    func getActions() -> GdkDragAction {
        let rv = gdk_drag_context_get_actions(cast(drag_context_ptr))
        return rv
    }

    /// Returns the destination window for the DND operation.
    func getDestWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_drag_context_get_dest_window(cast(drag_context_ptr))
        return cast(rv)
    }

    /// Returns the `GdkDevice` associated to the drag context.
    func getDevice() -> UnsafeMutablePointer<GdkDevice>! {
        let rv = gdk_drag_context_get_device(cast(drag_context_ptr))
        return cast(rv)
    }

    /// Returns the window on which the drag icon should be rendered
    /// during the drag operation. Note that the window may not be
    /// available until the drag operation has begun. GDK will move
    /// the window in accordance with the ongoing drag operation.
    /// The window is owned by `context` and will be destroyed when
    /// the drag operation is over.
    func getDragWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_drag_context_get_drag_window(cast(drag_context_ptr))
        return cast(rv)
    }

    /// Returns the drag protocol that is used by this context.
    func getProtocol() -> GdkDragProtocol {
        let rv = gdk_drag_context_get_protocol(cast(drag_context_ptr))
        return rv
    }

    /// Determines the action chosen by the drag destination.
    func getSelectedAction() -> GdkDragAction {
        let rv = gdk_drag_context_get_selected_action(cast(drag_context_ptr))
        return rv
    }

    /// Returns the `GdkWindow` where the DND operation started.
    func getSourceWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_drag_context_get_source_window(cast(drag_context_ptr))
        return cast(rv)
    }

    /// Determines the suggested drag action of the context.
    func getSuggestedAction() -> GdkDragAction {
        let rv = gdk_drag_context_get_suggested_action(cast(drag_context_ptr))
        return rv
    }

    /// Retrieves the list of targets of the context.
    func listTargets() -> UnsafeMutablePointer<GList>! {
        let rv = gdk_drag_context_list_targets(cast(drag_context_ptr))
        return cast(rv)
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
    func manageDnd(ipcWindow ipc_window: WindowProtocol, actions: DragAction) -> Bool {
        let rv = gdk_drag_context_manage_dnd(cast(drag_context_ptr), cast(ipc_window.ptr), actions)
        return Bool(rv != 0)
    }

    /// Associates a `GdkDevice` to `context`, so all Drag and Drop events
    /// for `context` are emitted as if they came from this device.
    func set(device: DeviceProtocol) {
        gdk_drag_context_set_device(cast(drag_context_ptr), cast(device.ptr))
    
    }

    /// Sets the position of the drag window that will be kept
    /// under the cursor hotspot. Initially, the hotspot is at the
    /// top left corner of the drag window.
    func setHotspot(hotX hot_x: CInt, hotY hot_y: CInt) {
        gdk_drag_context_set_hotspot(cast(drag_context_ptr), gint(hot_x), gint(hot_y))
    
    }

    /// Aborts a drag without dropping.
    /// 
    /// This function is called by the drag source.
    /// 
    /// This function does not need to be called in managed drag and drop
    /// operations. See `gdk_drag_context_manage_dnd()` for more information.
    func dragAbort(time_: UInt32) {
        gdk_drag_abort(cast(drag_context_ptr), guint32(time_))
    
    }

    /// Drops on the current destination.
    /// 
    /// This function is called by the drag source.
    /// 
    /// This function does not need to be called in managed drag and drop
    /// operations. See `gdk_drag_context_manage_dnd()` for more information.
    func dragDrop(time_: UInt32) {
        gdk_drag_drop(cast(drag_context_ptr), guint32(time_))
    
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
    func dragDropDone(success: Bool) {
        gdk_drag_drop_done(cast(drag_context_ptr), gboolean(success ? 1 : 0))
    
    }

    /// Returns whether the dropped data has been successfully
    /// transferred. This function is intended to be used while
    /// handling a `GDK_DROP_FINISHED` event, its return value is
    /// meaningless at other times.
    func dragDropSucceeded() -> Bool {
        let rv = gdk_drag_drop_succeeded(cast(drag_context_ptr))
        return Bool(rv != 0)
    }

    /// Finds the destination window and DND protocol to use at the
    /// given pointer position.
    /// 
    /// This function is called by the drag source to obtain the
    /// `dest_window` and `protocol` parameters for `gdk_drag_motion()`.
    func dragFindWindowForScreen(dragWindow drag_window: WindowProtocol, screen: ScreenProtocol, xRoot x_root: CInt, yRoot y_root: CInt, destWindow dest_window: WindowProtocol, protocol_: UnsafeMutablePointer<GdkDragProtocol>) {
        gdk_drag_find_window_for_screen(cast(drag_context_ptr), cast(drag_window.ptr), cast(screen.ptr), gint(x_root), gint(y_root), cast(dest_window.ptr), cast(protocol_))
    
    }

    /// Returns the selection atom for the current source window.
    func dragGetSelection() -> GdkAtom! {
        let rv = gdk_drag_get_selection(cast(drag_context_ptr))
        return rv
    }

    /// Updates the drag context when the pointer moves or the
    /// set of actions changes.
    /// 
    /// This function is called by the drag source.
    /// 
    /// This function does not need to be called in managed drag and drop
    /// operations. See `gdk_drag_context_manage_dnd()` for more information.
    func dragMotion(destWindow dest_window: WindowProtocol, protocol_: Drag_Protocol, xRoot x_root: CInt, yRoot y_root: CInt, suggestedAction suggested_action: DragAction, possibleActions possible_actions: DragAction, time_: UInt32) -> Bool {
        let rv = gdk_drag_motion(cast(drag_context_ptr), cast(dest_window.ptr), protocol_, gint(x_root), gint(y_root), suggested_action, possible_actions, guint32(time_))
        return Bool(rv != 0)
    }

    /// Selects one of the actions offered by the drag source.
    /// 
    /// This function is called by the drag destination in response to
    /// `gdk_drag_motion()` called by the drag source.
    func dragStatus(action: DragAction, time_: UInt32) {
        gdk_drag_status(cast(drag_context_ptr), action, guint32(time_))
    
    }

    /// Ends the drag operation after a drop.
    /// 
    /// This function is called by the drag destination.
    func dropFinish(success: Bool, time_: UInt32) {
        gdk_drop_finish(cast(drag_context_ptr), gboolean(success ? 1 : 0), guint32(time_))
    
    }

    /// Accepts or rejects a drop.
    /// 
    /// This function is called by the drag destination in response
    /// to a drop initiated by the drag source.
    func dropReply(accepted: Bool, time_: UInt32) {
        gdk_drop_reply(cast(drag_context_ptr), gboolean(accepted ? 1 : 0), guint32(time_))
    
    }
    /// Determines the bitmask of actions proposed by the source if
    /// `gdk_drag_context_get_suggested_action()` returns `GDK_ACTION_ASK`.
    var actions: GdkDragAction {
        /// Determines the bitmask of actions proposed by the source if
        /// `gdk_drag_context_get_suggested_action()` returns `GDK_ACTION_ASK`.
        get {
            let rv = gdk_drag_context_get_actions(cast(drag_context_ptr))
            return rv
        }
    }

    /// Returns the destination window for the DND operation.
    var destWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the destination window for the DND operation.
        get {
            let rv = gdk_drag_context_get_dest_window(cast(drag_context_ptr))
            return cast(rv)
        }
    }

    /// Returns the `GdkDevice` associated to the drag context.
    var device: UnsafeMutablePointer<GdkDevice>! {
        /// Returns the `GdkDevice` associated to the drag context.
        get {
            let rv = gdk_drag_context_get_device(cast(drag_context_ptr))
            return cast(rv)
        }
        /// Associates a `GdkDevice` to `context`, so all Drag and Drop events
        /// for `context` are emitted as if they came from this device.
        nonmutating set {
            gdk_drag_context_set_device(cast(drag_context_ptr), cast(newValue))
        }
    }

    /// Returns the window on which the drag icon should be rendered
    /// during the drag operation. Note that the window may not be
    /// available until the drag operation has begun. GDK will move
    /// the window in accordance with the ongoing drag operation.
    /// The window is owned by `context` and will be destroyed when
    /// the drag operation is over.
    var dragWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the window on which the drag icon should be rendered
        /// during the drag operation. Note that the window may not be
        /// available until the drag operation has begun. GDK will move
        /// the window in accordance with the ongoing drag operation.
        /// The window is owned by `context` and will be destroyed when
        /// the drag operation is over.
        get {
            let rv = gdk_drag_context_get_drag_window(cast(drag_context_ptr))
            return cast(rv)
        }
    }

    /// Returns the drag protocol that is used by this context.
    var protocol_: GdkDragProtocol {
        /// Returns the drag protocol that is used by this context.
        get {
            let rv = gdk_drag_context_get_protocol(cast(drag_context_ptr))
            return rv
        }
    }

    /// Determines the action chosen by the drag destination.
    var selectedAction: GdkDragAction {
        /// Determines the action chosen by the drag destination.
        get {
            let rv = gdk_drag_context_get_selected_action(cast(drag_context_ptr))
            return rv
        }
    }

    /// Returns the `GdkWindow` where the DND operation started.
    var sourceWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the `GdkWindow` where the DND operation started.
        get {
            let rv = gdk_drag_context_get_source_window(cast(drag_context_ptr))
            return cast(rv)
        }
    }

    /// Determines the suggested drag action of the context.
    var suggestedAction: GdkDragAction {
        /// Determines the suggested drag action of the context.
        get {
            let rv = gdk_drag_context_get_suggested_action(cast(drag_context_ptr))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDrawingContext` instance.
    var drawing_context_ptr: UnsafeMutablePointer<GdkDrawingContext> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DrawingContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDrawingContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DrawingContextProtocol`
    init<T: DrawingContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `DrawingContext` instance.
    public init(_ op: UnsafeMutablePointer<GdkDrawingContext>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DrawingContextProtocol`
    /// Will retain `GdkDrawingContext`.
    public convenience init<T: DrawingContextProtocol>(_ other: T) {
        self.init(cast(other.drawing_context_ptr))
        g_object_ref(cast(drawing_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDrawingContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDrawingContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDrawingContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDrawingContext>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DrawingContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(drawing_context_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    @discardableResult func connect(signal kind: DrawingContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(drawing_context_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DrawingContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDrawingContext` instance.
    var drawing_context_ptr: UnsafeMutablePointer<GdkDrawingContext> { return ptr.assumingMemoryBound(to: GdkDrawingContext.self) }

    /// Retrieves a Cairo context to be used to draw on the `GdkWindow`
    /// that created the `GdkDrawingContext`.
    /// 
    /// The returned context is guaranteed to be valid as long as the
    /// `GdkDrawingContext` is valid, that is between a call to
    /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()`.
    func getCairoContext() -> UnsafeMutablePointer<cairo_t>! {
        let rv = gdk_drawing_context_get_cairo_context(cast(drawing_context_ptr))
        return cast(rv)
    }

    /// Retrieves a copy of the clip region used when creating the `context`.
    func getClip() -> UnsafeMutablePointer<cairo_region_t>! {
        let rv = gdk_drawing_context_get_clip(cast(drawing_context_ptr))
        return cast(rv)
    }

    /// Retrieves the window that created the drawing `context`.
    func getWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_drawing_context_get_window(cast(drawing_context_ptr))
        return cast(rv)
    }
    /// Retrieves a Cairo context to be used to draw on the `GdkWindow`
    /// that created the `GdkDrawingContext`.
    /// 
    /// The returned context is guaranteed to be valid as long as the
    /// `GdkDrawingContext` is valid, that is between a call to
    /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()`.
    var cairoContext: UnsafeMutablePointer<cairo_t>! {
        /// Retrieves a Cairo context to be used to draw on the `GdkWindow`
        /// that created the `GdkDrawingContext`.
        /// 
        /// The returned context is guaranteed to be valid as long as the
        /// `GdkDrawingContext` is valid, that is between a call to
        /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()`.
        get {
            let rv = gdk_drawing_context_get_cairo_context(cast(drawing_context_ptr))
            return cast(rv)
        }
    }

    /// The clip region applied to the drawing context.
    var clip: UnsafeMutablePointer<cairo_region_t>! {
        /// Retrieves a copy of the clip region used when creating the `context`.
        get {
            let rv = gdk_drawing_context_get_clip(cast(drawing_context_ptr))
            return cast(rv)
        }
    }

    /// Checks whether the given `GdkDrawingContext` is valid.
    var isValid: Bool {
        /// Checks whether the given `GdkDrawingContext` is valid.
        get {
            let rv = gdk_drawing_context_is_valid(cast(drawing_context_ptr))
            return Bool(rv != 0)
        }
    }

    /// The `GdkWindow` that created the drawing context.
    var window: UnsafeMutablePointer<GdkWindow>! {
        /// Retrieves the window that created the drawing `context`.
        get {
            let rv = gdk_drawing_context_get_window(cast(drawing_context_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkFrameClock` instance.
    var frame_clock_ptr: UnsafeMutablePointer<GdkFrameClock> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FrameClockRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkFrameClock>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FrameClockProtocol`
    init<T: FrameClockProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `FrameClock` instance.
    public init(_ op: UnsafeMutablePointer<GdkFrameClock>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FrameClockProtocol`
    /// Will retain `GdkFrameClock`.
    public convenience init<T: FrameClockProtocol>(_ other: T) {
        self.init(cast(other.frame_clock_ptr))
        g_object_ref(cast(frame_clock_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkFrameClock.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkFrameClock.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkFrameClock.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkFrameClock>(opaquePointer))
    }



}

// MARK: - no FrameClock properties

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
    @discardableResult func connect(signal kind: FrameClockSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(frame_clock_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FrameClockProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFrameClock` instance.
    var frame_clock_ptr: UnsafeMutablePointer<GdkFrameClock> { return ptr.assumingMemoryBound(to: GdkFrameClock.self) }

    /// Starts updates for an animation. Until a matching call to
    /// `gdk_frame_clock_end_updating()` is made, the frame clock will continually
    /// request a new frame with the `GDK_FRAME_CLOCK_PHASE_UPDATE` phase.
    /// This function may be called multiple times and frames will be
    /// requested until `gdk_frame_clock_end_updating()` is called the same
    /// number of times.
    func beginUpdating() {
        gdk_frame_clock_begin_updating(cast(frame_clock_ptr))
    
    }

    /// Stops updates for an animation. See the documentation for
    /// `gdk_frame_clock_begin_updating()`.
    func endUpdating() {
        gdk_frame_clock_end_updating(cast(frame_clock_ptr))
    
    }

    /// Gets the frame timings for the current frame.
    func getCurrentTimings() -> UnsafeMutablePointer<GdkFrameTimings>! {
        let rv = gdk_frame_clock_get_current_timings(cast(frame_clock_ptr))
        return cast(rv)
    }

    /// A `GdkFrameClock` maintains a 64-bit counter that increments for
    /// each frame drawn.
    func getFrameCounter() -> Int64 {
        let rv = gdk_frame_clock_get_frame_counter(cast(frame_clock_ptr))
        return Int64(rv)
    }

    /// Gets the time that should currently be used for animations.  Inside
    /// the processing of a frame, it’s the time used to compute the
    /// animation position of everything in a frame. Outside of a frame, it's
    /// the time of the conceptual “previous frame,” which may be either
    /// the actual previous frame time, or if that’s too old, an updated
    /// time.
    func getFrameTime() -> Int64 {
        let rv = gdk_frame_clock_get_frame_time(cast(frame_clock_ptr))
        return Int64(rv)
    }

    /// `GdkFrameClock` internally keeps a history of `GdkFrameTimings`
    /// objects for recent frames that can be retrieved with
    /// `gdk_frame_clock_get_timings()`. The set of stored frames
    /// is the set from the counter values given by
    /// `gdk_frame_clock_get_history_start()` and
    /// `gdk_frame_clock_get_frame_counter()`, inclusive.
    func getHistoryStart() -> Int64 {
        let rv = gdk_frame_clock_get_history_start(cast(frame_clock_ptr))
        return Int64(rv)
    }

    /// Using the frame history stored in the frame clock, finds the last
    /// known presentation time and refresh interval, and assuming that
    /// presentation times are separated by the refresh interval,
    /// predicts a presentation time that is a multiple of the refresh
    /// interval after the last presentation time, and later than `base_time`.
    func getRefreshInfo(baseTime base_time: Int64, refreshIntervalReturn refresh_interval_return: UnsafeMutablePointer<Int64>, presentationTimeReturn presentation_time_return: UnsafeMutablePointer<Int64>) {
        gdk_frame_clock_get_refresh_info(cast(frame_clock_ptr), gint64(base_time), cast(refresh_interval_return), cast(presentation_time_return))
    
    }

    /// Retrieves a `GdkFrameTimings` object holding timing information
    /// for the current frame or a recent frame. The `GdkFrameTimings`
    /// object may not yet be complete: see `gdk_frame_timings_get_complete()`.
    func getTimings(frameCounter frame_counter: Int64) -> UnsafeMutablePointer<GdkFrameTimings>! {
        let rv = gdk_frame_clock_get_timings(cast(frame_clock_ptr), gint64(frame_counter))
        return cast(rv)
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
    func request(phase: FrameClockPhase) {
        gdk_frame_clock_request_phase(cast(frame_clock_ptr), phase)
    
    }
    /// Gets the frame timings for the current frame.
    var currentTimings: UnsafeMutablePointer<GdkFrameTimings>! {
        /// Gets the frame timings for the current frame.
        get {
            let rv = gdk_frame_clock_get_current_timings(cast(frame_clock_ptr))
            return cast(rv)
        }
    }

    /// A `GdkFrameClock` maintains a 64-bit counter that increments for
    /// each frame drawn.
    var frameCounter: Int64 {
        /// A `GdkFrameClock` maintains a 64-bit counter that increments for
        /// each frame drawn.
        get {
            let rv = gdk_frame_clock_get_frame_counter(cast(frame_clock_ptr))
            return Int64(rv)
        }
    }

    /// Gets the time that should currently be used for animations.  Inside
    /// the processing of a frame, it’s the time used to compute the
    /// animation position of everything in a frame. Outside of a frame, it's
    /// the time of the conceptual “previous frame,” which may be either
    /// the actual previous frame time, or if that’s too old, an updated
    /// time.
    var frameTime: Int64 {
        /// Gets the time that should currently be used for animations.  Inside
        /// the processing of a frame, it’s the time used to compute the
        /// animation position of everything in a frame. Outside of a frame, it's
        /// the time of the conceptual “previous frame,” which may be either
        /// the actual previous frame time, or if that’s too old, an updated
        /// time.
        get {
            let rv = gdk_frame_clock_get_frame_time(cast(frame_clock_ptr))
            return Int64(rv)
        }
    }

    /// `GdkFrameClock` internally keeps a history of `GdkFrameTimings`
    /// objects for recent frames that can be retrieved with
    /// `gdk_frame_clock_get_timings()`. The set of stored frames
    /// is the set from the counter values given by
    /// `gdk_frame_clock_get_history_start()` and
    /// `gdk_frame_clock_get_frame_counter()`, inclusive.
    var historyStart: Int64 {
        /// `GdkFrameClock` internally keeps a history of `GdkFrameTimings`
        /// objects for recent frames that can be retrieved with
        /// `gdk_frame_clock_get_timings()`. The set of stored frames
        /// is the set from the counter values given by
        /// `gdk_frame_clock_get_history_start()` and
        /// `gdk_frame_clock_get_frame_counter()`, inclusive.
        get {
            let rv = gdk_frame_clock_get_history_start(cast(frame_clock_ptr))
            return Int64(rv)
        }
    }
}


