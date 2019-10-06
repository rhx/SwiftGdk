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

/// Positioning hints for aligning a window relative to a rectangle.
/// 
/// These hints determine how the window should be positioned in the case that
/// the window would fall off-screen if placed in its ideal position.
/// 
/// For example, `GDK_ANCHOR_FLIP_X` will replace `GDK_GRAVITY_NORTH_WEST` with
/// `GDK_GRAVITY_NORTH_EAST` and vice versa if the window extends beyond the left
/// or right edges of the monitor.
/// 
/// If `GDK_ANCHOR_SLIDE_X` is set, the window can be shifted horizontally to fit
/// on-screen. If `GDK_ANCHOR_RESIZE_X` is set, the window can be shrunken
/// horizontally to fit.
/// 
/// In general, when multiple flags are set, flipping should take precedence over
/// sliding, which should take precedence over resizing.
public typealias AnchorHints = GdkAnchorHints

public extension AnchorHints {
    /// allow flipping anchors horizontally
    static let flip_x = GDK_ANCHOR_FLIP_X /* 1 */
    /// allow flipping anchors vertically
    static let flip_y = GDK_ANCHOR_FLIP_Y /* 2 */
    /// allow sliding window horizontally
    static let slide_x = GDK_ANCHOR_SLIDE_X /* 4 */
    /// allow sliding window vertically
    static let slide_y = GDK_ANCHOR_SLIDE_Y /* 8 */
    /// allow resizing window horizontally
    static let resize_x = GDK_ANCHOR_RESIZE_X /* 16 */
    /// allow resizing window vertically
    static let resize_y = GDK_ANCHOR_RESIZE_Y /* 32 */
    /// allow flipping anchors on both axes
    static let flip = GDK_ANCHOR_FLIP /* 3 */
    /// allow sliding window on both axes
    static let slide = GDK_ANCHOR_SLIDE /* 12 */
    /// allow resizing window on both axes
    static let resize = GDK_ANCHOR_RESIZE /* 48 */
}

/// Flags describing the current capabilities of a device/tool.
public typealias AxisFlags = GdkAxisFlags

public extension AxisFlags {
    /// X axis is present
    static let x = GDK_AXIS_FLAG_X /* 2 */
    /// Y axis is present
    static let y = GDK_AXIS_FLAG_Y /* 4 */
    /// Pressure axis is present
    static let pressure = GDK_AXIS_FLAG_PRESSURE /* 8 */
    /// X tilt axis is present
    static let xtilt = GDK_AXIS_FLAG_XTILT /* 16 */
    /// Y tilt axis is present
    static let ytilt = GDK_AXIS_FLAG_YTILT /* 32 */
    /// Wheel axis is present
    static let wheel = GDK_AXIS_FLAG_WHEEL /* 64 */
    /// Distance axis is present
    static let distance = GDK_AXIS_FLAG_DISTANCE /* 128 */
    /// Z-axis rotation is present
    static let rotation = GDK_AXIS_FLAG_ROTATION /* 256 */
    /// Slider axis is present
    static let slider = GDK_AXIS_FLAG_SLIDER /* 512 */
}

/// Used in `GdkDragContext` to indicate what the destination
/// should do with the dropped data.
public typealias DragAction = GdkDragAction

public extension DragAction {
    /// Means nothing, and should not be used.
    static let default_ = GDK_ACTION_DEFAULT /* 1 */
    /// Copy the data.
    static let copy = GDK_ACTION_COPY /* 2 */
    /// Move the data, i.e. first copy it, then delete
    ///  it from the source using the DELETE target of the X selection protocol.
    static let move = GDK_ACTION_MOVE /* 4 */
    /// Add a link to the data. Note that this is only
    ///  useful if source and destination agree on what it means.
    static let link = GDK_ACTION_LINK /* 8 */
    /// Special action which tells the source that the
    ///  destination will do something that the source doesn’t understand.
    static let private_ = GDK_ACTION_PRIVATE /* 16 */
    /// Ask the user what to do with the data.
    static let ask = GDK_ACTION_ASK /* 32 */
}

/// A set of bit-flags to indicate which events a window is to receive.
/// Most of these masks map onto one or more of the `GdkEventType` event types
/// above.
/// 
/// See the [input handling overview](#chap-input-handling) for details of
/// [event masks](#event-masks) and [event propagation](#event-propagation).
/// 
/// `GDK_POINTER_MOTION_HINT_MASK` is deprecated. It is a special mask
/// to reduce the number of `GDK_MOTION_NOTIFY` events received. When using
/// `GDK_POINTER_MOTION_HINT_MASK`, fewer `GDK_MOTION_NOTIFY` events will
/// be sent, some of which are marked as a hint (the is_hint member is
/// `true`). To receive more motion events after a motion hint event,
/// the application needs to asks for more, by calling
/// `gdk_event_request_motions()`.
/// 
/// Since GTK 3.8, motion events are already compressed by default, independent
/// of this mechanism. This compression can be disabled with
/// `gdk_window_set_event_compression()`. See the documentation of that function
/// for details.
/// 
/// If `GDK_TOUCH_MASK` is enabled, the window will receive touch events
/// from touch-enabled devices. Those will come as sequences of `GdkEventTouch`
/// with type `GDK_TOUCH_UPDATE`, enclosed by two events with
/// type `GDK_TOUCH_BEGIN` and `GDK_TOUCH_END` (or `GDK_TOUCH_CANCEL`).
/// `gdk_event_get_event_sequence()` returns the event sequence for these
/// events, so different sequences may be distinguished.
public typealias EventMask = GdkEventMask

public extension EventMask {
    /// receive expose events
    static let exposure_mask = GDK_EXPOSURE_MASK /* 2 */
    /// receive all pointer motion events
    static let pointer_motion_mask = GDK_POINTER_MOTION_MASK /* 4 */
    /// deprecated. see the explanation above
    static let pointer_motion_hint_mask = GDK_POINTER_MOTION_HINT_MASK /* 8 */
    /// receive pointer motion events while any button is pressed
    static let button_motion_mask = GDK_BUTTON_MOTION_MASK /* 16 */
    /// receive pointer motion events while 1 button is pressed
    static let button1_motion_mask = GDK_BUTTON1_MOTION_MASK /* 32 */
    /// receive pointer motion events while 2 button is pressed
    static let button2_motion_mask = GDK_BUTTON2_MOTION_MASK /* 64 */
    /// receive pointer motion events while 3 button is pressed
    static let button3_motion_mask = GDK_BUTTON3_MOTION_MASK /* 128 */
    /// receive button press events
    static let button_press_mask = GDK_BUTTON_PRESS_MASK /* 256 */
    /// receive button release events
    static let button_release_mask = GDK_BUTTON_RELEASE_MASK /* 512 */
    /// receive key press events
    static let key_press_mask = GDK_KEY_PRESS_MASK /* 1024 */
    /// receive key release events
    static let key_release_mask = GDK_KEY_RELEASE_MASK /* 2048 */
    /// receive window enter events
    static let enter_notify_mask = GDK_ENTER_NOTIFY_MASK /* 4096 */
    /// receive window leave events
    static let leave_notify_mask = GDK_LEAVE_NOTIFY_MASK /* 8192 */
    /// receive focus change events
    static let focus_change_mask = GDK_FOCUS_CHANGE_MASK /* 16384 */
    /// receive events about window configuration change
    static let structure_mask = GDK_STRUCTURE_MASK /* 32768 */
    /// receive property change events
    static let property_change_mask = GDK_PROPERTY_CHANGE_MASK /* 65536 */
    /// receive visibility change events
    static let visibility_notify_mask = GDK_VISIBILITY_NOTIFY_MASK /* 131072 */
    /// receive proximity in events
    static let proximity_in_mask = GDK_PROXIMITY_IN_MASK /* 262144 */
    /// receive proximity out events
    static let proximity_out_mask = GDK_PROXIMITY_OUT_MASK /* 524288 */
    /// receive events about window configuration changes of
    ///   child windows
    static let substructure_mask = GDK_SUBSTRUCTURE_MASK /* 1048576 */
    /// receive scroll events
    static let scroll_mask = GDK_SCROLL_MASK /* 2097152 */
    /// receive touch events. Since 3.4
    static let touch_mask = GDK_TOUCH_MASK /* 4194304 */
    /// receive smooth scrolling events. Since 3.4
    static let smooth_scroll_mask = GDK_SMOOTH_SCROLL_MASK /* 8388608 */
    /// receive touchpad gesture events. Since 3.18
    static let touchpad_gesture_mask = GDK_TOUCHPAD_GESTURE_MASK /* 16777216 */
    /// receive tablet pad events. Since 3.22
    static let tablet_pad_mask = GDK_TABLET_PAD_MASK /* 33554432 */
    /// the combination of all the above event masks.
    static let all_events_mask = GDK_ALL_EVENTS_MASK /* 67108862 */
}

/// `GdkFrameClockPhase` is used to represent the different paint clock
/// phases that can be requested. The elements of the enumeration
/// correspond to the signals of `GdkFrameClock`.
public typealias FrameClockPhase = GdkFrameClockPhase

public extension FrameClockPhase {
    /// no phase
    static let none_ = GDK_FRAME_CLOCK_PHASE_NONE /* 0 */
    /// corresponds to GdkFrameClock`flush`-events. Should not be handled by applications.
    static let flush_events = GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS /* 1 */
    /// corresponds to GdkFrameClock`before`-paint. Should not be handled by applications.
    static let before_paint = GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT /* 2 */
    /// corresponds to GdkFrameClock`update`.
    static let update = GDK_FRAME_CLOCK_PHASE_UPDATE /* 4 */
    /// corresponds to GdkFrameClock`layout`.
    static let layout = GDK_FRAME_CLOCK_PHASE_LAYOUT /* 8 */
    /// corresponds to GdkFrameClock`paint`.
    static let paint = GDK_FRAME_CLOCK_PHASE_PAINT /* 16 */
    /// corresponds to GdkFrameClock`resume`-events. Should not be handled by applications.
    static let resume_events = GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS /* 32 */
    /// corresponds to GdkFrameClock`after`-paint. Should not be handled by applications.
    static let after_paint = GDK_FRAME_CLOCK_PHASE_AFTER_PAINT /* 64 */
}

/// A set of bit-flags to indicate the state of modifier keys and mouse buttons
/// in various event types. Typical modifier keys are Shift, Control, Meta,
/// Super, Hyper, Alt, Compose, Apple, CapsLock or ShiftLock.
/// 
/// Like the X Window System, GDK supports 8 modifier keys and 5 mouse buttons.
/// 
/// Since 2.10, GDK recognizes which of the Meta, Super or Hyper keys are mapped
/// to Mod2 - Mod5, and indicates this by setting `GDK_SUPER_MASK`,
/// `GDK_HYPER_MASK` or `GDK_META_MASK` in the state field of key events.
/// 
/// Note that GDK may add internal values to events which include
/// reserved values such as `GDK_MODIFIER_RESERVED_13_MASK`.  Your code
/// should preserve and ignore them.  You can use `GDK_MODIFIER_MASK` to
/// remove all reserved values.
/// 
/// Also note that the GDK X backend interprets button press events for button
/// 4-7 as scroll events, so `GDK_BUTTON4_MASK` and `GDK_BUTTON5_MASK` will never
/// be set.
public typealias ModifierType = GdkModifierType

public extension ModifierType {
    /// the Shift key.
    static let shift_mask = GDK_SHIFT_MASK /* 1 */
    /// a Lock key (depending on the modifier mapping of the
    ///  X server this may either be CapsLock or ShiftLock).
    static let lock_mask = GDK_LOCK_MASK /* 2 */
    /// the Control key.
    static let control_mask = GDK_CONTROL_MASK /* 4 */
    /// the fourth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier, but
    ///  normally it is the Alt key).
    static let mod1_mask = GDK_MOD1_MASK /* 8 */
    /// the fifth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    static let mod2_mask = GDK_MOD2_MASK /* 16 */
    /// the sixth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    static let mod3_mask = GDK_MOD3_MASK /* 32 */
    /// the seventh modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    static let mod4_mask = GDK_MOD4_MASK /* 64 */
    /// the eighth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    static let mod5_mask = GDK_MOD5_MASK /* 128 */
    /// the first mouse button.
    static let button1_mask = GDK_BUTTON1_MASK /* 256 */
    /// the second mouse button.
    static let button2_mask = GDK_BUTTON2_MASK /* 512 */
    /// the third mouse button.
    static let button3_mask = GDK_BUTTON3_MASK /* 1024 */
    /// the fourth mouse button.
    static let button4_mask = GDK_BUTTON4_MASK /* 2048 */
    /// the fifth mouse button.
    static let button5_mask = GDK_BUTTON5_MASK /* 4096 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_13_mask = GDK_MODIFIER_RESERVED_13_MASK /* 8192 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_14_mask = GDK_MODIFIER_RESERVED_14_MASK /* 16384 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_15_mask = GDK_MODIFIER_RESERVED_15_MASK /* 32768 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_16_mask = GDK_MODIFIER_RESERVED_16_MASK /* 65536 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_17_mask = GDK_MODIFIER_RESERVED_17_MASK /* 131072 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_18_mask = GDK_MODIFIER_RESERVED_18_MASK /* 262144 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_19_mask = GDK_MODIFIER_RESERVED_19_MASK /* 524288 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_20_mask = GDK_MODIFIER_RESERVED_20_MASK /* 1048576 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_21_mask = GDK_MODIFIER_RESERVED_21_MASK /* 2097152 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_22_mask = GDK_MODIFIER_RESERVED_22_MASK /* 4194304 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_23_mask = GDK_MODIFIER_RESERVED_23_MASK /* 8388608 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_24_mask = GDK_MODIFIER_RESERVED_24_MASK /* 16777216 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_25_mask = GDK_MODIFIER_RESERVED_25_MASK /* 33554432 */
    /// the Super modifier. Since 2.10
    static let super_mask = GDK_SUPER_MASK /* 67108864 */
    /// the Hyper modifier. Since 2.10
    static let hyper_mask = GDK_HYPER_MASK /* 134217728 */
    /// the Meta modifier. Since 2.10
    static let meta_mask = GDK_META_MASK /* 268435456 */
    /// A reserved bit flag; do not use in your own code
    static let modifier_reserved_29_mask = GDK_MODIFIER_RESERVED_29_MASK /* 536870912 */
    /// not used in GDK itself. GTK+ uses it to differentiate
    ///  between (keyval, modifiers) pairs from key press and release events.
    static let release_mask = GDK_RELEASE_MASK /* 1073741824 */
    /// a mask covering all modifier types.
    static let modifier_mask = GDK_MODIFIER_MASK /* 1543512063 */
}

/// Flags describing the seat capabilities.
public typealias SeatCapabilities = GdkSeatCapabilities

public extension SeatCapabilities {
    /// No input capabilities
    static let none_ = GDK_SEAT_CAPABILITY_NONE /* 0 */
    /// The seat has a pointer (e.g. mouse)
    static let pointer = GDK_SEAT_CAPABILITY_POINTER /* 1 */
    /// The seat has `touchscreen(s)` attached
    static let touch = GDK_SEAT_CAPABILITY_TOUCH /* 2 */
    /// The seat has drawing `tablet(s)` attached
    static let tablet_stylus = GDK_SEAT_CAPABILITY_TABLET_STYLUS /* 4 */
    /// The seat has `keyboard(s)` attached
    static let keyboard = GDK_SEAT_CAPABILITY_KEYBOARD /* 8 */
    /// The union of all pointing capabilities
    static let all_pointing = GDK_SEAT_CAPABILITY_ALL_POINTING /* 7 */
    /// The union of all capabilities
    static let all = GDK_SEAT_CAPABILITY_ALL /* 15 */
}

/// These are hints originally defined by the Motif toolkit.
/// The window manager can use them when determining how to decorate
/// the window. The hint must be set before mapping the window.
public typealias WMDecoration = GdkWMDecoration

public extension WMDecoration {
    /// all decorations should be applied.
    static let all = GDK_DECOR_ALL /* 1 */
    /// a frame should be drawn around the window.
    static let border = GDK_DECOR_BORDER /* 2 */
    /// the frame should have resize handles.
    static let resizeh = GDK_DECOR_RESIZEH /* 4 */
    /// a titlebar should be placed above the window.
    static let title = GDK_DECOR_TITLE /* 8 */
    /// a button for opening a menu should be included.
    static let menu = GDK_DECOR_MENU /* 16 */
    /// a minimize button should be included.
    static let minimize = GDK_DECOR_MINIMIZE /* 32 */
    /// a maximize button should be included.
    static let maximize = GDK_DECOR_MAXIMIZE /* 64 */
}

/// These are hints originally defined by the Motif toolkit. The window manager
/// can use them when determining the functions to offer for the window. The
/// hint must be set before mapping the window.
public typealias WMFunction = GdkWMFunction

public extension WMFunction {
    /// all functions should be offered.
    static let all = GDK_FUNC_ALL /* 1 */
    /// the window should be resizable.
    static let resize = GDK_FUNC_RESIZE /* 2 */
    /// the window should be movable.
    static let move = GDK_FUNC_MOVE /* 4 */
    /// the window should be minimizable.
    static let minimize = GDK_FUNC_MINIMIZE /* 8 */
    /// the window should be maximizable.
    static let maximize = GDK_FUNC_MAXIMIZE /* 16 */
    /// the window should be closable.
    static let close = GDK_FUNC_CLOSE /* 32 */
}

/// Used to indicate which fields in the `GdkWindowAttr` struct should be honored.
/// For example, if you filled in the “cursor” and “x” fields of `GdkWindowAttr`,
/// pass “`GDK_WA_X` | `GDK_WA_CURSOR`” to `gdk_window_new()`. Fields in
/// `GdkWindowAttr` not covered by a bit in this enum are required; for example,
/// the `width`/`height`, `wclass`, and `window_type` fields are required, they have
/// no corresponding flag in `GdkWindowAttributesType`.
public typealias WindowAttributesType = GdkWindowAttributesType

public extension WindowAttributesType {
    /// Honor the title field
    static let title = GDK_WA_TITLE /* 2 */
    /// Honor the X coordinate field
    static let x = GDK_WA_X /* 4 */
    /// Honor the Y coordinate field
    static let y = GDK_WA_Y /* 8 */
    /// Honor the cursor field
    static let cursor = GDK_WA_CURSOR /* 16 */
    /// Honor the visual field
    static let visual = GDK_WA_VISUAL /* 32 */
    /// Honor the wmclass_class and wmclass_name fields
    static let wmclass = GDK_WA_WMCLASS /* 64 */
    /// Honor the override_redirect field
    static let noredir = GDK_WA_NOREDIR /* 128 */
    /// Honor the type_hint field
    static let type_hint = GDK_WA_TYPE_HINT /* 256 */
}

/// Used to indicate which fields of a `GdkGeometry` struct should be paid
/// attention to. Also, the presence/absence of `GDK_HINT_POS`,
/// `GDK_HINT_USER_POS`, and `GDK_HINT_USER_SIZE` is significant, though they don't
/// directly refer to `GdkGeometry` fields. `GDK_HINT_USER_POS` will be set
/// automatically by `GtkWindow` if you call `gtk_window_move()`.
/// `GDK_HINT_USER_POS` and `GDK_HINT_USER_SIZE` should be set if the user
/// specified a size/position using a --geometry command-line argument;
/// `gtk_window_parse_geometry()` automatically sets these flags.
public typealias WindowHints = GdkWindowHints

public extension WindowHints {
    /// indicates that the program has positioned the window
    static let pos = GDK_HINT_POS /* 1 */
    /// min size fields are set
    static let min_size = GDK_HINT_MIN_SIZE /* 2 */
    /// max size fields are set
    static let max_size = GDK_HINT_MAX_SIZE /* 4 */
    /// base size fields are set
    static let base_size = GDK_HINT_BASE_SIZE /* 8 */
    /// aspect ratio fields are set
    static let aspect = GDK_HINT_ASPECT /* 16 */
    /// resize increment fields are set
    static let resize_inc = GDK_HINT_RESIZE_INC /* 32 */
    /// window gravity field is set
    static let win_gravity = GDK_HINT_WIN_GRAVITY /* 64 */
    /// indicates that the window’s position was explicitly set
    ///  by the user
    static let user_pos = GDK_HINT_USER_POS /* 128 */
    /// indicates that the window’s size was explicitly set by
    ///  the user
    static let user_size = GDK_HINT_USER_SIZE /* 256 */
}

/// Specifies the state of a toplevel window.
public typealias WindowState = GdkWindowState

public extension WindowState {
    /// the window is not shown.
    static let withdrawn = GDK_WINDOW_STATE_WITHDRAWN /* 1 */
    /// the window is minimized.
    static let iconified = GDK_WINDOW_STATE_ICONIFIED /* 2 */
    /// the window is maximized.
    static let maximized = GDK_WINDOW_STATE_MAXIMIZED /* 4 */
    /// the window is sticky.
    static let sticky = GDK_WINDOW_STATE_STICKY /* 8 */
    /// the window is maximized without
    ///   decorations.
    static let fullscreen = GDK_WINDOW_STATE_FULLSCREEN /* 16 */
    /// the window is kept above other windows.
    static let above = GDK_WINDOW_STATE_ABOVE /* 32 */
    /// the window is kept below other windows.
    static let below = GDK_WINDOW_STATE_BELOW /* 64 */
    /// the window is presented as focused (with active decorations).
    static let focused = GDK_WINDOW_STATE_FOCUSED /* 128 */
    /// the window is in a tiled state, Since 3.10. Since 3.22.23, this
    ///                          is deprecated in favor of per-edge information.
    static let tiled = GDK_WINDOW_STATE_TILED /* 256 */
    /// whether the top edge is tiled, Since 3.22.23
    static let top_tiled = GDK_WINDOW_STATE_TOP_TILED /* 512 */
    /// whether the top edge is resizable, Since 3.22.23
    static let top_resizable = GDK_WINDOW_STATE_TOP_RESIZABLE /* 1024 */
    /// whether the right edge is tiled, Since 3.22.23
    static let right_tiled = GDK_WINDOW_STATE_RIGHT_TILED /* 2048 */
    /// whether the right edge is resizable, Since 3.22.23
    static let right_resizable = GDK_WINDOW_STATE_RIGHT_RESIZABLE /* 4096 */
    /// whether the bottom edge is tiled, Since 3.22.23
    static let bottom_tiled = GDK_WINDOW_STATE_BOTTOM_TILED /* 8192 */
    /// whether the bottom edge is resizable, Since 3.22.23
    static let bottom_resizable = GDK_WINDOW_STATE_BOTTOM_RESIZABLE /* 16384 */
    /// whether the left edge is tiled, Since 3.22.23
    static let left_tiled = GDK_WINDOW_STATE_LEFT_TILED /* 32768 */
    /// whether the left edge is resizable, Since 3.22.23
    static let left_resizable = GDK_WINDOW_STATE_LEFT_RESIZABLE /* 65536 */
}
