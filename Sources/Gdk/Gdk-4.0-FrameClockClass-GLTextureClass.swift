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

/// Metatype/GType declaration for FrameClock
public extension FrameClockClassRef {
    
    /// This getter returns the GLib type identifier registered for `FrameClock`
    static var metatypeReference: GType { gdk_frame_clock_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkFrameClockClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkFrameClockClass.self) }
    
    static var metatype: GdkFrameClockClass? { metatypePointer?.pointee } 
    
    static var wrapper: FrameClockClassRef? { FrameClockClassRef(metatypePointer) }
    
    
}

// MARK: - FrameClockClass Record

/// The `FrameClockClassProtocol` protocol exposes the methods and properties of an underlying `GdkFrameClockClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameClockClass`.
/// Alternatively, use `FrameClockClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameClockClassProtocol {
        /// Untyped pointer to the underlying `GdkFrameClockClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkFrameClockClass` instance.
    var _ptr: UnsafeMutablePointer<GdkFrameClockClass>! { get }

}

/// The `FrameClockClassRef` type acts as a lightweight Swift reference to an underlying `GdkFrameClockClass` instance.
/// It exposes methods that can operate on this data type through `FrameClockClassProtocol` conformance.
/// Use `FrameClockClassRef` only as an `unowned` reference to an existing `GdkFrameClockClass` instance.
///

public struct FrameClockClassRef: FrameClockClassProtocol {
        /// Untyped pointer to the underlying `GdkFrameClockClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameClockClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkFrameClockClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkFrameClockClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkFrameClockClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkFrameClockClass>?) {
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

    /// Reference intialiser for a related type that implements `FrameClockClassProtocol`
    @inlinable init<T: FrameClockClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameClockClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FrameClockClass Record: FrameClockClassProtocol extension (methods and fields)
public extension FrameClockClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFrameClockClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkFrameClockClass>! { return ptr?.assumingMemoryBound(to: GdkFrameClockClass.self) }



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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkFrameTimings` instance.
    var frame_timings_ptr: UnsafeMutablePointer<GdkFrameTimings>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameTimingsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkFrameTimings>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkFrameTimings>?) {
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

    /// Reference intialiser for a related type that implements `FrameTimingsProtocol`
    @inlinable init<T: FrameTimingsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkFrameTimings>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkFrameTimings>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkFrameTimings`.
    /// i.e., ownership is transferred to the `FrameTimings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkFrameTimings>) {
        ptr = UnsafeMutableRawPointer(op)
        gdk_frame_timings_ref(ptr.assumingMemoryBound(to: GdkFrameTimings.self))
    }

    /// Reference intialiser for a related type that implements `FrameTimingsProtocol`
    /// Will retain `GdkFrameTimings`.
    /// - Parameter other: an instance of a related type that implements `FrameTimingsProtocol`
    @inlinable public init<T: FrameTimingsProtocol>(_ other: T) {
        ptr = other.ptr
        gdk_frame_timings_ref(ptr.assumingMemoryBound(to: GdkFrameTimings.self))
    }

    /// Releases the underlying `GdkFrameTimings` instance using `gdk_frame_timings_unref`.
    deinit {
        gdk_frame_timings_unref(ptr.assumingMemoryBound(to: GdkFrameTimings.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gdk_frame_timings_ref(ptr.assumingMemoryBound(to: GdkFrameTimings.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gdk_frame_timings_ref(ptr.assumingMemoryBound(to: GdkFrameTimings.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gdk_frame_timings_ref(ptr.assumingMemoryBound(to: GdkFrameTimings.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameTimingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gdk_frame_timings_ref(ptr.assumingMemoryBound(to: GdkFrameTimings.self))
    }



}

// MARK: no FrameTimings properties

// MARK: no FrameTimings signals

// MARK: FrameTimings has no signals
// MARK: FrameTimings Record: FrameTimingsProtocol extension (methods and fields)
public extension FrameTimingsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkFrameTimings` instance.
    @inlinable var frame_timings_ptr: UnsafeMutablePointer<GdkFrameTimings>! { return ptr?.assumingMemoryBound(to: GdkFrameTimings.self) }

    /// The timing information in a `GdkFrameTimings` is filled in
    /// incrementally as the frame as drawn and passed off to the
    /// window system for processing and display to the user. The
    /// accessor functions for `GdkFrameTimings` can return 0 to
    /// indicate an unavailable value for two reasons: either because
    /// the information is not yet available, or because it isn't
    /// available at all. Once `gdk_frame_timings_get_complete()` returns
    /// `true` for a frame, you can be certain that no further values
    /// will become available and be stored in the `GdkFrameTimings`.
    @inlinable func getComplete() -> Bool {
        let rv = ((gdk_frame_timings_get_complete(frame_timings_ptr)) != 0)
        return rv
    }

    /// Gets the frame counter value of the `GdkFrameClock` when this
    /// this frame was drawn.
    @inlinable func getFrameCounter() -> gint64 {
        let rv = gdk_frame_timings_get_frame_counter(frame_timings_ptr)
        return rv
    }

    /// Returns the frame time for the frame. This is the time value
    /// that is typically used to time animations for the frame. See
    /// `gdk_frame_clock_get_frame_time()`.
    @inlinable func getFrameTime() -> gint64 {
        let rv = gdk_frame_timings_get_frame_time(frame_timings_ptr)
        return rv
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
    @inlinable func getPredictedPresentationTime() -> gint64 {
        let rv = gdk_frame_timings_get_predicted_presentation_time(frame_timings_ptr)
        return rv
    }

    /// Reurns the presentation time. This is the time at which the frame
    /// became visible to the user.
    @inlinable func getPresentationTime() -> gint64 {
        let rv = gdk_frame_timings_get_presentation_time(frame_timings_ptr)
        return rv
    }

    /// Gets the natural interval between presentation times for
    /// the display that this frame was displayed on. Frame presentation
    /// usually happens during the “vertical blanking interval”.
    @inlinable func getRefreshInterval() -> gint64 {
        let rv = gdk_frame_timings_get_refresh_interval(frame_timings_ptr)
        return rv
    }

    /// Increases the reference count of `timings`.
    @discardableResult @inlinable func ref() -> FrameTimingsRef! {
        guard let rv = FrameTimingsRef(gconstpointer: gconstpointer(gdk_frame_timings_ref(frame_timings_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count of `timings`. If `timings`
    /// is no longer referenced, it will be freed.
    @inlinable func unref() {
        gdk_frame_timings_unref(frame_timings_ptr)
    
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
    @inlinable var complete: Bool {
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
            let rv = ((gdk_frame_timings_get_complete(frame_timings_ptr)) != 0)
            return rv
        }
    }

    /// Gets the frame counter value of the `GdkFrameClock` when this
    /// this frame was drawn.
    @inlinable var frameCounter: gint64 {
        /// Gets the frame counter value of the `GdkFrameClock` when this
        /// this frame was drawn.
        get {
            let rv = gdk_frame_timings_get_frame_counter(frame_timings_ptr)
            return rv
        }
    }

    /// Returns the frame time for the frame. This is the time value
    /// that is typically used to time animations for the frame. See
    /// `gdk_frame_clock_get_frame_time()`.
    @inlinable var frameTime: gint64 {
        /// Returns the frame time for the frame. This is the time value
        /// that is typically used to time animations for the frame. See
        /// `gdk_frame_clock_get_frame_time()`.
        get {
            let rv = gdk_frame_timings_get_frame_time(frame_timings_ptr)
            return rv
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
    @inlinable var predictedPresentationTime: gint64 {
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
            let rv = gdk_frame_timings_get_predicted_presentation_time(frame_timings_ptr)
            return rv
        }
    }

    /// Reurns the presentation time. This is the time at which the frame
    /// became visible to the user.
    @inlinable var presentationTime: gint64 {
        /// Reurns the presentation time. This is the time at which the frame
        /// became visible to the user.
        get {
            let rv = gdk_frame_timings_get_presentation_time(frame_timings_ptr)
            return rv
        }
    }

    /// Gets the natural interval between presentation times for
    /// the display that this frame was displayed on. Frame presentation
    /// usually happens during the “vertical blanking interval”.
    @inlinable var refreshInterval: gint64 {
        /// Gets the natural interval between presentation times for
        /// the display that this frame was displayed on. Frame presentation
        /// usually happens during the “vertical blanking interval”.
        get {
            let rv = gdk_frame_timings_get_refresh_interval(frame_timings_ptr)
            return rv
        }
    }


}



/// Metatype/GType declaration for GLTexture
public extension GLTextureClassRef {
    
    /// This getter returns the GLib type identifier registered for `GLTexture`
    static var metatypeReference: GType { gdk_gl_texture_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkGLTextureClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkGLTextureClass.self) }
    
    static var metatype: GdkGLTextureClass? { metatypePointer?.pointee } 
    
    static var wrapper: GLTextureClassRef? { GLTextureClassRef(metatypePointer) }
    
    
}

// MARK: - GLTextureClass Record

/// The `GLTextureClassProtocol` protocol exposes the methods and properties of an underlying `GdkGLTextureClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLTextureClass`.
/// Alternatively, use `GLTextureClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GLTextureClassProtocol {
        /// Untyped pointer to the underlying `GdkGLTextureClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkGLTextureClass` instance.
    var _ptr: UnsafeMutablePointer<GdkGLTextureClass>! { get }

}

/// The `GLTextureClassRef` type acts as a lightweight Swift reference to an underlying `GdkGLTextureClass` instance.
/// It exposes methods that can operate on this data type through `GLTextureClassProtocol` conformance.
/// Use `GLTextureClassRef` only as an `unowned` reference to an existing `GdkGLTextureClass` instance.
///

public struct GLTextureClassRef: GLTextureClassProtocol {
        /// Untyped pointer to the underlying `GdkGLTextureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GLTextureClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkGLTextureClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkGLTextureClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkGLTextureClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkGLTextureClass>?) {
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

    /// Reference intialiser for a related type that implements `GLTextureClassProtocol`
    @inlinable init<T: GLTextureClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLTextureClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: GLTextureClass Record: GLTextureClassProtocol extension (methods and fields)
public extension GLTextureClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkGLTextureClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkGLTextureClass>! { return ptr?.assumingMemoryBound(to: GdkGLTextureClass.self) }



}



