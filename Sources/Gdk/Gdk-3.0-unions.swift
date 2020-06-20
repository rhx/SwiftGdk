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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkEvent` instance.
    var event_ptr: UnsafeMutablePointer<GdkEvent> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension EventRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EventProtocol`
    init<T: EventProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new event of the given type. All fields are set to 0.
    init( type: EventType) {
        let rv: UnsafeMutablePointer<GdkEvent>! = cast(gdk_event_new(type))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Checks all open displays for a `GdkEvent` to process,to be processed
    /// on, fetching events from the windowing system if necessary.
    /// See `gdk_display_get_event()`.
    static func get() -> EventRef! {
        let rv: UnsafeMutablePointer<GdkEvent>! = cast(gdk_event_get())
        return rv.map { EventRef(cast($0)) }
    }

    /// If there is an event waiting in the event queue of some open
    /// display, returns a copy of it. See `gdk_display_peek_event()`.
    static func peek() -> EventRef! {
        let rv: UnsafeMutablePointer<GdkEvent>! = cast(gdk_event_peek())
        return rv.map { EventRef(cast($0)) }
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkEvent` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Event` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkEvent>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkEvent, cannot ref(cast(event_ptr))
    }

    /// Reference intialiser for a related type that implements `EventProtocol`
    /// `GdkEvent` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EventProtocol`
    public init<T: EventProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.event_ptr)
        // no reference counting for GdkEvent, cannot ref(cast(event_ptr))
    }

    /// Do-nothing destructor for `GdkEvent`.
    deinit {
        // no reference counting for GdkEvent, cannot unref(cast(event_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkEvent, cannot ref(cast(event_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkEvent, cannot ref(cast(event_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkEvent, cannot ref(cast(event_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EventProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkEvent, cannot ref(cast(event_ptr))
    }

    /// Creates a new event of the given type. All fields are set to 0.
    public init( type: EventType) {
        let rv: UnsafeMutablePointer<GdkEvent>! = cast(gdk_event_new(type))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Checks all open displays for a `GdkEvent` to process,to be processed
    /// on, fetching events from the windowing system if necessary.
    /// See `gdk_display_get_event()`.
    public static func get() -> Event! {
        let rv: UnsafeMutablePointer<GdkEvent>! = cast(gdk_event_get())
        return rv.map { Event(cast($0)) }
    }

    /// If there is an event waiting in the event queue of some open
    /// display, returns a copy of it. See `gdk_display_peek_event()`.
    public static func peek() -> Event! {
        let rv: UnsafeMutablePointer<GdkEvent>! = cast(gdk_event_peek())
        return rv.map { Event(cast($0)) }
    }

}

// MARK: no Event properties

// MARK: no Event signals


// MARK: Event Union: EventProtocol extension (methods and fields)
public extension EventProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkEvent` instance.
    var event_ptr: UnsafeMutablePointer<GdkEvent> { return ptr.assumingMemoryBound(to: GdkEvent.self) }

    /// If both events contain X/Y information, this function will return `true`
    /// and return in `angle` the relative angle from `event1` to `event2`. The rotation
    /// direction for positive angles is from the positive X axis towards the positive
    /// Y axis.
    func GetAngle(event2: EventProtocol, angle: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_events_get_angle(cast(event_ptr), cast(event2.ptr), cast(angle))
        return Bool(rv != 0)
    }

    /// If both events contain X/Y information, the center of both coordinates
    /// will be returned in `x` and `y`.
    func GetCenter(event2: EventProtocol, x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_events_get_center(cast(event_ptr), cast(event2.ptr), cast(x), cast(y))
        return Bool(rv != 0)
    }

    /// If both events have X/Y information, the distance between both coordinates
    /// (as in a straight line going from `event1` to `event2`) will be returned.
    func GetDistance(event2: EventProtocol, distance: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_events_get_distance(cast(event_ptr), cast(event2.ptr), cast(distance))
        return Bool(rv != 0)
    }

    /// Copies a `GdkEvent`, copying or incrementing the reference count of the
    /// resources associated with it (e.g. `GdkWindow`’s and strings).
    func copy() -> UnsafeMutablePointer<GdkEvent>! {
        let rv: UnsafeMutablePointer<GdkEvent>! = cast(gdk_event_copy(cast(event_ptr)))
        return cast(rv)
    }

    /// Frees a `GdkEvent`, freeing or decrementing any resources associated with it.
    /// Note that this function should only be called with events returned from
    /// functions such as `gdk_event_peek()`, `gdk_event_get()`, `gdk_event_copy()`
    /// and `gdk_event_new()`.
    func free() {
        gdk_event_free(cast(event_ptr))
    
    }

    /// Extract the axis value for a particular axis use from
    /// an event structure.
    func getAxis(axisUse axis_use: AxisUse, value: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_event_get_axis(cast(event_ptr), axis_use, cast(value))
        return Bool(rv != 0)
    }

    /// Extract the button number from an event.
    func get(button: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = gdk_event_get_button(cast(event_ptr), cast(button))
        return Bool(rv != 0)
    }

    /// Extracts the click count from an event.
    func get(clickCount click_count: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = gdk_event_get_click_count(cast(event_ptr), cast(click_count))
        return Bool(rv != 0)
    }

    /// Extract the event window relative x/y coordinates from an event.
    func getCoords(xWin x_win: UnsafeMutablePointer<gdouble>, yWin y_win: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_event_get_coords(cast(event_ptr), cast(x_win), cast(y_win))
        return Bool(rv != 0)
    }

    /// If the event contains a “device” field, this function will return
    /// it, else it will return `nil`.
    func getDevice() -> UnsafeMutablePointer<GdkDevice>! {
        let rv: UnsafeMutablePointer<GdkDevice>! = cast(gdk_event_get_device(cast(event_ptr)))
        return cast(rv)
    }

    /// If the event was generated by a device that supports
    /// different tools (eg. a tablet), this function will
    /// return a `GdkDeviceTool` representing the tool that
    /// caused the event. Otherwise, `nil` will be returned.
    /// 
    /// Note: the `GdkDeviceTool`<!-- -->s will be constant during
    /// the application lifetime, if settings must be stored
    /// persistently across runs, see `gdk_device_tool_get_serial()`
    func getDeviceTool() -> UnsafeMutablePointer<GdkDeviceTool>! {
        let rv: UnsafeMutablePointer<GdkDeviceTool>! = cast(gdk_event_get_device_tool(cast(event_ptr)))
        return cast(rv)
    }

    /// If `event` if of type `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
    /// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`, returns the `GdkEventSequence`
    /// to which the event belongs. Otherwise, return `nil`.
    func getEventSequence() -> UnsafeMutablePointer<GdkEventSequence>! {
        let rv: UnsafeMutablePointer<GdkEventSequence>! = cast(gdk_event_get_event_sequence(cast(event_ptr)))
        return cast(rv)
    }

    /// Retrieves the type of the event.
    func getEventType() -> GdkEventType {
        let rv = gdk_event_get_event_type(cast(event_ptr))
        return cast(rv)
    }

    /// Extracts the hardware keycode from an event.
    /// 
    /// Also see `gdk_event_get_scancode()`.
    func get(keycode: UnsafeMutablePointer<UInt16>) -> Bool {
        let rv = gdk_event_get_keycode(cast(event_ptr), cast(keycode))
        return Bool(rv != 0)
    }

    /// Extracts the keyval from an event.
    func get(keyval: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = gdk_event_get_keyval(cast(event_ptr), cast(keyval))
        return Bool(rv != 0)
    }

    /// `event:` a `GdkEvent`
    /// Returns whether this event is an 'emulated' pointer event (typically
    /// from a touch event), as opposed to a real one.
    func getPointerEmulated() -> Bool {
        let rv = gdk_event_get_pointer_emulated(cast(event_ptr))
        return Bool(rv != 0)
    }

    /// Extract the root window relative x/y coordinates from an event.
    func getRootCoords(xRoot x_root: UnsafeMutablePointer<gdouble>, yRoot y_root: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_event_get_root_coords(cast(event_ptr), cast(x_root), cast(y_root))
        return Bool(rv != 0)
    }

    /// Gets the keyboard low-level scancode of a key event.
    /// 
    /// This is usually hardware_keycode. On Windows this is the high
    /// word of WM_KEY{DOWN,UP} lParam which contains the scancode and
    /// some extended flags.
    func getScancode() -> Int {
        let rv: Int = cast(gdk_event_get_scancode(cast(event_ptr)))
        return cast(rv)
    }

    /// Returns the screen for the event. The screen is
    /// typically the screen for `event->any.window`, but
    /// for events such as mouse events, it is the screen
    /// where the pointer was when the event occurs -
    /// that is, the screen which has the root window
    /// to which `event->motion.x_root` and
    /// `event->motion.y_root` are relative.
    func getScreen() -> UnsafeMutablePointer<GdkScreen>! {
        let rv: UnsafeMutablePointer<GdkScreen>! = cast(gdk_event_get_screen(cast(event_ptr)))
        return cast(rv)
    }

    /// Retrieves the scroll deltas from a `GdkEvent`
    /// 
    /// See also: `gdk_event_get_scroll_direction()`
    func getScrollDeltas(deltaX delta_x: UnsafeMutablePointer<gdouble>, deltaY delta_y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_event_get_scroll_deltas(cast(event_ptr), cast(delta_x), cast(delta_y))
        return Bool(rv != 0)
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
    func getScroll(direction: UnsafeMutablePointer<GdkScrollDirection>) -> Bool {
        let rv = gdk_event_get_scroll_direction(cast(event_ptr), cast(direction))
        return Bool(rv != 0)
    }

    /// Returns the `GdkSeat` this event was generated for.
    func getSeat() -> UnsafeMutablePointer<GdkSeat>! {
        let rv: UnsafeMutablePointer<GdkSeat>! = cast(gdk_event_get_seat(cast(event_ptr)))
        return cast(rv)
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
    func getSourceDevice() -> UnsafeMutablePointer<GdkDevice>! {
        let rv: UnsafeMutablePointer<GdkDevice>! = cast(gdk_event_get_source_device(cast(event_ptr)))
        return cast(rv)
    }

    /// If the event contains a “state” field, puts that field in `state`. Otherwise
    /// stores an empty state (0). Returns `true` if there was a state field
    /// in the event. `event` may be `nil`, in which case it’s treated
    /// as if the event had no state field.
    func get(state: UnsafeMutablePointer<GdkModifierType>) -> Bool {
        let rv = gdk_event_get_state(cast(event_ptr), cast(state))
        return Bool(rv != 0)
    }

    /// Returns the time stamp from `event`, if there is one; otherwise
    /// returns `GDK_CURRENT_TIME`. If `event` is `nil`, returns `GDK_CURRENT_TIME`.
    func getTime() -> UInt32 {
        let rv = gdk_event_get_time(cast(event_ptr))
        return UInt32(rv)
    }

    /// Extracts the `GdkWindow` associated with an event.
    func getWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv: UnsafeMutablePointer<GdkWindow>! = cast(gdk_event_get_window(cast(event_ptr)))
        return cast(rv)
    }

    /// Appends a copy of the given event onto the front of the event
    /// queue for event->any.window’s display, or the default event
    /// queue if event->any.window is `nil`. See `gdk_display_put_event()`.
    func put() {
        gdk_event_put(cast(event_ptr))
    
    }

    /// Sets the device for `event` to `device`. The event must
    /// have been allocated by GTK+, for instance, by
    /// `gdk_event_copy()`.
    func set(device: DeviceProtocol) {
        gdk_event_set_device(cast(event_ptr), cast(device.ptr))
    
    }

    /// Sets the device tool for this event, should be rarely used.
    func setDevice(tool: DeviceToolProtocol) {
        gdk_event_set_device_tool(cast(event_ptr), cast(tool.ptr))
    
    }

    /// Sets the screen for `event` to `screen`. The event must
    /// have been allocated by GTK+, for instance, by
    /// `gdk_event_copy()`.
    func set(screen: ScreenProtocol) {
        gdk_event_set_screen(cast(event_ptr), cast(screen.ptr))
    
    }

    /// Sets the slave device for `event` to `device`.
    /// 
    /// The event must have been allocated by GTK+,
    /// for instance by `gdk_event_copy()`.
    func setSource(device: DeviceProtocol) {
        gdk_event_set_source_device(cast(event_ptr), cast(device.ptr))
    
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
    func triggersContextMenu() -> Bool {
        let rv = gdk_event_triggers_context_menu(cast(event_ptr))
        return Bool(rv != 0)
    }

    /// If both events contain X/Y information, this function will return `true`
    /// and return in `angle` the relative angle from `event1` to `event2`. The rotation
    /// direction for positive angles is from the positive X axis towards the positive
    /// Y axis.
    func eventsGetAngle(event2: EventProtocol, angle: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_events_get_angle(cast(event_ptr), cast(event2.ptr), cast(angle))
        return Bool(rv != 0)
    }

    /// If both events contain X/Y information, the center of both coordinates
    /// will be returned in `x` and `y`.
    func eventsGetCenter(event2: EventProtocol, x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_events_get_center(cast(event_ptr), cast(event2.ptr), cast(x), cast(y))
        return Bool(rv != 0)
    }

    /// If both events have X/Y information, the distance between both coordinates
    /// (as in a straight line going from `event1` to `event2`) will be returned.
    func eventsGetDistance(event2: EventProtocol, distance: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gdk_events_get_distance(cast(event_ptr), cast(event2.ptr), cast(distance))
        return Bool(rv != 0)
    }
    /// If the event contains a “device” field, this function will return
    /// it, else it will return `nil`.
    var device: UnsafeMutablePointer<GdkDevice>! {
        /// If the event contains a “device” field, this function will return
        /// it, else it will return `nil`.
        get {
            let rv: UnsafeMutablePointer<GdkDevice>! = cast(gdk_event_get_device(cast(event_ptr)))
            return cast(rv)
        }
        /// Sets the device for `event` to `device`. The event must
        /// have been allocated by GTK+, for instance, by
        /// `gdk_event_copy()`.
        nonmutating set {
            gdk_event_set_device(cast(event_ptr), cast(newValue))
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
    var deviceTool: UnsafeMutablePointer<GdkDeviceTool>! {
        /// If the event was generated by a device that supports
        /// different tools (eg. a tablet), this function will
        /// return a `GdkDeviceTool` representing the tool that
        /// caused the event. Otherwise, `nil` will be returned.
        /// 
        /// Note: the `GdkDeviceTool`<!-- -->s will be constant during
        /// the application lifetime, if settings must be stored
        /// persistently across runs, see `gdk_device_tool_get_serial()`
        get {
            let rv: UnsafeMutablePointer<GdkDeviceTool>! = cast(gdk_event_get_device_tool(cast(event_ptr)))
            return cast(rv)
        }
        /// Sets the device tool for this event, should be rarely used.
        nonmutating set {
            gdk_event_set_device_tool(cast(event_ptr), cast(newValue))
        }
    }

    /// If `event` if of type `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
    /// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`, returns the `GdkEventSequence`
    /// to which the event belongs. Otherwise, return `nil`.
    var eventSequence: UnsafeMutablePointer<GdkEventSequence>! {
        /// If `event` if of type `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE`,
        /// `GDK_TOUCH_END` or `GDK_TOUCH_CANCEL`, returns the `GdkEventSequence`
        /// to which the event belongs. Otherwise, return `nil`.
        get {
            let rv: UnsafeMutablePointer<GdkEventSequence>! = cast(gdk_event_get_event_sequence(cast(event_ptr)))
            return cast(rv)
        }
    }

    /// Retrieves the type of the event.
    var eventType: GdkEventType {
        /// Retrieves the type of the event.
        get {
            let rv = gdk_event_get_event_type(cast(event_ptr))
            return cast(rv)
        }
    }

    /// Check whether a scroll event is a stop scroll event. Scroll sequences
    /// with smooth scroll information may provide a stop scroll event once the
    /// interaction with the device finishes, e.g. by lifting a finger. This
    /// stop scroll event is the signal that a widget may trigger kinetic
    /// scrolling based on the current velocity.
    /// 
    /// Stop scroll events always have a a delta of 0/0.
    var isScrollStopEvent: Bool {
        /// Check whether a scroll event is a stop scroll event. Scroll sequences
        /// with smooth scroll information may provide a stop scroll event once the
        /// interaction with the device finishes, e.g. by lifting a finger. This
        /// stop scroll event is the signal that a widget may trigger kinetic
        /// scrolling based on the current velocity.
        /// 
        /// Stop scroll events always have a a delta of 0/0.
        get {
            let rv = gdk_event_is_scroll_stop_event(cast(event_ptr))
            return Bool(rv != 0)
        }
    }

    /// `event:` a `GdkEvent`
    /// Returns whether this event is an 'emulated' pointer event (typically
    /// from a touch event), as opposed to a real one.
    var pointerEmulated: Bool {
        /// `event:` a `GdkEvent`
        /// Returns whether this event is an 'emulated' pointer event (typically
        /// from a touch event), as opposed to a real one.
        get {
            let rv = gdk_event_get_pointer_emulated(cast(event_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the keyboard low-level scancode of a key event.
    /// 
    /// This is usually hardware_keycode. On Windows this is the high
    /// word of WM_KEY{DOWN,UP} lParam which contains the scancode and
    /// some extended flags.
    var scancode: Int {
        /// Gets the keyboard low-level scancode of a key event.
        /// 
        /// This is usually hardware_keycode. On Windows this is the high
        /// word of WM_KEY{DOWN,UP} lParam which contains the scancode and
        /// some extended flags.
        get {
            let rv: Int = cast(gdk_event_get_scancode(cast(event_ptr)))
            return cast(rv)
        }
    }

    /// Returns the screen for the event. The screen is
    /// typically the screen for `event->any.window`, but
    /// for events such as mouse events, it is the screen
    /// where the pointer was when the event occurs -
    /// that is, the screen which has the root window
    /// to which `event->motion.x_root` and
    /// `event->motion.y_root` are relative.
    var screen: UnsafeMutablePointer<GdkScreen>! {
        /// Returns the screen for the event. The screen is
        /// typically the screen for `event->any.window`, but
        /// for events such as mouse events, it is the screen
        /// where the pointer was when the event occurs -
        /// that is, the screen which has the root window
        /// to which `event->motion.x_root` and
        /// `event->motion.y_root` are relative.
        get {
            let rv: UnsafeMutablePointer<GdkScreen>! = cast(gdk_event_get_screen(cast(event_ptr)))
            return cast(rv)
        }
        /// Sets the screen for `event` to `screen`. The event must
        /// have been allocated by GTK+, for instance, by
        /// `gdk_event_copy()`.
        nonmutating set {
            gdk_event_set_screen(cast(event_ptr), cast(newValue))
        }
    }

    /// Returns the `GdkSeat` this event was generated for.
    var seat: UnsafeMutablePointer<GdkSeat>! {
        /// Returns the `GdkSeat` this event was generated for.
        get {
            let rv: UnsafeMutablePointer<GdkSeat>! = cast(gdk_event_get_seat(cast(event_ptr)))
            return cast(rv)
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
    var sourceDevice: UnsafeMutablePointer<GdkDevice>! {
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
            let rv: UnsafeMutablePointer<GdkDevice>! = cast(gdk_event_get_source_device(cast(event_ptr)))
            return cast(rv)
        }
        /// Sets the slave device for `event` to `device`.
        /// 
        /// The event must have been allocated by GTK+,
        /// for instance by `gdk_event_copy()`.
        nonmutating set {
            gdk_event_set_source_device(cast(event_ptr), cast(newValue))
        }
    }

    /// Returns the time stamp from `event`, if there is one; otherwise
    /// returns `GDK_CURRENT_TIME`. If `event` is `nil`, returns `GDK_CURRENT_TIME`.
    var time: UInt32 {
        /// Returns the time stamp from `event`, if there is one; otherwise
        /// returns `GDK_CURRENT_TIME`. If `event` is `nil`, returns `GDK_CURRENT_TIME`.
        get {
            let rv = gdk_event_get_time(cast(event_ptr))
            return UInt32(rv)
        }
    }

    /// Extracts the `GdkWindow` associated with an event.
    var window: UnsafeMutablePointer<GdkWindow>! {
        /// Extracts the `GdkWindow` associated with an event.
        get {
            let rv: UnsafeMutablePointer<GdkWindow>! = cast(gdk_event_get_window(cast(event_ptr)))
            return cast(rv)
        }
    }

    /// the `GdkEventType`
    var type: GdkEventType {
        /// the `GdkEventType`
        get {
            let rv: GdkEventType = cast(event_ptr.pointee.type)
            return rv
        }
        /// the `GdkEventType`
         set {
            event_ptr.pointee.type = cast(newValue)
        }
    }

    /// a `GdkEventAny`
    var any: GdkEventAny {
        /// a `GdkEventAny`
        get {
            let rv: GdkEventAny = cast(event_ptr.pointee.any)
            return rv
        }
        /// a `GdkEventAny`
         set {
            event_ptr.pointee.any = cast(newValue)
        }
    }

    /// a `GdkEventExpose`
    var expose: GdkEventExpose {
        /// a `GdkEventExpose`
        get {
            let rv: GdkEventExpose = cast(event_ptr.pointee.expose)
            return rv
        }
        /// a `GdkEventExpose`
         set {
            event_ptr.pointee.expose = cast(newValue)
        }
    }

    /// a `GdkEventVisibility`
    var visibility: GdkEventVisibility {
        /// a `GdkEventVisibility`
        get {
            let rv: GdkEventVisibility = cast(event_ptr.pointee.visibility)
            return rv
        }
        /// a `GdkEventVisibility`
         set {
            event_ptr.pointee.visibility = cast(newValue)
        }
    }

    /// a `GdkEventMotion`
    var motion: GdkEventMotion {
        /// a `GdkEventMotion`
        get {
            let rv: GdkEventMotion = cast(event_ptr.pointee.motion)
            return rv
        }
        /// a `GdkEventMotion`
         set {
            event_ptr.pointee.motion = cast(newValue)
        }
    }

    /// a `GdkEventButton`
    var button: GdkEventButton {
        /// a `GdkEventButton`
        get {
            let rv: GdkEventButton = cast(event_ptr.pointee.button)
            return rv
        }
        /// a `GdkEventButton`
         set {
            event_ptr.pointee.button = cast(newValue)
        }
    }

    /// a `GdkEventTouch`
    var touch: GdkEventTouch {
        /// a `GdkEventTouch`
        get {
            let rv: GdkEventTouch = cast(event_ptr.pointee.touch)
            return rv
        }
        /// a `GdkEventTouch`
         set {
            event_ptr.pointee.touch = cast(newValue)
        }
    }

    /// a `GdkEventScroll`
    var scroll: GdkEventScroll {
        /// a `GdkEventScroll`
        get {
            let rv: GdkEventScroll = cast(event_ptr.pointee.scroll)
            return rv
        }
        /// a `GdkEventScroll`
         set {
            event_ptr.pointee.scroll = cast(newValue)
        }
    }

    /// a `GdkEventKey`
    var key: GdkEventKey {
        /// a `GdkEventKey`
        get {
            let rv: GdkEventKey = cast(event_ptr.pointee.key)
            return rv
        }
        /// a `GdkEventKey`
         set {
            event_ptr.pointee.key = cast(newValue)
        }
    }

    /// a `GdkEventCrossing`
    var crossing: GdkEventCrossing {
        /// a `GdkEventCrossing`
        get {
            let rv: GdkEventCrossing = cast(event_ptr.pointee.crossing)
            return rv
        }
        /// a `GdkEventCrossing`
         set {
            event_ptr.pointee.crossing = cast(newValue)
        }
    }

    /// a `GdkEventFocus`
    var focusChange: GdkEventFocus {
        /// a `GdkEventFocus`
        get {
            let rv: GdkEventFocus = cast(event_ptr.pointee.focus_change)
            return rv
        }
        /// a `GdkEventFocus`
         set {
            event_ptr.pointee.focus_change = cast(newValue)
        }
    }

    /// a `GdkEventConfigure`
    var configure: GdkEventConfigure {
        /// a `GdkEventConfigure`
        get {
            let rv: GdkEventConfigure = cast(event_ptr.pointee.configure)
            return rv
        }
        /// a `GdkEventConfigure`
         set {
            event_ptr.pointee.configure = cast(newValue)
        }
    }

    /// a `GdkEventProperty`
    var property: GdkEventProperty {
        /// a `GdkEventProperty`
        get {
            let rv: GdkEventProperty = cast(event_ptr.pointee.property)
            return rv
        }
        /// a `GdkEventProperty`
         set {
            event_ptr.pointee.property = cast(newValue)
        }
    }

    /// a `GdkEventSelection`
    var selection: GdkEventSelection {
        /// a `GdkEventSelection`
        get {
            let rv: GdkEventSelection = cast(event_ptr.pointee.selection)
            return rv
        }
        /// a `GdkEventSelection`
         set {
            event_ptr.pointee.selection = cast(newValue)
        }
    }

    /// a `GdkEventOwnerChange`
    var ownerChange: GdkEventOwnerChange {
        /// a `GdkEventOwnerChange`
        get {
            let rv: GdkEventOwnerChange = cast(event_ptr.pointee.owner_change)
            return rv
        }
        /// a `GdkEventOwnerChange`
         set {
            event_ptr.pointee.owner_change = cast(newValue)
        }
    }

    /// a `GdkEventProximity`
    var proximity: GdkEventProximity {
        /// a `GdkEventProximity`
        get {
            let rv: GdkEventProximity = cast(event_ptr.pointee.proximity)
            return rv
        }
        /// a `GdkEventProximity`
         set {
            event_ptr.pointee.proximity = cast(newValue)
        }
    }

    /// a `GdkEventDND`
    var dnd: GdkEventDND {
        /// a `GdkEventDND`
        get {
            let rv: GdkEventDND = cast(event_ptr.pointee.dnd)
            return rv
        }
        /// a `GdkEventDND`
         set {
            event_ptr.pointee.dnd = cast(newValue)
        }
    }

    /// a `GdkEventWindowState`
    var windowState: GdkEventWindowState {
        /// a `GdkEventWindowState`
        get {
            let rv: GdkEventWindowState = cast(event_ptr.pointee.window_state)
            return rv
        }
        /// a `GdkEventWindowState`
         set {
            event_ptr.pointee.window_state = cast(newValue)
        }
    }

    /// a `GdkEventSetting`
    var setting: GdkEventSetting {
        /// a `GdkEventSetting`
        get {
            let rv: GdkEventSetting = cast(event_ptr.pointee.setting)
            return rv
        }
        /// a `GdkEventSetting`
         set {
            event_ptr.pointee.setting = cast(newValue)
        }
    }

    /// a `GdkEventGrabBroken`
    var grabBroken: GdkEventGrabBroken {
        /// a `GdkEventGrabBroken`
        get {
            let rv: GdkEventGrabBroken = cast(event_ptr.pointee.grab_broken)
            return rv
        }
        /// a `GdkEventGrabBroken`
         set {
            event_ptr.pointee.grab_broken = cast(newValue)
        }
    }

    /// a `GdkEventTouchpadSwipe`
    var touchpadSwipe: GdkEventTouchpadSwipe {
        /// a `GdkEventTouchpadSwipe`
        get {
            let rv: GdkEventTouchpadSwipe = cast(event_ptr.pointee.touchpad_swipe)
            return rv
        }
        /// a `GdkEventTouchpadSwipe`
         set {
            event_ptr.pointee.touchpad_swipe = cast(newValue)
        }
    }

    /// a `GdkEventTouchpadPinch`
    var touchpadPinch: GdkEventTouchpadPinch {
        /// a `GdkEventTouchpadPinch`
        get {
            let rv: GdkEventTouchpadPinch = cast(event_ptr.pointee.touchpad_pinch)
            return rv
        }
        /// a `GdkEventTouchpadPinch`
         set {
            event_ptr.pointee.touchpad_pinch = cast(newValue)
        }
    }

    /// a `GdkEventPadButton`
    var padButton: GdkEventPadButton {
        /// a `GdkEventPadButton`
        get {
            let rv: GdkEventPadButton = cast(event_ptr.pointee.pad_button)
            return rv
        }
        /// a `GdkEventPadButton`
         set {
            event_ptr.pointee.pad_button = cast(newValue)
        }
    }

    /// a `GdkEventPadAxis`
    var padAxis: GdkEventPadAxis {
        /// a `GdkEventPadAxis`
        get {
            let rv: GdkEventPadAxis = cast(event_ptr.pointee.pad_axis)
            return rv
        }
        /// a `GdkEventPadAxis`
         set {
            event_ptr.pointee.pad_axis = cast(newValue)
        }
    }

    /// a `GdkEventPadGroupMode`
    var padGroupMode: GdkEventPadGroupMode {
        /// a `GdkEventPadGroupMode`
        get {
            let rv: GdkEventPadGroupMode = cast(event_ptr.pointee.pad_group_mode)
            return rv
        }
        /// a `GdkEventPadGroupMode`
         set {
            event_ptr.pointee.pad_group_mode = cast(newValue)
        }
    }

}

