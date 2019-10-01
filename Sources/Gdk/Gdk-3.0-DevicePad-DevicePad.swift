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
/// of the buttons/rings/strips available. gdk_device_pad_get_n_groups()
/// can be used to obtain the number of groups, gdk_device_pad_get_n_features()
/// and gdk_device_pad_get_feature_group() can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map
/// each individual pad feature to multiple actions. Only one mode is
/// effective (current) for each given group, different groups may have
/// different current modes. The number of available modes in a group can
/// be found out through gdk_device_pad_get_group_n_modes(), and the current
/// mode for a given group will be notified through the `GdkEventPadGroupMode`
/// event.
public protocol DevicePadProtocol: DeviceProtocol {
    /// Untyped pointer to the underlying `GdkDevicePad` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkDevicePad` instance.
    var device_pad_ptr: UnsafeMutablePointer<GdkDevicePad> { get }
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
/// of the buttons/rings/strips available. gdk_device_pad_get_n_groups()
/// can be used to obtain the number of groups, gdk_device_pad_get_n_features()
/// and gdk_device_pad_get_feature_group() can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map
/// each individual pad feature to multiple actions. Only one mode is
/// effective (current) for each given group, different groups may have
/// different current modes. The number of available modes in a group can
/// be found out through gdk_device_pad_get_group_n_modes(), and the current
/// mode for a given group will be notified through the `GdkEventPadGroupMode`
/// event.
public struct DevicePadRef: DevicePadProtocol {
    /// Untyped pointer to the underlying `GdkDevicePad` instance.
    /// For type-safe access, use the generated, typed pointer `device_pad_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DevicePadRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkDevicePad>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DevicePadProtocol`
    init<T: DevicePadProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
/// of the buttons/rings/strips available. gdk_device_pad_get_n_groups()
/// can be used to obtain the number of groups, gdk_device_pad_get_n_features()
/// and gdk_device_pad_get_feature_group() can be combined to find out the
/// number of buttons/rings/strips the device has, and how are they grouped.
/// 
/// Each of those groups have different modes, which may be used to map
/// each individual pad feature to multiple actions. Only one mode is
/// effective (current) for each given group, different groups may have
/// different current modes. The number of available modes in a group can
/// be found out through gdk_device_pad_get_group_n_modes(), and the current
/// mode for a given group will be notified through the `GdkEventPadGroupMode`
/// event.
open class DevicePad: Device, DevicePadProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DevicePad` instance.
    public init(_ op: UnsafeMutablePointer<GdkDevicePad>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DevicePadProtocol`
    /// Will retain `GdkDevicePad`.
    public convenience init<T: DevicePadProtocol>(_ other: T) {
        self.init(cast(other.device_pad_ptr))
        g_object_ref(cast(device_pad_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkDevicePad.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkDevicePad.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkDevicePad.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkDevicePad>(opaquePointer))
    }



}

public enum DevicePadPropertyName: String, PropertyNameProtocol {
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
    /// Product ID of this device, see gdk_device_get_product_id().
    case productId = "product-id"
    /// `GdkSeat` of this device.
    case seat = "seat"
    case tool = "tool"
    /// Device role in the device manager.
    case type = "type"
    /// Vendor ID of this device, see gdk_device_get_vendor_id().
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DevicePadPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(device_pad_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum DevicePadSignalName: String, SignalNameProtocol {
    /// The ::changed signal is emitted either when the `GdkDevice`
    /// has changed the number of either axes or keys. For example
    /// In X this will normally happen when the slave device routing
    /// events through the master device changes (for example, user
    /// switches from the USB mouse to a tablet), in that case the
    /// master device will change to reflect the new slave device
    /// axes and keys.
    case changed = "changed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::tool-changed signal is emitted on pen/eraser
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
    /// Product ID of this device, see gdk_device_get_product_id().
    case notifyProductId = "notify::product-id"
    /// `GdkSeat` of this device.
    case notifySeat = "notify::seat"
    case notifyTool = "notify::tool"
    /// Device role in the device manager.
    case notifyType_ = "notify::type"
    /// Vendor ID of this device, see gdk_device_get_vendor_id().
    case notifyVendorId = "notify::vendor-id"
}

public extension DevicePadProtocol {
    /// Connect a `DevicePadSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DevicePadSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(device_pad_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DevicePadProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevicePad` instance.
    var device_pad_ptr: UnsafeMutablePointer<GdkDevicePad> { return ptr.assumingMemoryBound(to: GdkDevicePad.self) }

    /// Returns the group the given `feature` and `idx` belong to,
    /// or -1 if feature/index do not exist in `pad`.
    func getFeatureGroup(feature: DevicePadFeature, featureIdx feature_idx: CInt) -> CInt {
        let rv = gdk_device_pad_get_feature_group(cast(device_pad_ptr), feature, gint(feature_idx))
        return CInt(rv)
    }

    /// Returns the number of modes that `group` may have.
    func getGroupNModes(groupIdx group_idx: CInt) -> CInt {
        let rv = gdk_device_pad_get_group_n_modes(cast(device_pad_ptr), gint(group_idx))
        return CInt(rv)
    }

    /// Returns the number of features a tablet pad has.
    func getNFeatures(feature: DevicePadFeature) -> CInt {
        let rv = gdk_device_pad_get_n_features(cast(device_pad_ptr), feature)
        return CInt(rv)
    }

    /// Returns the number of groups this pad device has. Pads have
    /// at least one group. A pad group is a subcollection of
    /// buttons/strip/rings that is affected collectively by a same
    /// current mode.
    func getNGroups() -> CInt {
        let rv = gdk_device_pad_get_n_groups(cast(device_pad_ptr))
        return CInt(rv)
    }
    /// Returns the number of groups this pad device has. Pads have
    /// at least one group. A pad group is a subcollection of
    /// buttons/strip/rings that is affected collectively by a same
    /// current mode.
    var nGroups: CInt {
        /// Returns the number of groups this pad device has. Pads have
        /// at least one group. A pad group is a subcollection of
        /// buttons/strip/rings that is affected collectively by a same
        /// current mode.
        get {
            let rv = gdk_device_pad_get_n_groups(cast(device_pad_ptr))
            return CInt(rv)
        }
    }
}



