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

// MARK: - EventButton Record

/// The `EventButtonProtocol` protocol exposes the methods and properties of an underlying `GdkEventButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventButton`.
/// Alternatively, use `EventButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Used for button press and button release events. The
/// `type` field will be one of `GDK_BUTTON_PRESS`,
/// `GDK_2BUTTON_PRESS`, `GDK_3BUTTON_PRESS` or `GDK_BUTTON_RELEASE`,
/// 
/// Double and triple-clicks result in a sequence of events being received.
/// For double-clicks the order of events will be:
/// 
/// - `GDK_BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_2BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// 
/// Note that the first click is received just like a normal
/// button press, while the second click results in a `GDK_2BUTTON_PRESS`
/// being received just after the `GDK_BUTTON_PRESS`.
/// 
/// Triple-clicks are very similar to double-clicks, except that
/// `GDK_3BUTTON_PRESS` is inserted after the third click. The order of the
/// events is:
/// 
/// - `GDK_BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_2BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_3BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// 
/// For a double click to occur, the second button press must occur within
/// 1/4 of a second of the first. For a triple click to occur, the third
/// button press must also occur within 1/2 second of the first button press.
public protocol EventButtonProtocol {
    /// Untyped pointer to the underlying `GdkEventButton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventButton` instance.
    var _ptr: UnsafeMutablePointer<GdkEventButton> { get }
}

/// The `EventButtonRef` type acts as a lightweight Swift reference to an underlying `GdkEventButton` instance.
/// It exposes methods that can operate on this data type through `EventButtonProtocol` conformance.
/// Use `EventButtonRef` only as an `unowned` reference to an existing `GdkEventButton` instance.
///
/// Used for button press and button release events. The
/// `type` field will be one of `GDK_BUTTON_PRESS`,
/// `GDK_2BUTTON_PRESS`, `GDK_3BUTTON_PRESS` or `GDK_BUTTON_RELEASE`,
/// 
/// Double and triple-clicks result in a sequence of events being received.
/// For double-clicks the order of events will be:
/// 
/// - `GDK_BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_2BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// 
/// Note that the first click is received just like a normal
/// button press, while the second click results in a `GDK_2BUTTON_PRESS`
/// being received just after the `GDK_BUTTON_PRESS`.
/// 
/// Triple-clicks are very similar to double-clicks, except that
/// `GDK_3BUTTON_PRESS` is inserted after the third click. The order of the
/// events is:
/// 
/// - `GDK_BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_2BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_3BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// 
/// For a double click to occur, the second button press must occur within
/// 1/4 of a second of the first. For a triple click to occur, the third
/// button press must also occur within 1/2 second of the first button press.
public struct EventButtonRef: EventButtonProtocol {
    /// Untyped pointer to the underlying `GdkEventButton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventButtonProtocol`
    init<T: EventButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventButton` type acts as an owner of an underlying `GdkEventButton` instance.
/// It provides the methods that can operate on this data type through `EventButtonProtocol` conformance.
/// Use `EventButton` as a strong reference or owner of a `GdkEventButton` instance.
///
/// Used for button press and button release events. The
/// `type` field will be one of `GDK_BUTTON_PRESS`,
/// `GDK_2BUTTON_PRESS`, `GDK_3BUTTON_PRESS` or `GDK_BUTTON_RELEASE`,
/// 
/// Double and triple-clicks result in a sequence of events being received.
/// For double-clicks the order of events will be:
/// 
/// - `GDK_BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_2BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// 
/// Note that the first click is received just like a normal
/// button press, while the second click results in a `GDK_2BUTTON_PRESS`
/// being received just after the `GDK_BUTTON_PRESS`.
/// 
/// Triple-clicks are very similar to double-clicks, except that
/// `GDK_3BUTTON_PRESS` is inserted after the third click. The order of the
/// events is:
/// 
/// - `GDK_BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_2BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// - `GDK_BUTTON_PRESS`
/// - `GDK_3BUTTON_PRESS`
/// - `GDK_BUTTON_RELEASE`
/// 
/// For a double click to occur, the second button press must occur within
/// 1/4 of a second of the first. For a triple click to occur, the third
/// button press must also occur within 1/2 second of the first button press.
open class EventButton: EventButtonProtocol {
    /// Untyped pointer to the underlying `GdkEventButton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventButton` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventButton>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventButton` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventButton` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventButton>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventButton, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventButtonProtocol`
    /// `GdkEventButton` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventButtonProtocol`
    public init<T: EventButtonProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventButton, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventButton`.
    deinit {
        // no reference counting for GdkEventButton, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventButton, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventButton, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventButton, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventButton, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventButton properties

// MARK: - no signals


public extension EventButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventButton` instance.
    var _ptr: UnsafeMutablePointer<GdkEventButton> { return ptr.assumingMemoryBound(to: GdkEventButton.self) }

}



// MARK: - EventConfigure Record

/// The `EventConfigureProtocol` protocol exposes the methods and properties of an underlying `GdkEventConfigure` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventConfigure`.
/// Alternatively, use `EventConfigureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when a window size or position has changed.
public protocol EventConfigureProtocol {
    /// Untyped pointer to the underlying `GdkEventConfigure` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventConfigure` instance.
    var _ptr: UnsafeMutablePointer<GdkEventConfigure> { get }
}

/// The `EventConfigureRef` type acts as a lightweight Swift reference to an underlying `GdkEventConfigure` instance.
/// It exposes methods that can operate on this data type through `EventConfigureProtocol` conformance.
/// Use `EventConfigureRef` only as an `unowned` reference to an existing `GdkEventConfigure` instance.
///
/// Generated when a window size or position has changed.
public struct EventConfigureRef: EventConfigureProtocol {
    /// Untyped pointer to the underlying `GdkEventConfigure` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventConfigureRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventConfigure>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventConfigureProtocol`
    init<T: EventConfigureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventConfigure` type acts as an owner of an underlying `GdkEventConfigure` instance.
/// It provides the methods that can operate on this data type through `EventConfigureProtocol` conformance.
/// Use `EventConfigure` as a strong reference or owner of a `GdkEventConfigure` instance.
///
/// Generated when a window size or position has changed.
open class EventConfigure: EventConfigureProtocol {
    /// Untyped pointer to the underlying `GdkEventConfigure` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventConfigure` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventConfigure>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventConfigure` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventConfigure` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventConfigure>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventConfigure, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventConfigureProtocol`
    /// `GdkEventConfigure` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventConfigureProtocol`
    public init<T: EventConfigureProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventConfigure, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventConfigure`.
    deinit {
        // no reference counting for GdkEventConfigure, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventConfigure, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventConfigure, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventConfigure, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventConfigureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventConfigure, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventConfigure properties

// MARK: - no signals


public extension EventConfigureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventConfigure` instance.
    var _ptr: UnsafeMutablePointer<GdkEventConfigure> { return ptr.assumingMemoryBound(to: GdkEventConfigure.self) }

}



// MARK: - EventCrossing Record

/// The `EventCrossingProtocol` protocol exposes the methods and properties of an underlying `GdkEventCrossing` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventCrossing`.
/// Alternatively, use `EventCrossingRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when the pointer enters or leaves a window.
public protocol EventCrossingProtocol {
    /// Untyped pointer to the underlying `GdkEventCrossing` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventCrossing` instance.
    var _ptr: UnsafeMutablePointer<GdkEventCrossing> { get }
}

/// The `EventCrossingRef` type acts as a lightweight Swift reference to an underlying `GdkEventCrossing` instance.
/// It exposes methods that can operate on this data type through `EventCrossingProtocol` conformance.
/// Use `EventCrossingRef` only as an `unowned` reference to an existing `GdkEventCrossing` instance.
///
/// Generated when the pointer enters or leaves a window.
public struct EventCrossingRef: EventCrossingProtocol {
    /// Untyped pointer to the underlying `GdkEventCrossing` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventCrossingRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventCrossing>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventCrossingProtocol`
    init<T: EventCrossingProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventCrossing` type acts as an owner of an underlying `GdkEventCrossing` instance.
/// It provides the methods that can operate on this data type through `EventCrossingProtocol` conformance.
/// Use `EventCrossing` as a strong reference or owner of a `GdkEventCrossing` instance.
///
/// Generated when the pointer enters or leaves a window.
open class EventCrossing: EventCrossingProtocol {
    /// Untyped pointer to the underlying `GdkEventCrossing` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventCrossing` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventCrossing>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventCrossing` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventCrossing` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventCrossing>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventCrossing, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventCrossingProtocol`
    /// `GdkEventCrossing` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventCrossingProtocol`
    public init<T: EventCrossingProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventCrossing, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventCrossing`.
    deinit {
        // no reference counting for GdkEventCrossing, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventCrossing, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventCrossing, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventCrossing, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventCrossingProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventCrossing, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventCrossing properties

// MARK: - no signals


public extension EventCrossingProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventCrossing` instance.
    var _ptr: UnsafeMutablePointer<GdkEventCrossing> { return ptr.assumingMemoryBound(to: GdkEventCrossing.self) }

}



// MARK: - EventDND Record

/// The `EventDNDProtocol` protocol exposes the methods and properties of an underlying `GdkEventDND` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventDND`.
/// Alternatively, use `EventDNDRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated during DND operations.
public protocol EventDNDProtocol {
    /// Untyped pointer to the underlying `GdkEventDND` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventDND` instance.
    var _ptr: UnsafeMutablePointer<GdkEventDND> { get }
}

/// The `EventDNDRef` type acts as a lightweight Swift reference to an underlying `GdkEventDND` instance.
/// It exposes methods that can operate on this data type through `EventDNDProtocol` conformance.
/// Use `EventDNDRef` only as an `unowned` reference to an existing `GdkEventDND` instance.
///
/// Generated during DND operations.
public struct EventDNDRef: EventDNDProtocol {
    /// Untyped pointer to the underlying `GdkEventDND` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventDNDRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventDND>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventDNDProtocol`
    init<T: EventDNDProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventDND` type acts as an owner of an underlying `GdkEventDND` instance.
/// It provides the methods that can operate on this data type through `EventDNDProtocol` conformance.
/// Use `EventDND` as a strong reference or owner of a `GdkEventDND` instance.
///
/// Generated during DND operations.
open class EventDND: EventDNDProtocol {
    /// Untyped pointer to the underlying `GdkEventDND` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventDND` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventDND>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventDND` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventDND` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventDND>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventDND, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventDNDProtocol`
    /// `GdkEventDND` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventDNDProtocol`
    public init<T: EventDNDProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventDND, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventDND`.
    deinit {
        // no reference counting for GdkEventDND, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventDND, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventDND, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventDND, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventDNDProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventDND, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventDND properties

// MARK: - no signals


public extension EventDNDProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventDND` instance.
    var _ptr: UnsafeMutablePointer<GdkEventDND> { return ptr.assumingMemoryBound(to: GdkEventDND.self) }

}



// MARK: - EventExpose Record

/// The `EventExposeProtocol` protocol exposes the methods and properties of an underlying `GdkEventExpose` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventExpose`.
/// Alternatively, use `EventExposeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when all or part of a window becomes visible and needs to be
/// redrawn.
public protocol EventExposeProtocol {
    /// Untyped pointer to the underlying `GdkEventExpose` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventExpose` instance.
    var _ptr: UnsafeMutablePointer<GdkEventExpose> { get }
}

/// The `EventExposeRef` type acts as a lightweight Swift reference to an underlying `GdkEventExpose` instance.
/// It exposes methods that can operate on this data type through `EventExposeProtocol` conformance.
/// Use `EventExposeRef` only as an `unowned` reference to an existing `GdkEventExpose` instance.
///
/// Generated when all or part of a window becomes visible and needs to be
/// redrawn.
public struct EventExposeRef: EventExposeProtocol {
    /// Untyped pointer to the underlying `GdkEventExpose` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventExposeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventExpose>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventExposeProtocol`
    init<T: EventExposeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventExpose` type acts as an owner of an underlying `GdkEventExpose` instance.
/// It provides the methods that can operate on this data type through `EventExposeProtocol` conformance.
/// Use `EventExpose` as a strong reference or owner of a `GdkEventExpose` instance.
///
/// Generated when all or part of a window becomes visible and needs to be
/// redrawn.
open class EventExpose: EventExposeProtocol {
    /// Untyped pointer to the underlying `GdkEventExpose` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventExpose` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventExpose>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventExpose` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventExpose` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventExpose>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventExpose, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventExposeProtocol`
    /// `GdkEventExpose` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventExposeProtocol`
    public init<T: EventExposeProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventExpose, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventExpose`.
    deinit {
        // no reference counting for GdkEventExpose, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventExpose, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventExpose, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventExpose, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventExposeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventExpose, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventExpose properties

// MARK: - no signals


public extension EventExposeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventExpose` instance.
    var _ptr: UnsafeMutablePointer<GdkEventExpose> { return ptr.assumingMemoryBound(to: GdkEventExpose.self) }

}



// MARK: - EventFocus Record

/// The `EventFocusProtocol` protocol exposes the methods and properties of an underlying `GdkEventFocus` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventFocus`.
/// Alternatively, use `EventFocusRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Describes a change of keyboard focus.
public protocol EventFocusProtocol {
    /// Untyped pointer to the underlying `GdkEventFocus` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventFocus` instance.
    var _ptr: UnsafeMutablePointer<GdkEventFocus> { get }
}

/// The `EventFocusRef` type acts as a lightweight Swift reference to an underlying `GdkEventFocus` instance.
/// It exposes methods that can operate on this data type through `EventFocusProtocol` conformance.
/// Use `EventFocusRef` only as an `unowned` reference to an existing `GdkEventFocus` instance.
///
/// Describes a change of keyboard focus.
public struct EventFocusRef: EventFocusProtocol {
    /// Untyped pointer to the underlying `GdkEventFocus` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventFocusRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventFocus>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventFocusProtocol`
    init<T: EventFocusProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventFocus` type acts as an owner of an underlying `GdkEventFocus` instance.
/// It provides the methods that can operate on this data type through `EventFocusProtocol` conformance.
/// Use `EventFocus` as a strong reference or owner of a `GdkEventFocus` instance.
///
/// Describes a change of keyboard focus.
open class EventFocus: EventFocusProtocol {
    /// Untyped pointer to the underlying `GdkEventFocus` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventFocus` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventFocus>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventFocus` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventFocus` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventFocus>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventFocus, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventFocusProtocol`
    /// `GdkEventFocus` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventFocusProtocol`
    public init<T: EventFocusProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventFocus, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventFocus`.
    deinit {
        // no reference counting for GdkEventFocus, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventFocus, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventFocus, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventFocus, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventFocusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventFocus, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventFocus properties

// MARK: - no signals


public extension EventFocusProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventFocus` instance.
    var _ptr: UnsafeMutablePointer<GdkEventFocus> { return ptr.assumingMemoryBound(to: GdkEventFocus.self) }

}



// MARK: - EventGrabBroken Record

/// The `EventGrabBrokenProtocol` protocol exposes the methods and properties of an underlying `GdkEventGrabBroken` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventGrabBroken`.
/// Alternatively, use `EventGrabBrokenRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when a pointer or keyboard grab is broken. On X11, this happens
/// when the grab window becomes unviewable (i.e. it or one of its ancestors
/// is unmapped), or if the same application grabs the pointer or keyboard
/// again. Note that implicit grabs (which are initiated by button presses)
/// can also cause `GdkEventGrabBroken` events.
public protocol EventGrabBrokenProtocol {
    /// Untyped pointer to the underlying `GdkEventGrabBroken` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventGrabBroken` instance.
    var _ptr: UnsafeMutablePointer<GdkEventGrabBroken> { get }
}

/// The `EventGrabBrokenRef` type acts as a lightweight Swift reference to an underlying `GdkEventGrabBroken` instance.
/// It exposes methods that can operate on this data type through `EventGrabBrokenProtocol` conformance.
/// Use `EventGrabBrokenRef` only as an `unowned` reference to an existing `GdkEventGrabBroken` instance.
///
/// Generated when a pointer or keyboard grab is broken. On X11, this happens
/// when the grab window becomes unviewable (i.e. it or one of its ancestors
/// is unmapped), or if the same application grabs the pointer or keyboard
/// again. Note that implicit grabs (which are initiated by button presses)
/// can also cause `GdkEventGrabBroken` events.
public struct EventGrabBrokenRef: EventGrabBrokenProtocol {
    /// Untyped pointer to the underlying `GdkEventGrabBroken` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventGrabBrokenRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventGrabBroken>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventGrabBrokenProtocol`
    init<T: EventGrabBrokenProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventGrabBroken` type acts as an owner of an underlying `GdkEventGrabBroken` instance.
/// It provides the methods that can operate on this data type through `EventGrabBrokenProtocol` conformance.
/// Use `EventGrabBroken` as a strong reference or owner of a `GdkEventGrabBroken` instance.
///
/// Generated when a pointer or keyboard grab is broken. On X11, this happens
/// when the grab window becomes unviewable (i.e. it or one of its ancestors
/// is unmapped), or if the same application grabs the pointer or keyboard
/// again. Note that implicit grabs (which are initiated by button presses)
/// can also cause `GdkEventGrabBroken` events.
open class EventGrabBroken: EventGrabBrokenProtocol {
    /// Untyped pointer to the underlying `GdkEventGrabBroken` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventGrabBroken` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventGrabBroken>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventGrabBroken` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventGrabBroken` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventGrabBroken>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventGrabBroken, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventGrabBrokenProtocol`
    /// `GdkEventGrabBroken` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventGrabBrokenProtocol`
    public init<T: EventGrabBrokenProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventGrabBroken, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventGrabBroken`.
    deinit {
        // no reference counting for GdkEventGrabBroken, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventGrabBroken, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventGrabBroken, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventGrabBroken, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventGrabBrokenProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventGrabBroken, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventGrabBroken properties

// MARK: - no signals


public extension EventGrabBrokenProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventGrabBroken` instance.
    var _ptr: UnsafeMutablePointer<GdkEventGrabBroken> { return ptr.assumingMemoryBound(to: GdkEventGrabBroken.self) }

}



// MARK: - EventKey Record

/// The `EventKeyProtocol` protocol exposes the methods and properties of an underlying `GdkEventKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventKey`.
/// Alternatively, use `EventKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Describes a key press or key release event.
public protocol EventKeyProtocol {
    /// Untyped pointer to the underlying `GdkEventKey` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventKey` instance.
    var _ptr: UnsafeMutablePointer<GdkEventKey> { get }
}

/// The `EventKeyRef` type acts as a lightweight Swift reference to an underlying `GdkEventKey` instance.
/// It exposes methods that can operate on this data type through `EventKeyProtocol` conformance.
/// Use `EventKeyRef` only as an `unowned` reference to an existing `GdkEventKey` instance.
///
/// Describes a key press or key release event.
public struct EventKeyRef: EventKeyProtocol {
    /// Untyped pointer to the underlying `GdkEventKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventKeyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventKey>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventKeyProtocol`
    init<T: EventKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventKey` type acts as an owner of an underlying `GdkEventKey` instance.
/// It provides the methods that can operate on this data type through `EventKeyProtocol` conformance.
/// Use `EventKey` as a strong reference or owner of a `GdkEventKey` instance.
///
/// Describes a key press or key release event.
open class EventKey: EventKeyProtocol {
    /// Untyped pointer to the underlying `GdkEventKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventKey` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventKey` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventKey` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventKey>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventKey, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventKeyProtocol`
    /// `GdkEventKey` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventKeyProtocol`
    public init<T: EventKeyProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventKey, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventKey`.
    deinit {
        // no reference counting for GdkEventKey, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventKey, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventKey, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventKey, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventKey, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventKey properties

// MARK: - no signals


public extension EventKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventKey` instance.
    var _ptr: UnsafeMutablePointer<GdkEventKey> { return ptr.assumingMemoryBound(to: GdkEventKey.self) }

}



// MARK: - EventMotion Record

/// The `EventMotionProtocol` protocol exposes the methods and properties of an underlying `GdkEventMotion` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventMotion`.
/// Alternatively, use `EventMotionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when the pointer moves.
public protocol EventMotionProtocol {
    /// Untyped pointer to the underlying `GdkEventMotion` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventMotion` instance.
    var _ptr: UnsafeMutablePointer<GdkEventMotion> { get }
}

/// The `EventMotionRef` type acts as a lightweight Swift reference to an underlying `GdkEventMotion` instance.
/// It exposes methods that can operate on this data type through `EventMotionProtocol` conformance.
/// Use `EventMotionRef` only as an `unowned` reference to an existing `GdkEventMotion` instance.
///
/// Generated when the pointer moves.
public struct EventMotionRef: EventMotionProtocol {
    /// Untyped pointer to the underlying `GdkEventMotion` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventMotionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventMotion>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventMotionProtocol`
    init<T: EventMotionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventMotion` type acts as an owner of an underlying `GdkEventMotion` instance.
/// It provides the methods that can operate on this data type through `EventMotionProtocol` conformance.
/// Use `EventMotion` as a strong reference or owner of a `GdkEventMotion` instance.
///
/// Generated when the pointer moves.
open class EventMotion: EventMotionProtocol {
    /// Untyped pointer to the underlying `GdkEventMotion` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventMotion` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventMotion>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventMotion` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventMotion` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventMotion>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventMotion, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventMotionProtocol`
    /// `GdkEventMotion` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventMotionProtocol`
    public init<T: EventMotionProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventMotion, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventMotion`.
    deinit {
        // no reference counting for GdkEventMotion, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventMotion, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventMotion, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventMotion, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventMotionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventMotion, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventMotion properties

// MARK: - no signals


public extension EventMotionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventMotion` instance.
    var _ptr: UnsafeMutablePointer<GdkEventMotion> { return ptr.assumingMemoryBound(to: GdkEventMotion.self) }

    /// Request more motion notifies if `event` is a motion notify hint event.
    /// 
    /// This function should be used instead of `gdk_window_get_pointer()` to
    /// request further motion notifies, because it also works for extension
    /// events where motion notifies are provided for devices other than the
    /// core pointer. Coordinate extraction, processing and requesting more
    /// motion events from a `GDK_MOTION_NOTIFY` event usually works like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// {
    ///   // motion_event handler
    ///   x = motion_event->x;
    ///   y = motion_event->y;
    ///   // handle (x,y) motion
    ///   gdk_event_request_motions (motion_event); // handles is_hint events
    /// }
    /// ```
    /// 
    func requestMotions() {
        gdk_event_request_motions(cast(_ptr))
    
    }

    /// Request more motion notifies if `event` is a motion notify hint event.
    /// 
    /// This function should be used instead of `gdk_window_get_pointer()` to
    /// request further motion notifies, because it also works for extension
    /// events where motion notifies are provided for devices other than the
    /// core pointer. Coordinate extraction, processing and requesting more
    /// motion events from a `GDK_MOTION_NOTIFY` event usually works like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// {
    ///   // motion_event handler
    ///   x = motion_event->x;
    ///   y = motion_event->y;
    ///   // handle (x,y) motion
    ///   gdk_event_request_motions (motion_event); // handles is_hint events
    /// }
    /// ```
    /// 
    func eventRequestMotions() {
        gdk_event_request_motions(cast(_ptr))
    
    }
}



// MARK: - EventOwnerChange Record

/// The `EventOwnerChangeProtocol` protocol exposes the methods and properties of an underlying `GdkEventOwnerChange` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventOwnerChange`.
/// Alternatively, use `EventOwnerChangeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when the owner of a selection changes. On X11, this
/// information is only available if the X server supports the XFIXES
/// extension.
public protocol EventOwnerChangeProtocol {
    /// Untyped pointer to the underlying `GdkEventOwnerChange` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventOwnerChange` instance.
    var _ptr: UnsafeMutablePointer<GdkEventOwnerChange> { get }
}

/// The `EventOwnerChangeRef` type acts as a lightweight Swift reference to an underlying `GdkEventOwnerChange` instance.
/// It exposes methods that can operate on this data type through `EventOwnerChangeProtocol` conformance.
/// Use `EventOwnerChangeRef` only as an `unowned` reference to an existing `GdkEventOwnerChange` instance.
///
/// Generated when the owner of a selection changes. On X11, this
/// information is only available if the X server supports the XFIXES
/// extension.
public struct EventOwnerChangeRef: EventOwnerChangeProtocol {
    /// Untyped pointer to the underlying `GdkEventOwnerChange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventOwnerChangeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventOwnerChange>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventOwnerChangeProtocol`
    init<T: EventOwnerChangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventOwnerChange` type acts as an owner of an underlying `GdkEventOwnerChange` instance.
/// It provides the methods that can operate on this data type through `EventOwnerChangeProtocol` conformance.
/// Use `EventOwnerChange` as a strong reference or owner of a `GdkEventOwnerChange` instance.
///
/// Generated when the owner of a selection changes. On X11, this
/// information is only available if the X server supports the XFIXES
/// extension.
open class EventOwnerChange: EventOwnerChangeProtocol {
    /// Untyped pointer to the underlying `GdkEventOwnerChange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventOwnerChange` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventOwnerChange>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventOwnerChange` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventOwnerChange` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventOwnerChange>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventOwnerChange, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventOwnerChangeProtocol`
    /// `GdkEventOwnerChange` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventOwnerChangeProtocol`
    public init<T: EventOwnerChangeProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventOwnerChange, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventOwnerChange`.
    deinit {
        // no reference counting for GdkEventOwnerChange, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventOwnerChange, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventOwnerChange, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventOwnerChange, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventOwnerChangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventOwnerChange, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventOwnerChange properties

// MARK: - no signals


public extension EventOwnerChangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventOwnerChange` instance.
    var _ptr: UnsafeMutablePointer<GdkEventOwnerChange> { return ptr.assumingMemoryBound(to: GdkEventOwnerChange.self) }

}



// MARK: - EventPadAxis Record

/// The `EventPadAxisProtocol` protocol exposes the methods and properties of an underlying `GdkEventPadAxis` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventPadAxis`.
/// Alternatively, use `EventPadAxisRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` interaction with tactile sensors.
public protocol EventPadAxisProtocol {
    /// Untyped pointer to the underlying `GdkEventPadAxis` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventPadAxis` instance.
    var _ptr: UnsafeMutablePointer<GdkEventPadAxis> { get }
}

/// The `EventPadAxisRef` type acts as a lightweight Swift reference to an underlying `GdkEventPadAxis` instance.
/// It exposes methods that can operate on this data type through `EventPadAxisProtocol` conformance.
/// Use `EventPadAxisRef` only as an `unowned` reference to an existing `GdkEventPadAxis` instance.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` interaction with tactile sensors.
public struct EventPadAxisRef: EventPadAxisProtocol {
    /// Untyped pointer to the underlying `GdkEventPadAxis` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventPadAxisRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventPadAxis>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventPadAxisProtocol`
    init<T: EventPadAxisProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventPadAxis` type acts as an owner of an underlying `GdkEventPadAxis` instance.
/// It provides the methods that can operate on this data type through `EventPadAxisProtocol` conformance.
/// Use `EventPadAxis` as a strong reference or owner of a `GdkEventPadAxis` instance.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` interaction with tactile sensors.
open class EventPadAxis: EventPadAxisProtocol {
    /// Untyped pointer to the underlying `GdkEventPadAxis` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventPadAxis` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventPadAxis>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventPadAxis` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventPadAxis` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventPadAxis>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventPadAxis, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventPadAxisProtocol`
    /// `GdkEventPadAxis` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventPadAxisProtocol`
    public init<T: EventPadAxisProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventPadAxis, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventPadAxis`.
    deinit {
        // no reference counting for GdkEventPadAxis, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventPadAxis, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventPadAxis, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventPadAxis, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadAxisProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventPadAxis, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventPadAxis properties

// MARK: - no signals


public extension EventPadAxisProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventPadAxis` instance.
    var _ptr: UnsafeMutablePointer<GdkEventPadAxis> { return ptr.assumingMemoryBound(to: GdkEventPadAxis.self) }

}



// MARK: - EventPadButton Record

/// The `EventPadButtonProtocol` protocol exposes the methods and properties of an underlying `GdkEventPadButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventPadButton`.
/// Alternatively, use `EventPadButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` button presses and releases.
public protocol EventPadButtonProtocol {
    /// Untyped pointer to the underlying `GdkEventPadButton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventPadButton` instance.
    var _ptr: UnsafeMutablePointer<GdkEventPadButton> { get }
}

/// The `EventPadButtonRef` type acts as a lightweight Swift reference to an underlying `GdkEventPadButton` instance.
/// It exposes methods that can operate on this data type through `EventPadButtonProtocol` conformance.
/// Use `EventPadButtonRef` only as an `unowned` reference to an existing `GdkEventPadButton` instance.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` button presses and releases.
public struct EventPadButtonRef: EventPadButtonProtocol {
    /// Untyped pointer to the underlying `GdkEventPadButton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventPadButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventPadButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventPadButtonProtocol`
    init<T: EventPadButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventPadButton` type acts as an owner of an underlying `GdkEventPadButton` instance.
/// It provides the methods that can operate on this data type through `EventPadButtonProtocol` conformance.
/// Use `EventPadButton` as a strong reference or owner of a `GdkEventPadButton` instance.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` button presses and releases.
open class EventPadButton: EventPadButtonProtocol {
    /// Untyped pointer to the underlying `GdkEventPadButton` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventPadButton` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventPadButton>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventPadButton` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventPadButton` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventPadButton>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventPadButton, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventPadButtonProtocol`
    /// `GdkEventPadButton` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventPadButtonProtocol`
    public init<T: EventPadButtonProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventPadButton, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventPadButton`.
    deinit {
        // no reference counting for GdkEventPadButton, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventPadButton, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventPadButton, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventPadButton, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventPadButton, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventPadButton properties

// MARK: - no signals


public extension EventPadButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventPadButton` instance.
    var _ptr: UnsafeMutablePointer<GdkEventPadButton> { return ptr.assumingMemoryBound(to: GdkEventPadButton.self) }

}



// MARK: - EventPadGroupMode Record

/// The `EventPadGroupModeProtocol` protocol exposes the methods and properties of an underlying `GdkEventPadGroupMode` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventPadGroupMode`.
/// Alternatively, use `EventPadGroupModeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` mode switches in a group.
public protocol EventPadGroupModeProtocol {
    /// Untyped pointer to the underlying `GdkEventPadGroupMode` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventPadGroupMode` instance.
    var _ptr: UnsafeMutablePointer<GdkEventPadGroupMode> { get }
}

/// The `EventPadGroupModeRef` type acts as a lightweight Swift reference to an underlying `GdkEventPadGroupMode` instance.
/// It exposes methods that can operate on this data type through `EventPadGroupModeProtocol` conformance.
/// Use `EventPadGroupModeRef` only as an `unowned` reference to an existing `GdkEventPadGroupMode` instance.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` mode switches in a group.
public struct EventPadGroupModeRef: EventPadGroupModeProtocol {
    /// Untyped pointer to the underlying `GdkEventPadGroupMode` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventPadGroupModeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventPadGroupMode>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventPadGroupModeProtocol`
    init<T: EventPadGroupModeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventPadGroupMode` type acts as an owner of an underlying `GdkEventPadGroupMode` instance.
/// It provides the methods that can operate on this data type through `EventPadGroupModeProtocol` conformance.
/// Use `EventPadGroupMode` as a strong reference or owner of a `GdkEventPadGroupMode` instance.
///
/// Generated during `GDK_SOURCE_TABLET_PAD` mode switches in a group.
open class EventPadGroupMode: EventPadGroupModeProtocol {
    /// Untyped pointer to the underlying `GdkEventPadGroupMode` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventPadGroupMode` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventPadGroupMode>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventPadGroupMode` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventPadGroupMode` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventPadGroupMode>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventPadGroupMode, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventPadGroupModeProtocol`
    /// `GdkEventPadGroupMode` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventPadGroupModeProtocol`
    public init<T: EventPadGroupModeProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventPadGroupMode, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventPadGroupMode`.
    deinit {
        // no reference counting for GdkEventPadGroupMode, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventPadGroupMode, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventPadGroupMode, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventPadGroupMode, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPadGroupModeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventPadGroupMode, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventPadGroupMode properties

// MARK: - no signals


public extension EventPadGroupModeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventPadGroupMode` instance.
    var _ptr: UnsafeMutablePointer<GdkEventPadGroupMode> { return ptr.assumingMemoryBound(to: GdkEventPadGroupMode.self) }

}



// MARK: - EventProperty Record

/// The `EventPropertyProtocol` protocol exposes the methods and properties of an underlying `GdkEventProperty` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventProperty`.
/// Alternatively, use `EventPropertyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Describes a property change on a window.
public protocol EventPropertyProtocol {
    /// Untyped pointer to the underlying `GdkEventProperty` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventProperty` instance.
    var _ptr: UnsafeMutablePointer<GdkEventProperty> { get }
}

/// The `EventPropertyRef` type acts as a lightweight Swift reference to an underlying `GdkEventProperty` instance.
/// It exposes methods that can operate on this data type through `EventPropertyProtocol` conformance.
/// Use `EventPropertyRef` only as an `unowned` reference to an existing `GdkEventProperty` instance.
///
/// Describes a property change on a window.
public struct EventPropertyRef: EventPropertyProtocol {
    /// Untyped pointer to the underlying `GdkEventProperty` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventPropertyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventProperty>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventPropertyProtocol`
    init<T: EventPropertyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventProperty` type acts as an owner of an underlying `GdkEventProperty` instance.
/// It provides the methods that can operate on this data type through `EventPropertyProtocol` conformance.
/// Use `EventProperty` as a strong reference or owner of a `GdkEventProperty` instance.
///
/// Describes a property change on a window.
open class EventProperty: EventPropertyProtocol {
    /// Untyped pointer to the underlying `GdkEventProperty` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventProperty` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventProperty>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventProperty` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventProperty` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventProperty>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventProperty, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventPropertyProtocol`
    /// `GdkEventProperty` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventPropertyProtocol`
    public init<T: EventPropertyProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventProperty, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventProperty`.
    deinit {
        // no reference counting for GdkEventProperty, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventProperty, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventProperty, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventProperty, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventPropertyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventProperty, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventProperty properties

// MARK: - no signals


public extension EventPropertyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventProperty` instance.
    var _ptr: UnsafeMutablePointer<GdkEventProperty> { return ptr.assumingMemoryBound(to: GdkEventProperty.self) }

}



// MARK: - EventProximity Record

/// The `EventProximityProtocol` protocol exposes the methods and properties of an underlying `GdkEventProximity` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventProximity`.
/// Alternatively, use `EventProximityRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Proximity events are generated when using GDK’s wrapper for the
/// XInput extension. The XInput extension is an add-on for standard X
/// that allows you to use nonstandard devices such as graphics tablets.
/// A proximity event indicates that the stylus has moved in or out of
/// contact with the tablet, or perhaps that the user’s finger has moved
/// in or out of contact with a touch screen.
/// 
/// This event type will be used pretty rarely. It only is important for
/// XInput aware programs that are drawing their own cursor.
public protocol EventProximityProtocol {
    /// Untyped pointer to the underlying `GdkEventProximity` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventProximity` instance.
    var _ptr: UnsafeMutablePointer<GdkEventProximity> { get }
}

/// The `EventProximityRef` type acts as a lightweight Swift reference to an underlying `GdkEventProximity` instance.
/// It exposes methods that can operate on this data type through `EventProximityProtocol` conformance.
/// Use `EventProximityRef` only as an `unowned` reference to an existing `GdkEventProximity` instance.
///
/// Proximity events are generated when using GDK’s wrapper for the
/// XInput extension. The XInput extension is an add-on for standard X
/// that allows you to use nonstandard devices such as graphics tablets.
/// A proximity event indicates that the stylus has moved in or out of
/// contact with the tablet, or perhaps that the user’s finger has moved
/// in or out of contact with a touch screen.
/// 
/// This event type will be used pretty rarely. It only is important for
/// XInput aware programs that are drawing their own cursor.
public struct EventProximityRef: EventProximityProtocol {
    /// Untyped pointer to the underlying `GdkEventProximity` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventProximityRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventProximity>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventProximityProtocol`
    init<T: EventProximityProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventProximity` type acts as an owner of an underlying `GdkEventProximity` instance.
/// It provides the methods that can operate on this data type through `EventProximityProtocol` conformance.
/// Use `EventProximity` as a strong reference or owner of a `GdkEventProximity` instance.
///
/// Proximity events are generated when using GDK’s wrapper for the
/// XInput extension. The XInput extension is an add-on for standard X
/// that allows you to use nonstandard devices such as graphics tablets.
/// A proximity event indicates that the stylus has moved in or out of
/// contact with the tablet, or perhaps that the user’s finger has moved
/// in or out of contact with a touch screen.
/// 
/// This event type will be used pretty rarely. It only is important for
/// XInput aware programs that are drawing their own cursor.
open class EventProximity: EventProximityProtocol {
    /// Untyped pointer to the underlying `GdkEventProximity` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventProximity` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventProximity>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventProximity` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventProximity` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventProximity>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventProximity, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventProximityProtocol`
    /// `GdkEventProximity` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventProximityProtocol`
    public init<T: EventProximityProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventProximity, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventProximity`.
    deinit {
        // no reference counting for GdkEventProximity, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventProximity, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventProximity, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventProximity, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProximityProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventProximity, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventProximity properties

// MARK: - no signals


public extension EventProximityProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventProximity` instance.
    var _ptr: UnsafeMutablePointer<GdkEventProximity> { return ptr.assumingMemoryBound(to: GdkEventProximity.self) }

}



// MARK: - EventScroll Record

/// The `EventScrollProtocol` protocol exposes the methods and properties of an underlying `GdkEventScroll` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventScroll`.
/// Alternatively, use `EventScrollRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated from button presses for the buttons 4 to 7. Wheel mice are
/// usually configured to generate button press events for buttons 4 and 5
/// when the wheel is turned.
/// 
/// Some GDK backends can also generate “smooth” scroll events, which
/// can be recognized by the `GDK_SCROLL_SMOOTH` scroll direction. For
/// these, the scroll deltas can be obtained with
/// `gdk_event_get_scroll_deltas()`.
public protocol EventScrollProtocol {
    /// Untyped pointer to the underlying `GdkEventScroll` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventScroll` instance.
    var _ptr: UnsafeMutablePointer<GdkEventScroll> { get }
}

/// The `EventScrollRef` type acts as a lightweight Swift reference to an underlying `GdkEventScroll` instance.
/// It exposes methods that can operate on this data type through `EventScrollProtocol` conformance.
/// Use `EventScrollRef` only as an `unowned` reference to an existing `GdkEventScroll` instance.
///
/// Generated from button presses for the buttons 4 to 7. Wheel mice are
/// usually configured to generate button press events for buttons 4 and 5
/// when the wheel is turned.
/// 
/// Some GDK backends can also generate “smooth” scroll events, which
/// can be recognized by the `GDK_SCROLL_SMOOTH` scroll direction. For
/// these, the scroll deltas can be obtained with
/// `gdk_event_get_scroll_deltas()`.
public struct EventScrollRef: EventScrollProtocol {
    /// Untyped pointer to the underlying `GdkEventScroll` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventScrollRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventScroll>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventScrollProtocol`
    init<T: EventScrollProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventScroll` type acts as an owner of an underlying `GdkEventScroll` instance.
/// It provides the methods that can operate on this data type through `EventScrollProtocol` conformance.
/// Use `EventScroll` as a strong reference or owner of a `GdkEventScroll` instance.
///
/// Generated from button presses for the buttons 4 to 7. Wheel mice are
/// usually configured to generate button press events for buttons 4 and 5
/// when the wheel is turned.
/// 
/// Some GDK backends can also generate “smooth” scroll events, which
/// can be recognized by the `GDK_SCROLL_SMOOTH` scroll direction. For
/// these, the scroll deltas can be obtained with
/// `gdk_event_get_scroll_deltas()`.
open class EventScroll: EventScrollProtocol {
    /// Untyped pointer to the underlying `GdkEventScroll` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventScroll` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventScroll>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventScroll` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventScroll` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventScroll>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventScroll, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventScrollProtocol`
    /// `GdkEventScroll` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventScrollProtocol`
    public init<T: EventScrollProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventScroll, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventScroll`.
    deinit {
        // no reference counting for GdkEventScroll, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventScroll, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventScroll, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventScroll, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventScrollProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventScroll, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventScroll properties

// MARK: - no signals


public extension EventScrollProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventScroll` instance.
    var _ptr: UnsafeMutablePointer<GdkEventScroll> { return ptr.assumingMemoryBound(to: GdkEventScroll.self) }

}



// MARK: - EventSelection Record

/// The `EventSelectionProtocol` protocol exposes the methods and properties of an underlying `GdkEventSelection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventSelection`.
/// Alternatively, use `EventSelectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when a selection is requested or ownership of a selection
/// is taken over by another client application.
public protocol EventSelectionProtocol {
    /// Untyped pointer to the underlying `GdkEventSelection` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventSelection` instance.
    var _ptr: UnsafeMutablePointer<GdkEventSelection> { get }
}

/// The `EventSelectionRef` type acts as a lightweight Swift reference to an underlying `GdkEventSelection` instance.
/// It exposes methods that can operate on this data type through `EventSelectionProtocol` conformance.
/// Use `EventSelectionRef` only as an `unowned` reference to an existing `GdkEventSelection` instance.
///
/// Generated when a selection is requested or ownership of a selection
/// is taken over by another client application.
public struct EventSelectionRef: EventSelectionProtocol {
    /// Untyped pointer to the underlying `GdkEventSelection` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventSelectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventSelection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventSelectionProtocol`
    init<T: EventSelectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventSelection` type acts as an owner of an underlying `GdkEventSelection` instance.
/// It provides the methods that can operate on this data type through `EventSelectionProtocol` conformance.
/// Use `EventSelection` as a strong reference or owner of a `GdkEventSelection` instance.
///
/// Generated when a selection is requested or ownership of a selection
/// is taken over by another client application.
open class EventSelection: EventSelectionProtocol {
    /// Untyped pointer to the underlying `GdkEventSelection` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventSelection` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventSelection>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventSelection` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventSelection` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventSelection>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventSelection, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventSelectionProtocol`
    /// `GdkEventSelection` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventSelectionProtocol`
    public init<T: EventSelectionProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventSelection, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventSelection`.
    deinit {
        // no reference counting for GdkEventSelection, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventSelection, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventSelection, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventSelection, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventSelection, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventSelection properties

// MARK: - no signals


public extension EventSelectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventSelection` instance.
    var _ptr: UnsafeMutablePointer<GdkEventSelection> { return ptr.assumingMemoryBound(to: GdkEventSelection.self) }

}



// MARK: - EventSequence Record

/// The `EventSequenceProtocol` protocol exposes the methods and properties of an underlying `GdkEventSequence` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventSequence`.
/// Alternatively, use `EventSequenceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EventSequenceProtocol {
    /// Untyped pointer to the underlying `GdkEventSequence` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventSequence` instance.
    var event_sequence_ptr: UnsafeMutablePointer<GdkEventSequence> { get }
}

/// The `EventSequenceRef` type acts as a lightweight Swift reference to an underlying `GdkEventSequence` instance.
/// It exposes methods that can operate on this data type through `EventSequenceProtocol` conformance.
/// Use `EventSequenceRef` only as an `unowned` reference to an existing `GdkEventSequence` instance.
///

public struct EventSequenceRef: EventSequenceProtocol {
    /// Untyped pointer to the underlying `GdkEventSequence` instance.
    /// For type-safe access, use the generated, typed pointer `event_sequence_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventSequenceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventSequence>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventSequenceProtocol`
    init<T: EventSequenceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventSequence` type acts as an owner of an underlying `GdkEventSequence` instance.
/// It provides the methods that can operate on this data type through `EventSequenceProtocol` conformance.
/// Use `EventSequence` as a strong reference or owner of a `GdkEventSequence` instance.
///

open class EventSequence: EventSequenceProtocol {
    /// Untyped pointer to the underlying `GdkEventSequence` instance.
    /// For type-safe access, use the generated, typed pointer `event_sequence_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventSequence` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventSequence>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventSequence` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventSequence` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventSequence>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventSequence, cannot ref(cast(event_sequence_ptr))
    }

    /// Reference intialiser for a related type that implements `EventSequenceProtocol`
    /// `GdkEventSequence` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventSequenceProtocol`
    public init<T: EventSequenceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.event_sequence_ptr)
        // no reference counting for GdkEventSequence, cannot ref(cast(event_sequence_ptr))
    }

    /// Do-nothing destructor for`GdkEventSequence`.
    deinit {
        // no reference counting for GdkEventSequence, cannot unref(cast(event_sequence_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventSequence, cannot ref(cast(event_sequence_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventSequence, cannot ref(cast(event_sequence_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventSequence, cannot ref(cast(event_sequence_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSequenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventSequence, cannot ref(cast(event_sequence_ptr))
    }



}

// MARK: - no EventSequence properties

// MARK: - no signals


public extension EventSequenceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventSequence` instance.
    var event_sequence_ptr: UnsafeMutablePointer<GdkEventSequence> { return ptr.assumingMemoryBound(to: GdkEventSequence.self) }

}



// MARK: - EventSetting Record

/// The `EventSettingProtocol` protocol exposes the methods and properties of an underlying `GdkEventSetting` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventSetting`.
/// Alternatively, use `EventSettingRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when a setting is modified.
public protocol EventSettingProtocol {
    /// Untyped pointer to the underlying `GdkEventSetting` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventSetting` instance.
    var _ptr: UnsafeMutablePointer<GdkEventSetting> { get }
}

/// The `EventSettingRef` type acts as a lightweight Swift reference to an underlying `GdkEventSetting` instance.
/// It exposes methods that can operate on this data type through `EventSettingProtocol` conformance.
/// Use `EventSettingRef` only as an `unowned` reference to an existing `GdkEventSetting` instance.
///
/// Generated when a setting is modified.
public struct EventSettingRef: EventSettingProtocol {
    /// Untyped pointer to the underlying `GdkEventSetting` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventSettingRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventSetting>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventSettingProtocol`
    init<T: EventSettingProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventSetting` type acts as an owner of an underlying `GdkEventSetting` instance.
/// It provides the methods that can operate on this data type through `EventSettingProtocol` conformance.
/// Use `EventSetting` as a strong reference or owner of a `GdkEventSetting` instance.
///
/// Generated when a setting is modified.
open class EventSetting: EventSettingProtocol {
    /// Untyped pointer to the underlying `GdkEventSetting` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventSetting` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventSetting>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventSetting` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventSetting` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventSetting>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventSetting, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventSettingProtocol`
    /// `GdkEventSetting` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventSettingProtocol`
    public init<T: EventSettingProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventSetting, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventSetting`.
    deinit {
        // no reference counting for GdkEventSetting, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventSetting, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventSetting, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventSetting, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventSettingProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventSetting, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventSetting properties

// MARK: - no signals


public extension EventSettingProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventSetting` instance.
    var _ptr: UnsafeMutablePointer<GdkEventSetting> { return ptr.assumingMemoryBound(to: GdkEventSetting.self) }

}



// MARK: - EventTouch Record

/// The `EventTouchProtocol` protocol exposes the methods and properties of an underlying `GdkEventTouch` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventTouch`.
/// Alternatively, use `EventTouchRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Used for touch events.
/// `type` field will be one of `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
/// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`.
/// 
/// Touch events are grouped into sequences by means of the `sequence`
/// field, which can also be obtained with `gdk_event_get_event_sequence()`.
/// Each sequence begins with a `GDK_TOUCH_BEGIN` event, followed by
/// any number of `GDK_TOUCH_UPDATE` events, and ends with a `GDK_TOUCH_END`
/// (or `GDK_TOUCH_CANCEL`) event. With multitouch devices, there may be
/// several active sequences at the same time.
public protocol EventTouchProtocol {
    /// Untyped pointer to the underlying `GdkEventTouch` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventTouch` instance.
    var _ptr: UnsafeMutablePointer<GdkEventTouch> { get }
}

/// The `EventTouchRef` type acts as a lightweight Swift reference to an underlying `GdkEventTouch` instance.
/// It exposes methods that can operate on this data type through `EventTouchProtocol` conformance.
/// Use `EventTouchRef` only as an `unowned` reference to an existing `GdkEventTouch` instance.
///
/// Used for touch events.
/// `type` field will be one of `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
/// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`.
/// 
/// Touch events are grouped into sequences by means of the `sequence`
/// field, which can also be obtained with `gdk_event_get_event_sequence()`.
/// Each sequence begins with a `GDK_TOUCH_BEGIN` event, followed by
/// any number of `GDK_TOUCH_UPDATE` events, and ends with a `GDK_TOUCH_END`
/// (or `GDK_TOUCH_CANCEL`) event. With multitouch devices, there may be
/// several active sequences at the same time.
public struct EventTouchRef: EventTouchProtocol {
    /// Untyped pointer to the underlying `GdkEventTouch` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventTouchRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventTouch>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventTouchProtocol`
    init<T: EventTouchProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventTouch` type acts as an owner of an underlying `GdkEventTouch` instance.
/// It provides the methods that can operate on this data type through `EventTouchProtocol` conformance.
/// Use `EventTouch` as a strong reference or owner of a `GdkEventTouch` instance.
///
/// Used for touch events.
/// `type` field will be one of `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
/// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`.
/// 
/// Touch events are grouped into sequences by means of the `sequence`
/// field, which can also be obtained with `gdk_event_get_event_sequence()`.
/// Each sequence begins with a `GDK_TOUCH_BEGIN` event, followed by
/// any number of `GDK_TOUCH_UPDATE` events, and ends with a `GDK_TOUCH_END`
/// (or `GDK_TOUCH_CANCEL`) event. With multitouch devices, there may be
/// several active sequences at the same time.
open class EventTouch: EventTouchProtocol {
    /// Untyped pointer to the underlying `GdkEventTouch` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventTouch` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventTouch>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventTouch` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventTouch` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventTouch>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventTouch, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventTouchProtocol`
    /// `GdkEventTouch` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventTouchProtocol`
    public init<T: EventTouchProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventTouch, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventTouch`.
    deinit {
        // no reference counting for GdkEventTouch, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventTouch, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventTouch, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventTouch, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventTouch, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventTouch properties

// MARK: - no signals


public extension EventTouchProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventTouch` instance.
    var _ptr: UnsafeMutablePointer<GdkEventTouch> { return ptr.assumingMemoryBound(to: GdkEventTouch.self) }

}



// MARK: - EventTouchpadPinch Record

/// The `EventTouchpadPinchProtocol` protocol exposes the methods and properties of an underlying `GdkEventTouchpadPinch` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventTouchpadPinch`.
/// Alternatively, use `EventTouchpadPinchRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated during touchpad swipe gestures.
public protocol EventTouchpadPinchProtocol {
    /// Untyped pointer to the underlying `GdkEventTouchpadPinch` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventTouchpadPinch` instance.
    var _ptr: UnsafeMutablePointer<GdkEventTouchpadPinch> { get }
}

/// The `EventTouchpadPinchRef` type acts as a lightweight Swift reference to an underlying `GdkEventTouchpadPinch` instance.
/// It exposes methods that can operate on this data type through `EventTouchpadPinchProtocol` conformance.
/// Use `EventTouchpadPinchRef` only as an `unowned` reference to an existing `GdkEventTouchpadPinch` instance.
///
/// Generated during touchpad swipe gestures.
public struct EventTouchpadPinchRef: EventTouchpadPinchProtocol {
    /// Untyped pointer to the underlying `GdkEventTouchpadPinch` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventTouchpadPinchRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventTouchpadPinch>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventTouchpadPinchProtocol`
    init<T: EventTouchpadPinchProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventTouchpadPinch` type acts as an owner of an underlying `GdkEventTouchpadPinch` instance.
/// It provides the methods that can operate on this data type through `EventTouchpadPinchProtocol` conformance.
/// Use `EventTouchpadPinch` as a strong reference or owner of a `GdkEventTouchpadPinch` instance.
///
/// Generated during touchpad swipe gestures.
open class EventTouchpadPinch: EventTouchpadPinchProtocol {
    /// Untyped pointer to the underlying `GdkEventTouchpadPinch` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventTouchpadPinch` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventTouchpadPinch>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventTouchpadPinch` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventTouchpadPinch` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventTouchpadPinch>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventTouchpadPinch, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventTouchpadPinchProtocol`
    /// `GdkEventTouchpadPinch` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventTouchpadPinchProtocol`
    public init<T: EventTouchpadPinchProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventTouchpadPinch, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventTouchpadPinch`.
    deinit {
        // no reference counting for GdkEventTouchpadPinch, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventTouchpadPinch, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventTouchpadPinch, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventTouchpadPinch, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadPinchProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventTouchpadPinch, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventTouchpadPinch properties

// MARK: - no signals


public extension EventTouchpadPinchProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventTouchpadPinch` instance.
    var _ptr: UnsafeMutablePointer<GdkEventTouchpadPinch> { return ptr.assumingMemoryBound(to: GdkEventTouchpadPinch.self) }

}



// MARK: - EventTouchpadSwipe Record

/// The `EventTouchpadSwipeProtocol` protocol exposes the methods and properties of an underlying `GdkEventTouchpadSwipe` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventTouchpadSwipe`.
/// Alternatively, use `EventTouchpadSwipeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated during touchpad swipe gestures.
public protocol EventTouchpadSwipeProtocol {
    /// Untyped pointer to the underlying `GdkEventTouchpadSwipe` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventTouchpadSwipe` instance.
    var _ptr: UnsafeMutablePointer<GdkEventTouchpadSwipe> { get }
}

/// The `EventTouchpadSwipeRef` type acts as a lightweight Swift reference to an underlying `GdkEventTouchpadSwipe` instance.
/// It exposes methods that can operate on this data type through `EventTouchpadSwipeProtocol` conformance.
/// Use `EventTouchpadSwipeRef` only as an `unowned` reference to an existing `GdkEventTouchpadSwipe` instance.
///
/// Generated during touchpad swipe gestures.
public struct EventTouchpadSwipeRef: EventTouchpadSwipeProtocol {
    /// Untyped pointer to the underlying `GdkEventTouchpadSwipe` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventTouchpadSwipeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventTouchpadSwipe>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventTouchpadSwipeProtocol`
    init<T: EventTouchpadSwipeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventTouchpadSwipe` type acts as an owner of an underlying `GdkEventTouchpadSwipe` instance.
/// It provides the methods that can operate on this data type through `EventTouchpadSwipeProtocol` conformance.
/// Use `EventTouchpadSwipe` as a strong reference or owner of a `GdkEventTouchpadSwipe` instance.
///
/// Generated during touchpad swipe gestures.
open class EventTouchpadSwipe: EventTouchpadSwipeProtocol {
    /// Untyped pointer to the underlying `GdkEventTouchpadSwipe` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventTouchpadSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventTouchpadSwipe>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventTouchpadSwipe` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventTouchpadSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventTouchpadSwipe>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventTouchpadSwipe, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventTouchpadSwipeProtocol`
    /// `GdkEventTouchpadSwipe` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventTouchpadSwipeProtocol`
    public init<T: EventTouchpadSwipeProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventTouchpadSwipe, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventTouchpadSwipe`.
    deinit {
        // no reference counting for GdkEventTouchpadSwipe, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventTouchpadSwipe, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventTouchpadSwipe, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventTouchpadSwipe, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventTouchpadSwipeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventTouchpadSwipe, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventTouchpadSwipe properties

// MARK: - no signals


public extension EventTouchpadSwipeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventTouchpadSwipe` instance.
    var _ptr: UnsafeMutablePointer<GdkEventTouchpadSwipe> { return ptr.assumingMemoryBound(to: GdkEventTouchpadSwipe.self) }

}



// MARK: - EventVisibility Record

/// The `EventVisibilityProtocol` protocol exposes the methods and properties of an underlying `GdkEventVisibility` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventVisibility`.
/// Alternatively, use `EventVisibilityRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when the window visibility status has changed.
public protocol EventVisibilityProtocol {
    /// Untyped pointer to the underlying `GdkEventVisibility` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventVisibility` instance.
    var _ptr: UnsafeMutablePointer<GdkEventVisibility> { get }
}

/// The `EventVisibilityRef` type acts as a lightweight Swift reference to an underlying `GdkEventVisibility` instance.
/// It exposes methods that can operate on this data type through `EventVisibilityProtocol` conformance.
/// Use `EventVisibilityRef` only as an `unowned` reference to an existing `GdkEventVisibility` instance.
///
/// Generated when the window visibility status has changed.
public struct EventVisibilityRef: EventVisibilityProtocol {
    /// Untyped pointer to the underlying `GdkEventVisibility` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventVisibilityRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventVisibility>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventVisibilityProtocol`
    init<T: EventVisibilityProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventVisibility` type acts as an owner of an underlying `GdkEventVisibility` instance.
/// It provides the methods that can operate on this data type through `EventVisibilityProtocol` conformance.
/// Use `EventVisibility` as a strong reference or owner of a `GdkEventVisibility` instance.
///
/// Generated when the window visibility status has changed.
open class EventVisibility: EventVisibilityProtocol {
    /// Untyped pointer to the underlying `GdkEventVisibility` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventVisibility` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventVisibility>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventVisibility` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventVisibility` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventVisibility>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventVisibility, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventVisibilityProtocol`
    /// `GdkEventVisibility` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventVisibilityProtocol`
    public init<T: EventVisibilityProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventVisibility, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventVisibility`.
    deinit {
        // no reference counting for GdkEventVisibility, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventVisibility, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventVisibility, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventVisibility, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventVisibilityProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventVisibility, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventVisibility properties

// MARK: - no signals


public extension EventVisibilityProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventVisibility` instance.
    var _ptr: UnsafeMutablePointer<GdkEventVisibility> { return ptr.assumingMemoryBound(to: GdkEventVisibility.self) }

}



// MARK: - EventWindowState Record

/// The `EventWindowStateProtocol` protocol exposes the methods and properties of an underlying `GdkEventWindowState` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EventWindowState`.
/// Alternatively, use `EventWindowStateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Generated when the state of a toplevel window changes.
public protocol EventWindowStateProtocol {
    /// Untyped pointer to the underlying `GdkEventWindowState` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEventWindowState` instance.
    var _ptr: UnsafeMutablePointer<GdkEventWindowState> { get }
}

/// The `EventWindowStateRef` type acts as a lightweight Swift reference to an underlying `GdkEventWindowState` instance.
/// It exposes methods that can operate on this data type through `EventWindowStateProtocol` conformance.
/// Use `EventWindowStateRef` only as an `unowned` reference to an existing `GdkEventWindowState` instance.
///
/// Generated when the state of a toplevel window changes.
public struct EventWindowStateRef: EventWindowStateProtocol {
    /// Untyped pointer to the underlying `GdkEventWindowState` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EventWindowStateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEventWindowState>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventWindowStateProtocol`
    init<T: EventWindowStateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EventWindowState` type acts as an owner of an underlying `GdkEventWindowState` instance.
/// It provides the methods that can operate on this data type through `EventWindowStateProtocol` conformance.
/// Use `EventWindowState` as a strong reference or owner of a `GdkEventWindowState` instance.
///
/// Generated when the state of a toplevel window changes.
open class EventWindowState: EventWindowStateProtocol {
    /// Untyped pointer to the underlying `GdkEventWindowState` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EventWindowState` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEventWindowState>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEventWindowState` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EventWindowState` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEventWindowState>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEventWindowState, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EventWindowStateProtocol`
    /// `GdkEventWindowState` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventWindowStateProtocol`
    public init<T: EventWindowStateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkEventWindowState, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkEventWindowState`.
    deinit {
        // no reference counting for GdkEventWindowState, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEventWindowState, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEventWindowState, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEventWindowState, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventWindowStateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEventWindowState, cannot ref(cast(_ptr))
    }



}

// MARK: - no EventWindowState properties

// MARK: - no signals


public extension EventWindowStateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEventWindowState` instance.
    var _ptr: UnsafeMutablePointer<GdkEventWindowState> { return ptr.assumingMemoryBound(to: GdkEventWindowState.self) }

}



// MARK: - FrameClockClass Record

/// The `FrameClockClassProtocol` protocol exposes the methods and properties of an underlying `GdkFrameClockClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameClockClass`.
/// Alternatively, use `FrameClockClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameClockClassProtocol {
    /// Untyped pointer to the underlying `GdkFrameClockClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkFrameClockClass` instance.
    var _ptr: UnsafeMutablePointer<GdkFrameClockClass> { get }
}

/// The `FrameClockClassRef` type acts as a lightweight Swift reference to an underlying `GdkFrameClockClass` instance.
/// It exposes methods that can operate on this data type through `FrameClockClassProtocol` conformance.
/// Use `FrameClockClassRef` only as an `unowned` reference to an existing `GdkFrameClockClass` instance.
///

public struct FrameClockClassRef: FrameClockClassProtocol {
    /// Untyped pointer to the underlying `GdkFrameClockClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FrameClockClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkFrameClockClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FrameClockClassProtocol`
    init<T: FrameClockClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameClockClass` type acts as an owner of an underlying `GdkFrameClockClass` instance.
/// It provides the methods that can operate on this data type through `FrameClockClassProtocol` conformance.
/// Use `FrameClockClass` as a strong reference or owner of a `GdkFrameClockClass` instance.
///

open class FrameClockClass: FrameClockClassProtocol {
    /// Untyped pointer to the underlying `GdkFrameClockClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClockClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkFrameClockClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkFrameClockClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FrameClockClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkFrameClockClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkFrameClockClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FrameClockClassProtocol`
    /// `GdkFrameClockClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FrameClockClassProtocol`
    public init<T: FrameClockClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkFrameClockClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkFrameClockClass`.
    deinit {
        // no reference counting for GdkFrameClockClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkFrameClockClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkFrameClockClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkFrameClockClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkFrameClockClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no FrameClockClass properties

// MARK: - no signals


public extension FrameClockClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFrameClockClass` instance.
    var _ptr: UnsafeMutablePointer<GdkFrameClockClass> { return ptr.assumingMemoryBound(to: GdkFrameClockClass.self) }

}



