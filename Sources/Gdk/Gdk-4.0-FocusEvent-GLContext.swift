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

// MARK: - FocusEvent Class

/// The `FocusEventProtocol` protocol exposes the methods and properties of an underlying `GdkFocusEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FocusEvent`.
/// Alternatively, use `FocusEventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An event related to a focus change.
public protocol FocusEventProtocol: EventProtocol {
        /// Untyped pointer to the underlying `GdkFocusEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkFocusEvent` instance.
    var focus_event_ptr: UnsafeMutablePointer<GdkFocusEvent>! { get }

}

/// The `FocusEventRef` type acts as a lightweight Swift reference to an underlying `GdkFocusEvent` instance.
/// It exposes methods that can operate on this data type through `FocusEventProtocol` conformance.
/// Use `FocusEventRef` only as an `unowned` reference to an existing `GdkFocusEvent` instance.
///
/// An event related to a focus change.
public struct FocusEventRef: FocusEventProtocol {
        /// Untyped pointer to the underlying `GdkFocusEvent` instance.
    /// For type-safe access, use the generated, typed pointer `focus_event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FocusEventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkFocusEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkFocusEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkFocusEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkFocusEvent>?) {
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

    /// Reference intialiser for a related type that implements `FocusEventProtocol`
    @inlinable init<T: FocusEventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FocusEvent` type acts as a reference-counted owner of an underlying `GdkFocusEvent` instance.
/// It provides the methods that can operate on this data type through `FocusEventProtocol` conformance.
/// Use `FocusEvent` as a strong reference or owner of a `GdkFocusEvent` instance.
///
/// An event related to a focus change.
open class FocusEvent: Event, FocusEventProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FocusEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkFocusEvent>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FocusEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkFocusEvent>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FocusEvent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FocusEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FocusEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkFocusEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FocusEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkFocusEvent>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkFocusEvent`.
    /// i.e., ownership is transferred to the `FocusEvent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkFocusEvent>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FocusEventProtocol`
    /// Will retain `GdkFocusEvent`.
    /// - Parameter other: an instance of a related type that implements `FocusEventProtocol`
    @inlinable public init<T: FocusEventProtocol>(focusEvent other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FocusEventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FocusEvent properties

// MARK: no FocusEvent signals


// MARK: FocusEvent Class: FocusEventProtocol extension (methods and fields)
public extension FocusEventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFocusEvent` instance.
    @inlinable var focus_event_ptr: UnsafeMutablePointer<GdkFocusEvent>! { return ptr?.assumingMemoryBound(to: GdkFocusEvent.self) }

    /// Extracts whether this event is about focus entering or
    /// leaving the surface.
    @inlinable func getIn() -> Bool {
        let rv = ((gdk_focus_event_get_in(event_ptr)) != 0)
        return rv
    }
    /// Extracts whether this event is about focus entering or
    /// leaving the surface.
    @inlinable var `in`: Bool {
        /// Extracts whether this event is about focus entering or
        /// leaving the surface.
        get {
            let rv = ((gdk_focus_event_get_in(event_ptr)) != 0)
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
/// A `GdkFrameClock` tells the application when to update and repaint
/// a surface. This may be synced to the vertical refresh rate of the
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
public protocol FrameClockProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkFrameClock` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkFrameClock` instance.
    var frame_clock_ptr: UnsafeMutablePointer<GdkFrameClock>! { get }

}

/// The `FrameClockRef` type acts as a lightweight Swift reference to an underlying `GdkFrameClock` instance.
/// It exposes methods that can operate on this data type through `FrameClockProtocol` conformance.
/// Use `FrameClockRef` only as an `unowned` reference to an existing `GdkFrameClock` instance.
///
/// A `GdkFrameClock` tells the application when to update and repaint
/// a surface. This may be synced to the vertical refresh rate of the
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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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
/// A `GdkFrameClock` tells the application when to update and repaint
/// a surface. This may be synced to the vertical refresh rate of the
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
open class FrameClock: GLibObject.Object, FrameClockProtocol {
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
    /// performed. GTK normally handles this internally.
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
    /// emits `GdkSurface::render` which are turned into
    /// `GtkWidget::snapshot` signals by GTK.
    case paint = "paint"
    /// This signal is emitted after processing of the frame is
    /// finished, and is handled internally by GTK to resume normal
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

    /// Calculates the current frames-per-second, based on the
    /// frame timings of `frame_clock`.
    @inlinable func getFps() -> CDouble {
        let rv = gdk_frame_clock_get_fps(frame_clock_ptr)
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
    @inlinable func getRefreshInfo(baseTime: gint64, refreshIntervalReturn: UnsafeMutablePointer<gint64>! = nil, presentationTimeReturn: UnsafeMutablePointer<gint64>!) {
        gdk_frame_clock_get_refresh_info(frame_clock_ptr, baseTime, refreshIntervalReturn, presentationTimeReturn)
    
    }

    /// Retrieves a `GdkFrameTimings` object holding timing information
    /// for the current frame or a recent frame. The `GdkFrameTimings`
    /// object may not yet be complete: see `gdk_frame_timings_get_complete()`.
    @inlinable func getTimings(frameCounter: gint64) -> FrameTimingsRef! {
        let rv = FrameTimingsRef(gconstpointer: gconstpointer(gdk_frame_clock_get_timings(frame_clock_ptr, frameCounter)))
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
    /// this allows GTK to adjust system parameters to get maximally
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

    /// Calculates the current frames-per-second, based on the
    /// frame timings of `frame_clock`.
    @inlinable var fps: CDouble {
        /// Calculates the current frames-per-second, based on the
        /// frame timings of `frame_clock`.
        get {
            let rv = gdk_frame_clock_get_fps(frame_clock_ptr)
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



// MARK: - GLContext Class

/// The `GLContextProtocol` protocol exposes the methods and properties of an underlying `GdkGLContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLContext`.
/// Alternatively, use `GLContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL draw context.
/// 
/// `GdkGLContexts` are created for a `GdkSurface` using
/// `gdk_surface_create_gl_context()`, and the context will match the
/// the characteristics of the surface.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkSurface` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkSurface`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_surface_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
public protocol GLContextProtocol: DrawContextProtocol {
        /// Untyped pointer to the underlying `GdkGLContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkGLContext` instance.
    var gl_context_ptr: UnsafeMutablePointer<GdkGLContext>! { get }

}

/// The `GLContextRef` type acts as a lightweight Swift reference to an underlying `GdkGLContext` instance.
/// It exposes methods that can operate on this data type through `GLContextProtocol` conformance.
/// Use `GLContextRef` only as an `unowned` reference to an existing `GdkGLContext` instance.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL draw context.
/// 
/// `GdkGLContexts` are created for a `GdkSurface` using
/// `gdk_surface_create_gl_context()`, and the context will match the
/// the characteristics of the surface.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkSurface` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkSurface`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_surface_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
public struct GLContextRef: GLContextProtocol {
        /// Untyped pointer to the underlying `GdkGLContext` instance.
    /// For type-safe access, use the generated, typed pointer `gl_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GLContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkGLContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkGLContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkGLContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkGLContext>?) {
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

    /// Reference intialiser for a related type that implements `GLContextProtocol`
    @inlinable init<T: GLContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Retrieves the current `GdkGLContext`.
    @inlinable static func getCurrent() -> GLContextRef! {
        guard let rv = GLContextRef(gconstpointer: gconstpointer(gdk_gl_context_get_current())) else { return nil }
        return rv
    }
}

/// The `GLContext` type acts as a reference-counted owner of an underlying `GdkGLContext` instance.
/// It provides the methods that can operate on this data type through `GLContextProtocol` conformance.
/// Use `GLContext` as a strong reference or owner of a `GdkGLContext` instance.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL draw context.
/// 
/// `GdkGLContexts` are created for a `GdkSurface` using
/// `gdk_surface_create_gl_context()`, and the context will match the
/// the characteristics of the surface.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkSurface` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkSurface`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_surface_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
open class GLContext: DrawContext, GLContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkGLContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkGLContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkGLContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkGLContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkGLContext`.
    /// i.e., ownership is transferred to the `GLContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkGLContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GLContextProtocol`
    /// Will retain `GdkGLContext`.
    /// - Parameter other: an instance of a related type that implements `GLContextProtocol`
    @inlinable public init<T: GLContextProtocol>(gLContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Retrieves the current `GdkGLContext`.
    @inlinable public static func getCurrent() -> GLContext! {
        guard let rv = GLContext(gconstpointer: gconstpointer(gdk_gl_context_get_current())) else { return nil }
        return rv
    }

}

public enum GLContextPropertyName: String, PropertyNameProtocol {
    /// The `GdkDisplay` used to create the `GdkDrawContext`.
    case display = "display"
    /// The `GdkGLContext` that this context is sharing data with, or `nil`
    case sharedContext = "shared-context"
    /// The `GdkSurface` the context is bound to.
    case surface = "surface"
}

public extension GLContextProtocol {
    /// Bind a `GLContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GLContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a GLContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GLContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GLContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GLContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GLContextSignalName: String, SignalNameProtocol {
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
    /// The `GdkDisplay` used to create the `GdkDrawContext`.
    case notifyDisplay = "notify::display"
    /// The `GdkGLContext` that this context is sharing data with, or `nil`
    case notifySharedContext = "notify::shared-context"
    /// The `GdkSurface` the context is bound to.
    case notifySurface = "notify::surface"
}

public extension GLContextProtocol {
    /// Connect a `GLContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: GLContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: GLContext Class: GLContextProtocol extension (methods and fields)
public extension GLContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkGLContext` instance.
    @inlinable var gl_context_ptr: UnsafeMutablePointer<GdkGLContext>! { return ptr?.assumingMemoryBound(to: GdkGLContext.self) }

    /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
    @inlinable func getDebugEnabled() -> Bool {
        let rv = ((gdk_gl_context_get_debug_enabled(gl_context_ptr)) != 0)
        return rv
    }

    /// Retrieves the `GdkDisplay` the `context` is created for
    @inlinable func getDisplay() -> DisplayRef! {
        let rv = DisplayRef(gconstpointer: gconstpointer(gdk_gl_context_get_display(gl_context_ptr)))
        return rv
    }

    /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
    @inlinable func getForwardCompatible() -> Bool {
        let rv = ((gdk_gl_context_get_forward_compatible(gl_context_ptr)) != 0)
        return rv
    }

    /// Retrieves the major and minor version requested by calling
    /// `gdk_gl_context_set_required_version()`.
    @inlinable func getRequiredVersion(major: UnsafeMutablePointer<gint>?, minor: UnsafeMutablePointer<gint>?) {
        gdk_gl_context_get_required_version(gl_context_ptr, major, minor)
    
    }

    /// Retrieves the `GdkGLContext` that this `context` share data with.
    @inlinable func getSharedContext() -> GLContextRef! {
        guard let rv = GLContextRef(gconstpointer: gconstpointer(gdk_gl_context_get_shared_context(gl_context_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the `GdkSurface` used by the `context`.
    @inlinable func getSurface() -> SurfaceRef! {
        let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_gl_context_get_surface(gl_context_ptr)))
        return rv
    }

    /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
    @inlinable func getUseEs() -> Bool {
        let rv = ((gdk_gl_context_get_use_es(gl_context_ptr)) != 0)
        return rv
    }

    /// Retrieves the OpenGL version of the `context`.
    /// 
    /// The `context` must be realized prior to calling this function.
    @inlinable func getVersion(major: UnsafeMutablePointer<gint>!, minor: UnsafeMutablePointer<gint>!) {
        gdk_gl_context_get_version(gl_context_ptr, major, minor)
    
    }

    /// Makes the `context` the current one.
    @inlinable func makeCurrent() {
        gdk_gl_context_make_current(gl_context_ptr)
    
    }

    /// Realizes the given `GdkGLContext`.
    /// 
    /// It is safe to call this function on a realized `GdkGLContext`.
    @inlinable func realize() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_gl_context_realize(gl_context_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets whether the `GdkGLContext` should perform extra validations and
    /// run time checking. This is useful during development, but has
    /// additional overhead.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to
    /// calling this function.
    @inlinable func setDebug(enabled: Bool) {
        gdk_gl_context_set_debug_enabled(gl_context_ptr, gboolean((enabled) ? 1 : 0))
    
    }

    /// Sets whether the `GdkGLContext` should be forward compatible.
    /// 
    /// Forward compatible contexts must not support OpenGL functionality that
    /// has been marked as deprecated in the requested version; non-forward
    /// compatible contexts, on the other hand, must support both deprecated and
    /// non deprecated functionality.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to calling
    /// this function.
    @inlinable func setForward(compatible: Bool) {
        gdk_gl_context_set_forward_compatible(gl_context_ptr, gboolean((compatible) ? 1 : 0))
    
    }

    /// Sets the major and minor version of OpenGL to request.
    /// 
    /// Setting `major` and `minor` to zero will use the default values.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to calling
    /// this function.
    @inlinable func setRequiredVersion(major: Int, minor: Int) {
        gdk_gl_context_set_required_version(gl_context_ptr, gint(major), gint(minor))
    
    }

    /// Requests that GDK create an OpenGL ES context instead of an OpenGL one,
    /// if the platform and windowing system allows it.
    /// 
    /// The `context` must not have been realized.
    /// 
    /// By default, GDK will attempt to automatically detect whether the
    /// underlying GL implementation is OpenGL or OpenGL ES once the `context`
    /// is realized.
    /// 
    /// You should check the return value of `gdk_gl_context_get_use_es()` after
    /// calling `gdk_gl_context_realize()` to decide whether to use the OpenGL or
    /// OpenGL ES API, extensions, or shaders.
    @inlinable func set(useEs: Int) {
        gdk_gl_context_set_use_es(gl_context_ptr, gint(useEs))
    
    }
    /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
    @inlinable var debugEnabled: Bool {
        /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
        get {
            let rv = ((gdk_gl_context_get_debug_enabled(gl_context_ptr)) != 0)
            return rv
        }
        /// Sets whether the `GdkGLContext` should perform extra validations and
        /// run time checking. This is useful during development, but has
        /// additional overhead.
        /// 
        /// The `GdkGLContext` must not be realized or made current prior to
        /// calling this function.
        nonmutating set {
            gdk_gl_context_set_debug_enabled(gl_context_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the `GdkDisplay` the `context` is created for
    @inlinable var display: DisplayRef! {
        /// Retrieves the `GdkDisplay` the `context` is created for
        get {
            let rv = DisplayRef(gconstpointer: gconstpointer(gdk_gl_context_get_display(gl_context_ptr)))
            return rv
        }
    }

    /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
    @inlinable var forwardCompatible: Bool {
        /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
        get {
            let rv = ((gdk_gl_context_get_forward_compatible(gl_context_ptr)) != 0)
            return rv
        }
        /// Sets whether the `GdkGLContext` should be forward compatible.
        /// 
        /// Forward compatible contexts must not support OpenGL functionality that
        /// has been marked as deprecated in the requested version; non-forward
        /// compatible contexts, on the other hand, must support both deprecated and
        /// non deprecated functionality.
        /// 
        /// The `GdkGLContext` must not be realized or made current prior to calling
        /// this function.
        nonmutating set {
            gdk_gl_context_set_forward_compatible(gl_context_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the `GdkGLContext` is in legacy mode or not.
    /// 
    /// The `GdkGLContext` must be realized before calling this function.
    /// 
    /// When realizing a GL context, GDK will try to use the OpenGL 3.2 core
    /// profile; this profile removes all the OpenGL API that was deprecated
    /// prior to the 3.2 version of the specification. If the realization is
    /// successful, this function will return `false`.
    /// 
    /// If the underlying OpenGL implementation does not support core profiles,
    /// GDK will fall back to a pre-3.2 compatibility profile, and this function
    /// will return `true`.
    /// 
    /// You can use the value returned by this function to decide which kind
    /// of OpenGL API to use, or whether to do extension discovery, or what
    /// kind of shader programs to load.
    @inlinable var isLegacy: Bool {
        /// Whether the `GdkGLContext` is in legacy mode or not.
        /// 
        /// The `GdkGLContext` must be realized before calling this function.
        /// 
        /// When realizing a GL context, GDK will try to use the OpenGL 3.2 core
        /// profile; this profile removes all the OpenGL API that was deprecated
        /// prior to the 3.2 version of the specification. If the realization is
        /// successful, this function will return `false`.
        /// 
        /// If the underlying OpenGL implementation does not support core profiles,
        /// GDK will fall back to a pre-3.2 compatibility profile, and this function
        /// will return `true`.
        /// 
        /// You can use the value returned by this function to decide which kind
        /// of OpenGL API to use, or whether to do extension discovery, or what
        /// kind of shader programs to load.
        get {
            let rv = ((gdk_gl_context_is_legacy(gl_context_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the `GdkGLContext` that this `context` share data with.
    @inlinable var sharedContext: GLContextRef! {
        /// Retrieves the `GdkGLContext` that this `context` share data with.
        get {
            guard let rv = GLContextRef(gconstpointer: gconstpointer(gdk_gl_context_get_shared_context(gl_context_ptr))) else { return nil }
            return rv
        }
    }

    /// Retrieves the `GdkSurface` used by the `context`.
    @inlinable var surface: SurfaceRef! {
        /// Retrieves the `GdkSurface` used by the `context`.
        get {
            let rv = SurfaceRef(gconstpointer: gconstpointer(gdk_gl_context_get_surface(gl_context_ptr)))
            return rv
        }
    }

    /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
    @inlinable var useEs: Bool {
        /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
        get {
            let rv = ((gdk_gl_context_get_use_es(gl_context_ptr)) != 0)
            return rv
        }
        /// Requests that GDK create an OpenGL ES context instead of an OpenGL one,
        /// if the platform and windowing system allows it.
        /// 
        /// The `context` must not have been realized.
        /// 
        /// By default, GDK will attempt to automatically detect whether the
        /// underlying GL implementation is OpenGL or OpenGL ES once the `context`
        /// is realized.
        /// 
        /// You should check the return value of `gdk_gl_context_get_use_es()` after
        /// calling `gdk_gl_context_realize()` to decide whether to use the OpenGL or
        /// OpenGL ES API, extensions, or shaders.
        nonmutating set {
            gdk_gl_context_set_use_es(gl_context_ptr, newValue ? 1 : 0)
        }
    }


}



