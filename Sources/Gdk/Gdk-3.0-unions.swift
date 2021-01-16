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

// MARK: - Event Union

/// The `EventProtocol` protocol exposes the methods and properties of an underlying `GdkEvent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Event`.
/// Alternatively, use `EventRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkEvent` contains a union of all of the event types,
/// and allows access to the data fields in a number of ways.
/// 
/// The event type is always the first field in all of the event types, and
/// can always be accessed with the following code, no matter what type of
/// event it is:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   GdkEventType type;
/// 
///   type = event->type;
/// ```
/// 
/// To access other fields of the event, the pointer to the event
/// can be cast to the appropriate event type, or the union member
/// name can be used. For example if the event type is `GDK_BUTTON_PRESS`
/// then the x coordinate of the button press can be accessed with:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   gdouble x;
/// 
///   x = ((GdkEventButton*)event)->x;
/// ```
/// or:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   gdouble x;
/// 
///   x = event->button.x;
/// ```
/// 
public protocol EventProtocol {
        /// Untyped pointer to the underlying `GdkEvent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkEvent` instance.
    var event_ptr: UnsafeMutablePointer<GdkEvent>! { get }

}

/// The `EventRef` type acts as a lightweight Swift reference to an underlying `GdkEvent` instance.
/// It exposes methods that can operate on this data type through `EventProtocol` conformance.
/// Use `EventRef` only as an `unowned` reference to an existing `GdkEvent` instance.
///
/// A `GdkEvent` contains a union of all of the event types,
/// and allows access to the data fields in a number of ways.
/// 
/// The event type is always the first field in all of the event types, and
/// can always be accessed with the following code, no matter what type of
/// event it is:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   GdkEventType type;
/// 
///   type = event->type;
/// ```
/// 
/// To access other fields of the event, the pointer to the event
/// can be cast to the appropriate event type, or the union member
/// name can be used. For example if the event type is `GDK_BUTTON_PRESS`
/// then the x coordinate of the button press can be accessed with:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   gdouble x;
/// 
///   x = ((GdkEventButton*)event)->x;
/// ```
/// or:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   gdouble x;
/// 
///   x = event->button.x;
/// ```
/// 
public struct EventRef: EventProtocol {
        /// Untyped pointer to the underlying `GdkEvent` instance.
    /// For type-safe access, use the generated, typed pointer `event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EventRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkEvent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkEvent>?) {
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

    /// Reference intialiser for a related type that implements `EventProtocol`
    @inlinable init<T: EventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event of the given type. All fields are set to 0.
    @inlinable init( type: GdkEventType) {
        let rv = gdk_event_new(type)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Checks all open displays for a `GdkEvent` to process,to be processed
    /// on, fetching events from the windowing system if necessary.
    /// See `gdk_display_get_event()`.
    @inlinable static func get() -> EventRef! {
        guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_get())) else { return nil }
        return rv
    }

    /// If there is an event waiting in the event queue of some open
    /// display, returns a copy of it. See `gdk_display_peek_event()`.
    @inlinable static func peek() -> EventRef! {
        guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_peek())) else { return nil }
        return rv
    }
}

/// The `Event` type acts as an owner of an underlying `GdkEvent` instance.
/// It provides the methods that can operate on this data type through `EventProtocol` conformance.
/// Use `Event` as a strong reference or owner of a `GdkEvent` instance.
///
/// A `GdkEvent` contains a union of all of the event types,
/// and allows access to the data fields in a number of ways.
/// 
/// The event type is always the first field in all of the event types, and
/// can always be accessed with the following code, no matter what type of
/// event it is:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   GdkEventType type;
/// 
///   type = event->type;
/// ```
/// 
/// To access other fields of the event, the pointer to the event
/// can be cast to the appropriate event type, or the union member
/// name can be used. For example if the event type is `GDK_BUTTON_PRESS`
/// then the x coordinate of the button press can be accessed with:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   gdouble x;
/// 
///   x = ((GdkEventButton*)event)->x;
/// ```
/// or:
/// (C Language Example):
/// ```C
///   GdkEvent *event;
///   gdouble x;
/// 
///   x = event->button.x;
/// ```
/// 
open class Event: EventProtocol {
        /// Untyped pointer to the underlying `GdkEvent` instance.
    /// For type-safe access, use the generated, typed pointer `event_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkEvent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkEvent>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEvent` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEvent, cannot ref(event_ptr)
    }

    /// Reference intialiser for a related type that implements `EventProtocol`
    /// `GdkEvent` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventProtocol`
    @inlinable public init<T: EventProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkEvent, cannot ref(event_ptr)
    }

    /// Do-nothing destructor for `GdkEvent`.
    deinit {
        // no reference counting for GdkEvent, cannot unref(event_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEvent, cannot ref(event_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEvent, cannot ref(event_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEvent, cannot ref(event_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEvent, cannot ref(event_ptr)
    }

    /// Creates a new event of the given type. All fields are set to 0.
    @inlinable public init( type: GdkEventType) {
        let rv = gdk_event_new(type)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Checks all open displays for a `GdkEvent` to process,to be processed
    /// on, fetching events from the windowing system if necessary.
    /// See `gdk_display_get_event()`.
    @inlinable public static func get() -> Event! {
        guard let rv = Event(gconstpointer: gconstpointer(gdk_event_get())) else { return nil }
        return rv
    }

    /// If there is an event waiting in the event queue of some open
    /// display, returns a copy of it. See `gdk_display_peek_event()`.
    @inlinable public static func peek() -> Event! {
        guard let rv = Event(gconstpointer: gconstpointer(gdk_event_peek())) else { return nil }
        return rv
    }

}

// MARK: no Event properties

// MARK: Event has no signals// MARK: Event Union: EventProtocol extension (methods and fields)
public extension EventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEvent` instance.
    @inlinable var event_ptr: UnsafeMutablePointer<GdkEvent>! { return ptr?.assumingMemoryBound(to: GdkEvent.self) }

    /// If both events contain X/Y information, this function will return `true`
    /// and return in `angle` the relative angle from `event1` to `event2`. The rotation
    /// direction for positive angles is from the positive X axis towards the positive
    /// Y axis.
    @inlinable func GetAngle<EventT: EventProtocol>(event2: EventT, angle: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_events_get_angle(event_ptr, event2.event_ptr, angle)) != 0)
        return rv
    }

    /// If both events contain X/Y information, the center of both coordinates
    /// will be returned in `x` and `y`.
    @inlinable func GetCenter<EventT: EventProtocol>(event2: EventT, x: UnsafeMutablePointer<gdouble>!, y: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_events_get_center(event_ptr, event2.event_ptr, x, y)) != 0)
        return rv
    }

    /// If both events have X/Y information, the distance between both coordinates
    /// (as in a straight line going from `event1` to `event2`) will be returned.
    @inlinable func GetDistance<EventT: EventProtocol>(event2: EventT, distance: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_events_get_distance(event_ptr, event2.event_ptr, distance)) != 0)
        return rv
    }

    /// Copies a `GdkEvent`, copying or incrementing the reference count of the
    /// resources associated with it (e.g. `GdkWindow`’s and strings).
    @inlinable func copy() -> EventRef! {
        guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_copy(event_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GdkEvent`, freeing or decrementing any resources associated with it.
    /// Note that this function should only be called with events returned from
    /// functions such as `gdk_event_peek()`, `gdk_event_get()`, `gdk_event_copy()`
    /// and `gdk_event_new()`.
    @inlinable func free() {
        gdk_event_free(event_ptr)
    
    }

    /// Extract the axis value for a particular axis use from
    /// an event structure.
    @inlinable func getAxis(axisUse: GdkAxisUse, value: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_event_get_axis(event_ptr, axisUse, value)) != 0)
        return rv
    }

    /// Extract the button number from an event.
    @inlinable func get(button: UnsafeMutablePointer<guint>!) -> Bool {
        let rv = ((gdk_event_get_button(event_ptr, button)) != 0)
        return rv
    }

    /// Extracts the click count from an event.
    @inlinable func get(clickCount: UnsafeMutablePointer<guint>!) -> Bool {
        let rv = ((gdk_event_get_click_count(event_ptr, clickCount)) != 0)
        return rv
    }

    /// Extract the event window relative x/y coordinates from an event.
    @inlinable func getCoords(xWin: UnsafeMutablePointer<gdouble>! = nil, yWin: UnsafeMutablePointer<gdouble>! = nil) -> Bool {
        let rv = ((gdk_event_get_coords(event_ptr, xWin, yWin)) != 0)
        return rv
    }

    /// If the event contains a “device” field, this function will return
    /// it, else it will return `nil`.
    @inlinable func getDevice() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_event_get_device(event_ptr)))
        return rv
    }

    /// If the event was generated by a device that supports
    /// different tools (eg. a tablet), this function will
    /// return a `GdkDeviceTool` representing the tool that
    /// caused the event. Otherwise, `nil` will be returned.
    /// 
    /// Note: the `GdkDeviceTool`<!-- -->s will be constant during
    /// the application lifetime, if settings must be stored
    /// persistently across runs, see `gdk_device_tool_get_serial()`
    @inlinable func getDeviceTool() -> DeviceToolRef! {
        let rv = DeviceToolRef(gconstpointer: gconstpointer(gdk_event_get_device_tool(event_ptr)))
        return rv
    }

    /// If `event` if of type `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
    /// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`, returns the `GdkEventSequence`
    /// to which the event belongs. Otherwise, return `nil`.
    @inlinable func getEventSequence() -> EventSequenceRef! {
        let rv = EventSequenceRef(gconstpointer: gconstpointer(gdk_event_get_event_sequence(event_ptr)))
        return rv
    }

    /// Retrieves the type of the event.
    @inlinable func getEventType() -> GdkEventType {
        let rv = gdk_event_get_event_type(event_ptr)
        return rv
    }

    /// Extracts the hardware keycode from an event.
    /// 
    /// Also see `gdk_event_get_scancode()`.
    @inlinable func get(keycode: UnsafeMutablePointer<guint16>!) -> Bool {
        let rv = ((gdk_event_get_keycode(event_ptr, keycode)) != 0)
        return rv
    }

    /// Extracts the keyval from an event.
    @inlinable func get(keyval: UnsafeMutablePointer<guint>!) -> Bool {
        let rv = ((gdk_event_get_keyval(event_ptr, keyval)) != 0)
        return rv
    }

    /// `event:` a `GdkEvent`
    /// Returns whether this event is an 'emulated' pointer event (typically
    /// from a touch event), as opposed to a real one.
    @inlinable func getPointerEmulated() -> Bool {
        let rv = ((gdk_event_get_pointer_emulated(event_ptr)) != 0)
        return rv
    }

    /// Extract the root window relative x/y coordinates from an event.
    @inlinable func getRootCoords(xRoot: UnsafeMutablePointer<gdouble>! = nil, yRoot: UnsafeMutablePointer<gdouble>! = nil) -> Bool {
        let rv = ((gdk_event_get_root_coords(event_ptr, xRoot, yRoot)) != 0)
        return rv
    }

    /// Gets the keyboard low-level scancode of a key event.
    /// 
    /// This is usually hardware_keycode. On Windows this is the high
    /// word of WM_KEY{DOWN,UP} lParam which contains the scancode and
    /// some extended flags.
    @inlinable func getScancode() -> Int {
        let rv = Int(gdk_event_get_scancode(event_ptr))
        return rv
    }

    /// Returns the screen for the event. The screen is
    /// typically the screen for `event->any.window`, but
    /// for events such as mouse events, it is the screen
    /// where the pointer was when the event occurs -
    /// that is, the screen which has the root window
    /// to which `event->motion.x_root` and
    /// `event->motion.y_root` are relative.
    @inlinable func getScreen() -> ScreenRef! {
        let rv = ScreenRef(gconstpointer: gconstpointer(gdk_event_get_screen(event_ptr)))
        return rv
    }

    /// Retrieves the scroll deltas from a `GdkEvent`
    /// 
    /// See also: `gdk_event_get_scroll_direction()`
    @inlinable func getScrollDeltas(deltaX: UnsafeMutablePointer<gdouble>!, deltaY: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_event_get_scroll_deltas(event_ptr, deltaX, deltaY)) != 0)
        return rv
    }

    /// Extracts the scroll direction from an event.
    /// 
    /// If `event` is not of type `GDK_SCROLL`, the contents of `direction`
    /// are undefined.
    /// 
    /// If you wish to handle both discrete and smooth scrolling, you
    /// should check the return value of this function, or of
    /// `gdk_event_get_scroll_deltas()`; for instance:
    /// 
    /// (C Language Example):
    /// ```C
    ///   GdkScrollDirection direction;
    ///   double vscroll_factor = 0.0;
    ///   double x_scroll, y_scroll;
    /// 
    ///   if (gdk_event_get_scroll_direction (event, &direction))
    ///     {
    ///       // Handle discrete scrolling with a known constant delta;
    ///       const double delta = 12.0;
    /// 
    ///       switch (direction)
    ///         {
    ///         case GDK_SCROLL_UP:
    ///           vscroll_factor = -delta;
    ///           break;
    ///         case GDK_SCROLL_DOWN:
    ///           vscroll_factor = delta;
    ///           break;
    ///         default:
    ///           // no scrolling
    ///           break;
    ///         }
    ///     }
    ///   else if (gdk_event_get_scroll_deltas (event, &x_scroll, &y_scroll))
    ///     {
    ///       // Handle smooth scrolling directly
    ///       vscroll_factor = y_scroll;
    ///     }
    /// ```
    /// 
    @inlinable func getScroll(direction: UnsafeMutablePointer<GdkScrollDirection>!) -> Bool {
        let rv = ((gdk_event_get_scroll_direction(event_ptr, direction)) != 0)
        return rv
    }

    /// Returns the `GdkSeat` this event was generated for.
    @inlinable func getSeat() -> SeatRef! {
        let rv = SeatRef(gconstpointer: gconstpointer(gdk_event_get_seat(event_ptr)))
        return rv
    }

    /// This function returns the hardware (slave) `GdkDevice` that has
    /// triggered the event, falling back to the virtual (master) device
    /// (as in `gdk_event_get_device()`) if the event wasn’t caused by
    /// interaction with a hardware device. This may happen for example
    /// in synthesized crossing events after a `GdkWindow` updates its
    /// geometry or a grab is acquired/released.
    /// 
    /// If the event does not contain a device field, this function will
    /// return `nil`.
    @inlinable func getSourceDevice() -> DeviceRef! {
        let rv = DeviceRef(gconstpointer: gconstpointer(gdk_event_get_source_device(event_ptr)))
        return rv
    }

    /// If the event contains a “state” field, puts that field in `state`. Otherwise
    /// stores an empty state (0). Returns `true` if there was a state field
    /// in the event. `event` may be `nil`, in which case it’s treated
    /// as if the event had no state field.
    @inlinable func get(state: UnsafeMutablePointer<GdkModifierType>!) -> Bool {
        let rv = ((gdk_event_get_state(event_ptr, state)) != 0)
        return rv
    }

    /// Returns the time stamp from `event`, if there is one; otherwise
    /// returns `GDK_CURRENT_TIME`. If `event` is `nil`, returns `GDK_CURRENT_TIME`.
    @inlinable func getTime() -> guint32 {
        let rv = gdk_event_get_time(event_ptr)
        return rv
    }

    /// Extracts the `GdkWindow` associated with an event.
    @inlinable func getWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gdk_event_get_window(event_ptr)))
        return rv
    }

    /// Appends a copy of the given event onto the front of the event
    /// queue for event->any.window’s display, or the default event
    /// queue if event->any.window is `nil`. See `gdk_display_put_event()`.
    @inlinable func put() {
        gdk_event_put(event_ptr)
    
    }

    /// Sets the device for `event` to `device`. The event must
    /// have been allocated by GTK+, for instance, by
    /// `gdk_event_copy()`.
    @inlinable func set<DeviceT: DeviceProtocol>(device: DeviceT) {
        gdk_event_set_device(event_ptr, device.device_ptr)
    
    }

    /// Sets the device tool for this event, should be rarely used.
    @inlinable func setDevice(tool: DeviceToolRef? = nil) {
        gdk_event_set_device_tool(event_ptr, tool?.device_tool_ptr)
    
    }
    /// Sets the device tool for this event, should be rarely used.
    @inlinable func setDevice<DeviceToolT: DeviceToolProtocol>(tool: DeviceToolT?) {
        gdk_event_set_device_tool(event_ptr, tool?.device_tool_ptr)
    
    }

    /// Sets the screen for `event` to `screen`. The event must
    /// have been allocated by GTK+, for instance, by
    /// `gdk_event_copy()`.
    @inlinable func set<ScreenT: ScreenProtocol>(screen: ScreenT) {
        gdk_event_set_screen(event_ptr, screen.screen_ptr)
    
    }

    /// Sets the slave device for `event` to `device`.
    /// 
    /// The event must have been allocated by GTK+,
    /// for instance by `gdk_event_copy()`.
    @inlinable func setSource<DeviceT: DeviceProtocol>(device: DeviceT) {
        gdk_event_set_source_device(event_ptr, device.device_ptr)
    
    }

    /// This function returns whether a `GdkEventButton` should trigger a
    /// context menu, according to platform conventions. The right mouse
    /// button always triggers context menus. Additionally, if
    /// `gdk_keymap_get_modifier_mask()` returns a non-0 mask for
    /// `GDK_MODIFIER_INTENT_CONTEXT_MENU`, then the left mouse button will
    /// also trigger a context menu if this modifier is pressed.
    /// 
    /// This function should always be used instead of simply checking for
    /// event->button == `GDK_BUTTON_SECONDARY`.
    @inlinable func triggersContextMenu() -> Bool {
        let rv = ((gdk_event_triggers_context_menu(event_ptr)) != 0)
        return rv
    }

    /// If both events contain X/Y information, this function will return `true`
    /// and return in `angle` the relative angle from `event1` to `event2`. The rotation
    /// direction for positive angles is from the positive X axis towards the positive
    /// Y axis.
    @inlinable func eventsGetAngle<EventT: EventProtocol>(event2: EventT, angle: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_events_get_angle(event_ptr, event2.event_ptr, angle)) != 0)
        return rv
    }

    /// If both events contain X/Y information, the center of both coordinates
    /// will be returned in `x` and `y`.
    @inlinable func eventsGetCenter<EventT: EventProtocol>(event2: EventT, x: UnsafeMutablePointer<gdouble>!, y: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_events_get_center(event_ptr, event2.event_ptr, x, y)) != 0)
        return rv
    }

    /// If both events have X/Y information, the distance between both coordinates
    /// (as in a straight line going from `event1` to `event2`) will be returned.
    @inlinable func eventsGetDistance<EventT: EventProtocol>(event2: EventT, distance: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gdk_events_get_distance(event_ptr, event2.event_ptr, distance)) != 0)
        return rv
    }
    /// If the event contains a “device” field, this function will return
    /// it, else it will return `nil`.
    @inlinable var device: DeviceRef! {
        /// If the event contains a “device” field, this function will return
        /// it, else it will return `nil`.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_event_get_device(event_ptr)))
            return rv
        }
        /// Sets the device for `event` to `device`. The event must
        /// have been allocated by GTK+, for instance, by
        /// `gdk_event_copy()`.
        nonmutating set {
            gdk_event_set_device(event_ptr, UnsafeMutablePointer<GdkDevice>(newValue?.device_ptr))
        }
    }

    /// If the event was generated by a device that supports
    /// different tools (eg. a tablet), this function will
    /// return a `GdkDeviceTool` representing the tool that
    /// caused the event. Otherwise, `nil` will be returned.
    /// 
    /// Note: the `GdkDeviceTool`<!-- -->s will be constant during
    /// the application lifetime, if settings must be stored
    /// persistently across runs, see `gdk_device_tool_get_serial()`
    @inlinable var deviceTool: DeviceToolRef! {
        /// If the event was generated by a device that supports
        /// different tools (eg. a tablet), this function will
        /// return a `GdkDeviceTool` representing the tool that
        /// caused the event. Otherwise, `nil` will be returned.
        /// 
        /// Note: the `GdkDeviceTool`<!-- -->s will be constant during
        /// the application lifetime, if settings must be stored
        /// persistently across runs, see `gdk_device_tool_get_serial()`
        get {
            let rv = DeviceToolRef(gconstpointer: gconstpointer(gdk_event_get_device_tool(event_ptr)))
            return rv
        }
        /// Sets the device tool for this event, should be rarely used.
        nonmutating set {
            gdk_event_set_device_tool(event_ptr, UnsafeMutablePointer<GdkDeviceTool>(newValue?.device_tool_ptr))
        }
    }

    /// If `event` if of type `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
    /// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`, returns the `GdkEventSequence`
    /// to which the event belongs. Otherwise, return `nil`.
    @inlinable var eventSequence: EventSequenceRef! {
        /// If `event` if of type `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
        /// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`, returns the `GdkEventSequence`
        /// to which the event belongs. Otherwise, return `nil`.
        get {
            let rv = EventSequenceRef(gconstpointer: gconstpointer(gdk_event_get_event_sequence(event_ptr)))
            return rv
        }
    }

    /// Retrieves the type of the event.
    @inlinable var eventType: GdkEventType {
        /// Retrieves the type of the event.
        get {
            let rv = gdk_event_get_event_type(event_ptr)
            return rv
        }
    }

    /// Check whether a scroll event is a stop scroll event. Scroll sequences
    /// with smooth scroll information may provide a stop scroll event once the
    /// interaction with the device finishes, e.g. by lifting a finger. This
    /// stop scroll event is the signal that a widget may trigger kinetic
    /// scrolling based on the current velocity.
    /// 
    /// Stop scroll events always have a a delta of 0/0.
    @inlinable var isScrollStopEvent: Bool {
        /// Check whether a scroll event is a stop scroll event. Scroll sequences
        /// with smooth scroll information may provide a stop scroll event once the
        /// interaction with the device finishes, e.g. by lifting a finger. This
        /// stop scroll event is the signal that a widget may trigger kinetic
        /// scrolling based on the current velocity.
        /// 
        /// Stop scroll events always have a a delta of 0/0.
        get {
            let rv = ((gdk_event_is_scroll_stop_event(event_ptr)) != 0)
            return rv
        }
    }

    /// `event:` a `GdkEvent`
    /// Returns whether this event is an 'emulated' pointer event (typically
    /// from a touch event), as opposed to a real one.
    @inlinable var pointerEmulated: Bool {
        /// `event:` a `GdkEvent`
        /// Returns whether this event is an 'emulated' pointer event (typically
        /// from a touch event), as opposed to a real one.
        get {
            let rv = ((gdk_event_get_pointer_emulated(event_ptr)) != 0)
            return rv
        }
    }

    /// Gets the keyboard low-level scancode of a key event.
    /// 
    /// This is usually hardware_keycode. On Windows this is the high
    /// word of WM_KEY{DOWN,UP} lParam which contains the scancode and
    /// some extended flags.
    @inlinable var scancode: Int {
        /// Gets the keyboard low-level scancode of a key event.
        /// 
        /// This is usually hardware_keycode. On Windows this is the high
        /// word of WM_KEY{DOWN,UP} lParam which contains the scancode and
        /// some extended flags.
        get {
            let rv = Int(gdk_event_get_scancode(event_ptr))
            return rv
        }
    }

    /// Returns the screen for the event. The screen is
    /// typically the screen for `event->any.window`, but
    /// for events such as mouse events, it is the screen
    /// where the pointer was when the event occurs -
    /// that is, the screen which has the root window
    /// to which `event->motion.x_root` and
    /// `event->motion.y_root` are relative.
    @inlinable var screen: ScreenRef! {
        /// Returns the screen for the event. The screen is
        /// typically the screen for `event->any.window`, but
        /// for events such as mouse events, it is the screen
        /// where the pointer was when the event occurs -
        /// that is, the screen which has the root window
        /// to which `event->motion.x_root` and
        /// `event->motion.y_root` are relative.
        get {
            let rv = ScreenRef(gconstpointer: gconstpointer(gdk_event_get_screen(event_ptr)))
            return rv
        }
        /// Sets the screen for `event` to `screen`. The event must
        /// have been allocated by GTK+, for instance, by
        /// `gdk_event_copy()`.
        nonmutating set {
            gdk_event_set_screen(event_ptr, UnsafeMutablePointer<GdkScreen>(newValue?.screen_ptr))
        }
    }

    /// Returns the `GdkSeat` this event was generated for.
    @inlinable var seat: SeatRef! {
        /// Returns the `GdkSeat` this event was generated for.
        get {
            let rv = SeatRef(gconstpointer: gconstpointer(gdk_event_get_seat(event_ptr)))
            return rv
        }
    }

    /// This function returns the hardware (slave) `GdkDevice` that has
    /// triggered the event, falling back to the virtual (master) device
    /// (as in `gdk_event_get_device()`) if the event wasn’t caused by
    /// interaction with a hardware device. This may happen for example
    /// in synthesized crossing events after a `GdkWindow` updates its
    /// geometry or a grab is acquired/released.
    /// 
    /// If the event does not contain a device field, this function will
    /// return `nil`.
    @inlinable var sourceDevice: DeviceRef! {
        /// This function returns the hardware (slave) `GdkDevice` that has
        /// triggered the event, falling back to the virtual (master) device
        /// (as in `gdk_event_get_device()`) if the event wasn’t caused by
        /// interaction with a hardware device. This may happen for example
        /// in synthesized crossing events after a `GdkWindow` updates its
        /// geometry or a grab is acquired/released.
        /// 
        /// If the event does not contain a device field, this function will
        /// return `nil`.
        get {
            let rv = DeviceRef(gconstpointer: gconstpointer(gdk_event_get_source_device(event_ptr)))
            return rv
        }
        /// Sets the slave device for `event` to `device`.
        /// 
        /// The event must have been allocated by GTK+,
        /// for instance by `gdk_event_copy()`.
        nonmutating set {
            gdk_event_set_source_device(event_ptr, UnsafeMutablePointer<GdkDevice>(newValue?.device_ptr))
        }
    }

    /// Returns the time stamp from `event`, if there is one; otherwise
    /// returns `GDK_CURRENT_TIME`. If `event` is `nil`, returns `GDK_CURRENT_TIME`.
    @inlinable var time: guint32 {
        /// Returns the time stamp from `event`, if there is one; otherwise
        /// returns `GDK_CURRENT_TIME`. If `event` is `nil`, returns `GDK_CURRENT_TIME`.
        get {
            let rv = gdk_event_get_time(event_ptr)
            return rv
        }
    }

    /// Extracts the `GdkWindow` associated with an event.
    @inlinable var window: WindowRef! {
        /// Extracts the `GdkWindow` associated with an event.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gdk_event_get_window(event_ptr)))
            return rv
        }
    }

    /// the `GdkEventType`
    @inlinable var type: GdkEventType {
        /// the `GdkEventType`
        get {
            let rv = event_ptr.pointee.type
            return rv
        }
        /// the `GdkEventType`
         set {
            event_ptr.pointee.type = newValue
        }
    }

    /// a `GdkEventAny`
    @inlinable var any: GdkEventAny {
        /// a `GdkEventAny`
        get {
            let rv = event_ptr.pointee.any
            return rv
        }
        /// a `GdkEventAny`
         set {
            event_ptr.pointee.any = newValue
        }
    }

    /// a `GdkEventExpose`
    @inlinable var expose: GdkEventExpose {
        /// a `GdkEventExpose`
        get {
            let rv = event_ptr.pointee.expose
            return rv
        }
        /// a `GdkEventExpose`
         set {
            event_ptr.pointee.expose = newValue
        }
    }

    /// a `GdkEventVisibility`
    @inlinable var visibility: GdkEventVisibility {
        /// a `GdkEventVisibility`
        get {
            let rv = event_ptr.pointee.visibility
            return rv
        }
        /// a `GdkEventVisibility`
         set {
            event_ptr.pointee.visibility = newValue
        }
    }

    /// a `GdkEventMotion`
    @inlinable var motion: GdkEventMotion {
        /// a `GdkEventMotion`
        get {
            let rv = event_ptr.pointee.motion
            return rv
        }
        /// a `GdkEventMotion`
         set {
            event_ptr.pointee.motion = newValue
        }
    }

    /// a `GdkEventButton`
    @inlinable var button: GdkEventButton {
        /// a `GdkEventButton`
        get {
            let rv = event_ptr.pointee.button
            return rv
        }
        /// a `GdkEventButton`
         set {
            event_ptr.pointee.button = newValue
        }
    }

    /// a `GdkEventTouch`
    @inlinable var touch: GdkEventTouch {
        /// a `GdkEventTouch`
        get {
            let rv = event_ptr.pointee.touch
            return rv
        }
        /// a `GdkEventTouch`
         set {
            event_ptr.pointee.touch = newValue
        }
    }

    /// a `GdkEventScroll`
    @inlinable var scroll: GdkEventScroll {
        /// a `GdkEventScroll`
        get {
            let rv = event_ptr.pointee.scroll
            return rv
        }
        /// a `GdkEventScroll`
         set {
            event_ptr.pointee.scroll = newValue
        }
    }

    /// a `GdkEventKey`
    @inlinable var key: GdkEventKey {
        /// a `GdkEventKey`
        get {
            let rv = event_ptr.pointee.key
            return rv
        }
        /// a `GdkEventKey`
         set {
            event_ptr.pointee.key = newValue
        }
    }

    /// a `GdkEventCrossing`
    @inlinable var crossing: GdkEventCrossing {
        /// a `GdkEventCrossing`
        get {
            let rv = event_ptr.pointee.crossing
            return rv
        }
        /// a `GdkEventCrossing`
         set {
            event_ptr.pointee.crossing = newValue
        }
    }

    /// a `GdkEventFocus`
    @inlinable var focusChange: GdkEventFocus {
        /// a `GdkEventFocus`
        get {
            let rv = event_ptr.pointee.focus_change
            return rv
        }
        /// a `GdkEventFocus`
         set {
            event_ptr.pointee.focus_change = newValue
        }
    }

    /// a `GdkEventConfigure`
    @inlinable var configure: GdkEventConfigure {
        /// a `GdkEventConfigure`
        get {
            let rv = event_ptr.pointee.configure
            return rv
        }
        /// a `GdkEventConfigure`
         set {
            event_ptr.pointee.configure = newValue
        }
    }

    /// a `GdkEventProperty`
    @inlinable var property: GdkEventProperty {
        /// a `GdkEventProperty`
        get {
            let rv = event_ptr.pointee.property
            return rv
        }
        /// a `GdkEventProperty`
         set {
            event_ptr.pointee.property = newValue
        }
    }

    /// a `GdkEventSelection`
    @inlinable var selection: GdkEventSelection {
        /// a `GdkEventSelection`
        get {
            let rv = event_ptr.pointee.selection
            return rv
        }
        /// a `GdkEventSelection`
         set {
            event_ptr.pointee.selection = newValue
        }
    }

    /// a `GdkEventOwnerChange`
    @inlinable var ownerChange: GdkEventOwnerChange {
        /// a `GdkEventOwnerChange`
        get {
            let rv = event_ptr.pointee.owner_change
            return rv
        }
        /// a `GdkEventOwnerChange`
         set {
            event_ptr.pointee.owner_change = newValue
        }
    }

    /// a `GdkEventProximity`
    @inlinable var proximity: GdkEventProximity {
        /// a `GdkEventProximity`
        get {
            let rv = event_ptr.pointee.proximity
            return rv
        }
        /// a `GdkEventProximity`
         set {
            event_ptr.pointee.proximity = newValue
        }
    }

    /// a `GdkEventDND`
    @inlinable var dnd: GdkEventDND {
        /// a `GdkEventDND`
        get {
            let rv = event_ptr.pointee.dnd
            return rv
        }
        /// a `GdkEventDND`
         set {
            event_ptr.pointee.dnd = newValue
        }
    }

    /// a `GdkEventWindowState`
    @inlinable var windowState: GdkEventWindowState {
        /// a `GdkEventWindowState`
        get {
            let rv = event_ptr.pointee.window_state
            return rv
        }
        /// a `GdkEventWindowState`
         set {
            event_ptr.pointee.window_state = newValue
        }
    }

    /// a `GdkEventSetting`
    @inlinable var setting: GdkEventSetting {
        /// a `GdkEventSetting`
        get {
            let rv = event_ptr.pointee.setting
            return rv
        }
        /// a `GdkEventSetting`
         set {
            event_ptr.pointee.setting = newValue
        }
    }

    /// a `GdkEventGrabBroken`
    @inlinable var grabBroken: GdkEventGrabBroken {
        /// a `GdkEventGrabBroken`
        get {
            let rv = event_ptr.pointee.grab_broken
            return rv
        }
        /// a `GdkEventGrabBroken`
         set {
            event_ptr.pointee.grab_broken = newValue
        }
    }

    /// a `GdkEventTouchpadSwipe`
    @inlinable var touchpadSwipe: GdkEventTouchpadSwipe {
        /// a `GdkEventTouchpadSwipe`
        get {
            let rv = event_ptr.pointee.touchpad_swipe
            return rv
        }
        /// a `GdkEventTouchpadSwipe`
         set {
            event_ptr.pointee.touchpad_swipe = newValue
        }
    }

    /// a `GdkEventTouchpadPinch`
    @inlinable var touchpadPinch: GdkEventTouchpadPinch {
        /// a `GdkEventTouchpadPinch`
        get {
            let rv = event_ptr.pointee.touchpad_pinch
            return rv
        }
        /// a `GdkEventTouchpadPinch`
         set {
            event_ptr.pointee.touchpad_pinch = newValue
        }
    }

    /// a `GdkEventPadButton`
    @inlinable var padButton: GdkEventPadButton {
        /// a `GdkEventPadButton`
        get {
            let rv = event_ptr.pointee.pad_button
            return rv
        }
        /// a `GdkEventPadButton`
         set {
            event_ptr.pointee.pad_button = newValue
        }
    }

    /// a `GdkEventPadAxis`
    @inlinable var padAxis: GdkEventPadAxis {
        /// a `GdkEventPadAxis`
        get {
            let rv = event_ptr.pointee.pad_axis
            return rv
        }
        /// a `GdkEventPadAxis`
         set {
            event_ptr.pointee.pad_axis = newValue
        }
    }

    /// a `GdkEventPadGroupMode`
    @inlinable var padGroupMode: GdkEventPadGroupMode {
        /// a `GdkEventPadGroupMode`
        get {
            let rv = event_ptr.pointee.pad_group_mode
            return rv
        }
        /// a `GdkEventPadGroupMode`
         set {
            event_ptr.pointee.pad_group_mode = newValue
        }
    }

}

