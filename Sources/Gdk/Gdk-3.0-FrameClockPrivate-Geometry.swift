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

// MARK: - FrameClockPrivate Record

/// The `FrameClockPrivateProtocol` protocol exposes the methods and properties of an underlying `GdkFrameClockPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameClockPrivate`.
/// Alternatively, use `FrameClockPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameClockPrivateProtocol {
        /// Untyped pointer to the underlying `GdkFrameClockPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkFrameClockPrivate` instance.
    var _ptr: UnsafeMutablePointer<GdkFrameClockPrivate> { get }
}

/// The `FrameClockPrivateRef` type acts as a lightweight Swift reference to an underlying `GdkFrameClockPrivate` instance.
/// It exposes methods that can operate on this data type through `FrameClockPrivateProtocol` conformance.
/// Use `FrameClockPrivateRef` only as an `unowned` reference to an existing `GdkFrameClockPrivate` instance.
///

public struct FrameClockPrivateRef: FrameClockPrivateProtocol {
        /// Untyped pointer to the underlying `GdkFrameClockPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FrameClockPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkFrameClockPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FrameClockPrivateProtocol`
    init<T: FrameClockPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameClockPrivate` type acts as an owner of an underlying `GdkFrameClockPrivate` instance.
/// It provides the methods that can operate on this data type through `FrameClockPrivateProtocol` conformance.
/// Use `FrameClockPrivate` as a strong reference or owner of a `GdkFrameClockPrivate` instance.
///

open class FrameClockPrivate: FrameClockPrivateProtocol {
        /// Untyped pointer to the underlying `GdkFrameClockPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameClockPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkFrameClockPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkFrameClockPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FrameClockPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkFrameClockPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkFrameClockPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FrameClockPrivateProtocol`
    /// `GdkFrameClockPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FrameClockPrivateProtocol`
    public init<T: FrameClockPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkFrameClockPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkFrameClockPrivate`.
    deinit {
        // no reference counting for GdkFrameClockPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkFrameClockPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkFrameClockPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkFrameClockPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkFrameClockPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no FrameClockPrivate properties

// MARK: no FrameClockPrivate signals


// MARK: FrameClockPrivate Record: FrameClockPrivateProtocol extension (methods and fields)
public extension FrameClockPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFrameClockPrivate` instance.
    var _ptr: UnsafeMutablePointer<GdkFrameClockPrivate> { return ptr.assumingMemoryBound(to: GdkFrameClockPrivate.self) }



}



// MARK: - FrameTimings Record

/// The `FrameTimingsProtocol` protocol exposes the methods and properties of an underlying `GdkFrameTimings` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameTimings`.
/// Alternatively, use `FrameTimingsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkFrameTimings` object holds timing information for a single frame
/// of the application’s displays. To retrieve `GdkFrameTimings` objects,
/// use `gdk_frame_clock_get_timings()` or `gdk_frame_clock_get_current_timings()`.
/// The information in `GdkFrameTimings` is useful for precise synchronization
/// of video with the event or audio streams, and for measuring
/// quality metrics for the application’s display, such as latency and jitter.
public protocol FrameTimingsProtocol {
        /// Untyped pointer to the underlying `GdkFrameTimings` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkFrameTimings` instance.
    var frame_timings_ptr: UnsafeMutablePointer<GdkFrameTimings> { get }
}

/// The `FrameTimingsRef` type acts as a lightweight Swift reference to an underlying `GdkFrameTimings` instance.
/// It exposes methods that can operate on this data type through `FrameTimingsProtocol` conformance.
/// Use `FrameTimingsRef` only as an `unowned` reference to an existing `GdkFrameTimings` instance.
///
/// A `GdkFrameTimings` object holds timing information for a single frame
/// of the application’s displays. To retrieve `GdkFrameTimings` objects,
/// use `gdk_frame_clock_get_timings()` or `gdk_frame_clock_get_current_timings()`.
/// The information in `GdkFrameTimings` is useful for precise synchronization
/// of video with the event or audio streams, and for measuring
/// quality metrics for the application’s display, such as latency and jitter.
public struct FrameTimingsRef: FrameTimingsProtocol {
        /// Untyped pointer to the underlying `GdkFrameTimings` instance.
    /// For type-safe access, use the generated, typed pointer `frame_timings_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FrameTimingsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FrameTimingsProtocol`
    init<T: FrameTimingsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameTimings` type acts as a reference-counted owner of an underlying `GdkFrameTimings` instance.
/// It provides the methods that can operate on this data type through `FrameTimingsProtocol` conformance.
/// Use `FrameTimings` as a strong reference or owner of a `GdkFrameTimings` instance.
///
/// A `GdkFrameTimings` object holds timing information for a single frame
/// of the application’s displays. To retrieve `GdkFrameTimings` objects,
/// use `gdk_frame_clock_get_timings()` or `gdk_frame_clock_get_current_timings()`.
/// The information in `GdkFrameTimings` is useful for precise synchronization
/// of video with the event or audio streams, and for measuring
/// quality metrics for the application’s display, such as latency and jitter.
open class FrameTimings: FrameTimingsProtocol {
        /// Untyped pointer to the underlying `GdkFrameTimings` instance.
    /// For type-safe access, use the generated, typed pointer `frame_timings_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkFrameTimings`.
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(op)
        gdk_frame_timings_ref(cast(frame_timings_ptr))
    }

    /// Reference intialiser for a related type that implements `FrameTimingsProtocol`
    /// Will retain `GdkFrameTimings`.
    /// - Parameter other: an instance of a related type that implements `FrameTimingsProtocol`
    public init<T: FrameTimingsProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.frame_timings_ptr)
        gdk_frame_timings_ref(cast(frame_timings_ptr))
    }

    /// Releases the underlying `GdkFrameTimings` instance using `gdk_frame_timings_unref`.
    deinit {
        gdk_frame_timings_unref(cast(frame_timings_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gdk_frame_timings_ref(cast(frame_timings_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gdk_frame_timings_ref(cast(frame_timings_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gdk_frame_timings_ref(cast(frame_timings_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gdk_frame_timings_ref(cast(frame_timings_ptr))
    }



}

// MARK: no FrameTimings properties

// MARK: no FrameTimings signals


// MARK: FrameTimings Record: FrameTimingsProtocol extension (methods and fields)
public extension FrameTimingsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFrameTimings` instance.
    var frame_timings_ptr: UnsafeMutablePointer<GdkFrameTimings> { return ptr.assumingMemoryBound(to: GdkFrameTimings.self) }

    /// The timing information in a `GdkFrameTimings` is filled in
    /// incrementally as the frame as drawn and passed off to the
    /// window system for processing and display to the user. The
    /// accessor functions for `GdkFrameTimings` can return 0 to
    /// indicate an unavailable value for two reasons: either because
    /// the information is not yet available, or because it isn't
    /// available at all. Once `gdk_frame_timings_get_complete()` returns
    /// `true` for a frame, you can be certain that no further values
    /// will become available and be stored in the `GdkFrameTimings`.
    func getComplete() -> Bool {
        let rv = gdk_frame_timings_get_complete(cast(frame_timings_ptr))
        return Bool(rv != 0)
    }

    /// Gets the frame counter value of the `GdkFrameClock` when this
    /// this frame was drawn.
    func getFrameCounter() -> Int64 {
        let rv = gdk_frame_timings_get_frame_counter(cast(frame_timings_ptr))
        return Int64(rv)
    }

    /// Returns the frame time for the frame. This is the time value
    /// that is typically used to time animations for the frame. See
    /// `gdk_frame_clock_get_frame_time()`.
    func getFrameTime() -> Int64 {
        let rv = gdk_frame_timings_get_frame_time(cast(frame_timings_ptr))
        return Int64(rv)
    }

    /// Gets the predicted time at which this frame will be displayed. Although
    /// no predicted time may be available, if one is available, it will
    /// be available while the frame is being generated, in contrast to
    /// `gdk_frame_timings_get_presentation_time()`, which is only available
    /// after the frame has been presented. In general, if you are simply
    /// animating, you should use `gdk_frame_clock_get_frame_time()` rather
    /// than this function, but this function is useful for applications
    /// that want exact control over latency. For example, a movie player
    /// may want this information for Audio/Video synchronization.
    func getPredictedPresentationTime() -> Int64 {
        let rv = gdk_frame_timings_get_predicted_presentation_time(cast(frame_timings_ptr))
        return Int64(rv)
    }

    /// Reurns the presentation time. This is the time at which the frame
    /// became visible to the user.
    func getPresentationTime() -> Int64 {
        let rv = gdk_frame_timings_get_presentation_time(cast(frame_timings_ptr))
        return Int64(rv)
    }

    /// Gets the natural interval between presentation times for
    /// the display that this frame was displayed on. Frame presentation
    /// usually happens during the “vertical blanking interval”.
    func getRefreshInterval() -> Int64 {
        let rv = gdk_frame_timings_get_refresh_interval(cast(frame_timings_ptr))
        return Int64(rv)
    }

    /// Increases the reference count of `timings`.
    func ref() -> UnsafeMutablePointer<GdkFrameTimings>! {
        let rv: UnsafeMutablePointer<GdkFrameTimings>! = cast(gdk_frame_timings_ref(cast(frame_timings_ptr)))
        return cast(rv)
    }

    /// Decreases the reference count of `timings`. If `timings`
    /// is no longer referenced, it will be freed.
    func unref() {
        gdk_frame_timings_unref(cast(frame_timings_ptr))
    
    }
    /// The timing information in a `GdkFrameTimings` is filled in
    /// incrementally as the frame as drawn and passed off to the
    /// window system for processing and display to the user. The
    /// accessor functions for `GdkFrameTimings` can return 0 to
    /// indicate an unavailable value for two reasons: either because
    /// the information is not yet available, or because it isn't
    /// available at all. Once `gdk_frame_timings_get_complete()` returns
    /// `true` for a frame, you can be certain that no further values
    /// will become available and be stored in the `GdkFrameTimings`.
    var complete: Bool {
        /// The timing information in a `GdkFrameTimings` is filled in
        /// incrementally as the frame as drawn and passed off to the
        /// window system for processing and display to the user. The
        /// accessor functions for `GdkFrameTimings` can return 0 to
        /// indicate an unavailable value for two reasons: either because
        /// the information is not yet available, or because it isn't
        /// available at all. Once `gdk_frame_timings_get_complete()` returns
        /// `true` for a frame, you can be certain that no further values
        /// will become available and be stored in the `GdkFrameTimings`.
        get {
            let rv = gdk_frame_timings_get_complete(cast(frame_timings_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the frame counter value of the `GdkFrameClock` when this
    /// this frame was drawn.
    var frameCounter: Int64 {
        /// Gets the frame counter value of the `GdkFrameClock` when this
        /// this frame was drawn.
        get {
            let rv = gdk_frame_timings_get_frame_counter(cast(frame_timings_ptr))
            return Int64(rv)
        }
    }

    /// Returns the frame time for the frame. This is the time value
    /// that is typically used to time animations for the frame. See
    /// `gdk_frame_clock_get_frame_time()`.
    var frameTime: Int64 {
        /// Returns the frame time for the frame. This is the time value
        /// that is typically used to time animations for the frame. See
        /// `gdk_frame_clock_get_frame_time()`.
        get {
            let rv = gdk_frame_timings_get_frame_time(cast(frame_timings_ptr))
            return Int64(rv)
        }
    }

    /// Gets the predicted time at which this frame will be displayed. Although
    /// no predicted time may be available, if one is available, it will
    /// be available while the frame is being generated, in contrast to
    /// `gdk_frame_timings_get_presentation_time()`, which is only available
    /// after the frame has been presented. In general, if you are simply
    /// animating, you should use `gdk_frame_clock_get_frame_time()` rather
    /// than this function, but this function is useful for applications
    /// that want exact control over latency. For example, a movie player
    /// may want this information for Audio/Video synchronization.
    var predictedPresentationTime: Int64 {
        /// Gets the predicted time at which this frame will be displayed. Although
        /// no predicted time may be available, if one is available, it will
        /// be available while the frame is being generated, in contrast to
        /// `gdk_frame_timings_get_presentation_time()`, which is only available
        /// after the frame has been presented. In general, if you are simply
        /// animating, you should use `gdk_frame_clock_get_frame_time()` rather
        /// than this function, but this function is useful for applications
        /// that want exact control over latency. For example, a movie player
        /// may want this information for Audio/Video synchronization.
        get {
            let rv = gdk_frame_timings_get_predicted_presentation_time(cast(frame_timings_ptr))
            return Int64(rv)
        }
    }

    /// Reurns the presentation time. This is the time at which the frame
    /// became visible to the user.
    var presentationTime: Int64 {
        /// Reurns the presentation time. This is the time at which the frame
        /// became visible to the user.
        get {
            let rv = gdk_frame_timings_get_presentation_time(cast(frame_timings_ptr))
            return Int64(rv)
        }
    }

    /// Gets the natural interval between presentation times for
    /// the display that this frame was displayed on. Frame presentation
    /// usually happens during the “vertical blanking interval”.
    var refreshInterval: Int64 {
        /// Gets the natural interval between presentation times for
        /// the display that this frame was displayed on. Frame presentation
        /// usually happens during the “vertical blanking interval”.
        get {
            let rv = gdk_frame_timings_get_refresh_interval(cast(frame_timings_ptr))
            return Int64(rv)
        }
    }


}



// MARK: - Geometry Record

/// The `GeometryProtocol` protocol exposes the methods and properties of an underlying `GdkGeometry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Geometry`.
/// Alternatively, use `GeometryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GdkGeometry` struct gives the window manager information about
/// a window’s geometry constraints. Normally you would set these on
/// the GTK+ level using `gtk_window_set_geometry_hints()`. `GtkWindow`
/// then sets the hints on the `GdkWindow` it creates.
/// 
/// `gdk_window_set_geometry_hints()` expects the hints to be fully valid already
/// and simply passes them to the window manager; in contrast,
/// `gtk_window_set_geometry_hints()` performs some interpretation. For example,
/// `GtkWindow` will apply the hints to the geometry widget instead of the
/// toplevel window, if you set a geometry widget. Also, the
/// `min_width`/`min_height`/`max_width`/`max_height` fields may be set to -1, and
/// `GtkWindow` will substitute the size request of the window or geometry widget.
/// If the minimum size hint is not provided, `GtkWindow` will use its requisition
/// as the minimum size. If the minimum size is provided and a geometry widget is
/// set, `GtkWindow` will take the minimum size as the minimum size of the
/// geometry widget rather than the entire window. The base size is treated
/// similarly.
/// 
/// The canonical use-case for `gtk_window_set_geometry_hints()` is to get a
/// terminal widget to resize properly. Here, the terminal text area should be
/// the geometry widget; `GtkWindow` will then automatically set the base size to
/// the size of other widgets in the terminal window, such as the menubar and
/// scrollbar. Then, the `width_inc` and `height_inc` fields should be set to the
/// size of one character in the terminal. Finally, the base size should be set
/// to the size of one character. The net effect is that the minimum size of the
/// terminal will have a 1x1 character terminal area, and only terminal sizes on
/// the “character grid” will be allowed.
/// 
/// Here’s an example of how the terminal example would be implemented, assuming
/// a terminal area widget called “terminal” and a toplevel window “toplevel”:
/// 
/// (C Language Example):
/// ```C
/// 	GdkGeometry hints;
/// 
/// 	hints.base_width = terminal->char_width;
///         hints.base_height = terminal->char_height;
///         hints.min_width = terminal->char_width;
///         hints.min_height = terminal->char_height;
///         hints.width_inc = terminal->char_width;
///         hints.height_inc = terminal->char_height;
/// 
///  gtk_window_set_geometry_hints (GTK_WINDOW (toplevel),
///                                 GTK_WIDGET (terminal),
///                                 &hints,
///                                 GDK_HINT_RESIZE_INC |
///                                 GDK_HINT_MIN_SIZE |
///                                 GDK_HINT_BASE_SIZE);
/// ```
/// 
/// The other useful fields are the `min_aspect` and `max_aspect` fields; these
/// contain a width/height ratio as a floating point number. If a geometry widget
/// is set, the aspect applies to the geometry widget rather than the entire
/// window. The most common use of these hints is probably to set `min_aspect` and
/// `max_aspect` to the same value, thus forcing the window to keep a constant
/// aspect ratio.
public protocol GeometryProtocol {
        /// Untyped pointer to the underlying `GdkGeometry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkGeometry` instance.
    var _ptr: UnsafeMutablePointer<GdkGeometry> { get }
}

/// The `GeometryRef` type acts as a lightweight Swift reference to an underlying `GdkGeometry` instance.
/// It exposes methods that can operate on this data type through `GeometryProtocol` conformance.
/// Use `GeometryRef` only as an `unowned` reference to an existing `GdkGeometry` instance.
///
/// The `GdkGeometry` struct gives the window manager information about
/// a window’s geometry constraints. Normally you would set these on
/// the GTK+ level using `gtk_window_set_geometry_hints()`. `GtkWindow`
/// then sets the hints on the `GdkWindow` it creates.
/// 
/// `gdk_window_set_geometry_hints()` expects the hints to be fully valid already
/// and simply passes them to the window manager; in contrast,
/// `gtk_window_set_geometry_hints()` performs some interpretation. For example,
/// `GtkWindow` will apply the hints to the geometry widget instead of the
/// toplevel window, if you set a geometry widget. Also, the
/// `min_width`/`min_height`/`max_width`/`max_height` fields may be set to -1, and
/// `GtkWindow` will substitute the size request of the window or geometry widget.
/// If the minimum size hint is not provided, `GtkWindow` will use its requisition
/// as the minimum size. If the minimum size is provided and a geometry widget is
/// set, `GtkWindow` will take the minimum size as the minimum size of the
/// geometry widget rather than the entire window. The base size is treated
/// similarly.
/// 
/// The canonical use-case for `gtk_window_set_geometry_hints()` is to get a
/// terminal widget to resize properly. Here, the terminal text area should be
/// the geometry widget; `GtkWindow` will then automatically set the base size to
/// the size of other widgets in the terminal window, such as the menubar and
/// scrollbar. Then, the `width_inc` and `height_inc` fields should be set to the
/// size of one character in the terminal. Finally, the base size should be set
/// to the size of one character. The net effect is that the minimum size of the
/// terminal will have a 1x1 character terminal area, and only terminal sizes on
/// the “character grid” will be allowed.
/// 
/// Here’s an example of how the terminal example would be implemented, assuming
/// a terminal area widget called “terminal” and a toplevel window “toplevel”:
/// 
/// (C Language Example):
/// ```C
/// 	GdkGeometry hints;
/// 
/// 	hints.base_width = terminal->char_width;
///         hints.base_height = terminal->char_height;
///         hints.min_width = terminal->char_width;
///         hints.min_height = terminal->char_height;
///         hints.width_inc = terminal->char_width;
///         hints.height_inc = terminal->char_height;
/// 
///  gtk_window_set_geometry_hints (GTK_WINDOW (toplevel),
///                                 GTK_WIDGET (terminal),
///                                 &hints,
///                                 GDK_HINT_RESIZE_INC |
///                                 GDK_HINT_MIN_SIZE |
///                                 GDK_HINT_BASE_SIZE);
/// ```
/// 
/// The other useful fields are the `min_aspect` and `max_aspect` fields; these
/// contain a width/height ratio as a floating point number. If a geometry widget
/// is set, the aspect applies to the geometry widget rather than the entire
/// window. The most common use of these hints is probably to set `min_aspect` and
/// `max_aspect` to the same value, thus forcing the window to keep a constant
/// aspect ratio.
public struct GeometryRef: GeometryProtocol {
        /// Untyped pointer to the underlying `GdkGeometry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GeometryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkGeometry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GeometryProtocol`
    init<T: GeometryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Geometry` type acts as an owner of an underlying `GdkGeometry` instance.
/// It provides the methods that can operate on this data type through `GeometryProtocol` conformance.
/// Use `Geometry` as a strong reference or owner of a `GdkGeometry` instance.
///
/// The `GdkGeometry` struct gives the window manager information about
/// a window’s geometry constraints. Normally you would set these on
/// the GTK+ level using `gtk_window_set_geometry_hints()`. `GtkWindow`
/// then sets the hints on the `GdkWindow` it creates.
/// 
/// `gdk_window_set_geometry_hints()` expects the hints to be fully valid already
/// and simply passes them to the window manager; in contrast,
/// `gtk_window_set_geometry_hints()` performs some interpretation. For example,
/// `GtkWindow` will apply the hints to the geometry widget instead of the
/// toplevel window, if you set a geometry widget. Also, the
/// `min_width`/`min_height`/`max_width`/`max_height` fields may be set to -1, and
/// `GtkWindow` will substitute the size request of the window or geometry widget.
/// If the minimum size hint is not provided, `GtkWindow` will use its requisition
/// as the minimum size. If the minimum size is provided and a geometry widget is
/// set, `GtkWindow` will take the minimum size as the minimum size of the
/// geometry widget rather than the entire window. The base size is treated
/// similarly.
/// 
/// The canonical use-case for `gtk_window_set_geometry_hints()` is to get a
/// terminal widget to resize properly. Here, the terminal text area should be
/// the geometry widget; `GtkWindow` will then automatically set the base size to
/// the size of other widgets in the terminal window, such as the menubar and
/// scrollbar. Then, the `width_inc` and `height_inc` fields should be set to the
/// size of one character in the terminal. Finally, the base size should be set
/// to the size of one character. The net effect is that the minimum size of the
/// terminal will have a 1x1 character terminal area, and only terminal sizes on
/// the “character grid” will be allowed.
/// 
/// Here’s an example of how the terminal example would be implemented, assuming
/// a terminal area widget called “terminal” and a toplevel window “toplevel”:
/// 
/// (C Language Example):
/// ```C
/// 	GdkGeometry hints;
/// 
/// 	hints.base_width = terminal->char_width;
///         hints.base_height = terminal->char_height;
///         hints.min_width = terminal->char_width;
///         hints.min_height = terminal->char_height;
///         hints.width_inc = terminal->char_width;
///         hints.height_inc = terminal->char_height;
/// 
///  gtk_window_set_geometry_hints (GTK_WINDOW (toplevel),
///                                 GTK_WIDGET (terminal),
///                                 &hints,
///                                 GDK_HINT_RESIZE_INC |
///                                 GDK_HINT_MIN_SIZE |
///                                 GDK_HINT_BASE_SIZE);
/// ```
/// 
/// The other useful fields are the `min_aspect` and `max_aspect` fields; these
/// contain a width/height ratio as a floating point number. If a geometry widget
/// is set, the aspect applies to the geometry widget rather than the entire
/// window. The most common use of these hints is probably to set `min_aspect` and
/// `max_aspect` to the same value, thus forcing the window to keep a constant
/// aspect ratio.
open class Geometry: GeometryProtocol {
        /// Untyped pointer to the underlying `GdkGeometry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Geometry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkGeometry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Geometry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkGeometry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkGeometry, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `GeometryProtocol`
    /// `GdkGeometry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `GeometryProtocol`
    public init<T: GeometryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkGeometry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkGeometry`.
    deinit {
        // no reference counting for GdkGeometry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkGeometry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkGeometry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkGeometry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GeometryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkGeometry, cannot ref(cast(_ptr))
    }



}

// MARK: no Geometry properties

// MARK: no Geometry signals


// MARK: Geometry Record: GeometryProtocol extension (methods and fields)
public extension GeometryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkGeometry` instance.
    var _ptr: UnsafeMutablePointer<GdkGeometry> { return ptr.assumingMemoryBound(to: GdkGeometry.self) }


    /// minimum width of window (or -1 to use requisition, with
    ///  `GtkWindow` only)
    var minWidth: Int {
        /// minimum width of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
        get {
            let rv: Int = cast(_ptr.pointee.min_width)
            return rv
        }
        /// minimum width of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
         set {
            _ptr.pointee.min_width = gint(newValue)
        }
    }

    /// minimum height of window (or -1 to use requisition, with
    ///  `GtkWindow` only)
    var minHeight: Int {
        /// minimum height of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
        get {
            let rv: Int = cast(_ptr.pointee.min_height)
            return rv
        }
        /// minimum height of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
         set {
            _ptr.pointee.min_height = gint(newValue)
        }
    }

    /// maximum width of window (or -1 to use requisition, with
    ///  `GtkWindow` only)
    var maxWidth: Int {
        /// maximum width of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
        get {
            let rv: Int = cast(_ptr.pointee.max_width)
            return rv
        }
        /// maximum width of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
         set {
            _ptr.pointee.max_width = gint(newValue)
        }
    }

    /// maximum height of window (or -1 to use requisition, with
    ///  `GtkWindow` only)
    var maxHeight: Int {
        /// maximum height of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
        get {
            let rv: Int = cast(_ptr.pointee.max_height)
            return rv
        }
        /// maximum height of window (or -1 to use requisition, with
        ///  `GtkWindow` only)
         set {
            _ptr.pointee.max_height = gint(newValue)
        }
    }

    /// allowed window widths are `base_width` + `width_inc` * N where N
    ///  is any integer (-1 allowed with `GtkWindow`)
    var baseWidth: Int {
        /// allowed window widths are `base_width` + `width_inc` * N where N
        ///  is any integer (-1 allowed with `GtkWindow`)
        get {
            let rv: Int = cast(_ptr.pointee.base_width)
            return rv
        }
        /// allowed window widths are `base_width` + `width_inc` * N where N
        ///  is any integer (-1 allowed with `GtkWindow`)
         set {
            _ptr.pointee.base_width = gint(newValue)
        }
    }

    /// allowed window widths are `base_height` + `height_inc` * N where
    ///  N is any integer (-1 allowed with `GtkWindow`)
    var baseHeight: Int {
        /// allowed window widths are `base_height` + `height_inc` * N where
        ///  N is any integer (-1 allowed with `GtkWindow`)
        get {
            let rv: Int = cast(_ptr.pointee.base_height)
            return rv
        }
        /// allowed window widths are `base_height` + `height_inc` * N where
        ///  N is any integer (-1 allowed with `GtkWindow`)
         set {
            _ptr.pointee.base_height = gint(newValue)
        }
    }

    /// width resize increment
    var widthInc: Int {
        /// width resize increment
        get {
            let rv: Int = cast(_ptr.pointee.width_inc)
            return rv
        }
        /// width resize increment
         set {
            _ptr.pointee.width_inc = gint(newValue)
        }
    }

    /// height resize increment
    var heightInc: Int {
        /// height resize increment
        get {
            let rv: Int = cast(_ptr.pointee.height_inc)
            return rv
        }
        /// height resize increment
         set {
            _ptr.pointee.height_inc = gint(newValue)
        }
    }

    /// minimum width/height ratio
    var minAspect: Double {
        /// minimum width/height ratio
        get {
            let rv: Double = cast(_ptr.pointee.min_aspect)
            return rv
        }
        /// minimum width/height ratio
         set {
            _ptr.pointee.min_aspect = cast(newValue)
        }
    }

    /// maximum width/height ratio
    var maxAspect: Double {
        /// maximum width/height ratio
        get {
            let rv: Double = cast(_ptr.pointee.max_aspect)
            return rv
        }
        /// maximum width/height ratio
         set {
            _ptr.pointee.max_aspect = cast(newValue)
        }
    }

    /// window gravity, see `gtk_window_set_gravity()`
    var winGravity: GdkGravity {
        /// window gravity, see `gtk_window_set_gravity()`
        get {
            let rv: GdkGravity = cast(_ptr.pointee.win_gravity)
            return rv
        }
        /// window gravity, see `gtk_window_set_gravity()`
         set {
            _ptr.pointee.win_gravity = cast(newValue)
        }
    }

}



