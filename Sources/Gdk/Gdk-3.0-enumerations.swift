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

/// An enumeration describing the way in which a device
/// axis (valuator) maps onto the predefined valuator
/// types that GTK+ understands.
/// 
/// Note that the X and Y axes are not really needed; pointer devices
/// report their location via the x/y members of events regardless. Whether
/// X and Y are present as axes depends on the GDK backend.
public typealias AxisUse = GdkAxisUse

public extension AxisUse {
    /// the axis is ignored.
    static let ignore = GDK_AXIS_IGNORE /* 0 */
    /// the axis is used as the x axis.
    static let x = GDK_AXIS_X /* 1 */
    /// the axis is used as the y axis.
    static let y = GDK_AXIS_Y /* 2 */
    /// the axis is used for pressure information.
    static let pressure = GDK_AXIS_PRESSURE /* 3 */
    /// the axis is used for x tilt information.
    static let xtilt = GDK_AXIS_XTILT /* 4 */
    /// the axis is used for y tilt information.
    static let ytilt = GDK_AXIS_YTILT /* 5 */
    /// the axis is used for wheel information.
    static let wheel = GDK_AXIS_WHEEL /* 6 */
    /// the axis is used for pen/tablet distance information. (Since: 3.22)
    static let distance = GDK_AXIS_DISTANCE /* 7 */
    /// the axis is used for pen rotation information. (Since: 3.22)
    static let rotation = GDK_AXIS_ROTATION /* 8 */
    /// the axis is used for pen slider information. (Since: 3.22)
    static let slider = GDK_AXIS_SLIDER /* 9 */
    /// a constant equal to the numerically highest axis value.
    static let last = GDK_AXIS_LAST /* 10 */
}

/// A set of values describing the possible byte-orders
/// for storing pixel values in memory.
public typealias ByteOrder = GdkByteOrder

public extension ByteOrder {
    /// The values are stored with the least-significant byte
    ///   first. For instance, the 32-bit value 0xffeecc would be stored
    ///   in memory as 0xcc, 0xee, 0xff, 0x00.
    static let lsb_first = GDK_LSB_FIRST /* 0 */
    /// The values are stored with the most-significant byte
    ///   first. For instance, the 32-bit value 0xffeecc would be stored
    ///   in memory as 0x00, 0xff, 0xee, 0xcc.
    static let msb_first = GDK_MSB_FIRST /* 1 */
}

/// Specifies the crossing mode for `GdkEventCrossing`.
public typealias CrossingMode = GdkCrossingMode

public extension CrossingMode {
    /// crossing because of pointer motion.
    static let normal = GDK_CROSSING_NORMAL /* 0 */
    /// crossing because a grab is activated.
    static let grab = GDK_CROSSING_GRAB /* 1 */
    /// crossing because a grab is deactivated.
    static let ungrab = GDK_CROSSING_UNGRAB /* 2 */
    /// crossing because a GTK+ grab is activated.
    static let gtk_grab = GDK_CROSSING_GTK_GRAB /* 3 */
    /// crossing because a GTK+ grab is deactivated.
    static let gtk_ungrab = GDK_CROSSING_GTK_UNGRAB /* 4 */
    /// crossing because a GTK+ widget changed
    ///   state (e.g. sensitivity).
    static let state_changed = GDK_CROSSING_STATE_CHANGED /* 5 */
    /// crossing because a touch sequence has begun,
    ///   this event is synthetic as the pointer might have not left the window.
    static let touch_begin = GDK_CROSSING_TOUCH_BEGIN /* 6 */
    /// crossing because a touch sequence has ended,
    ///   this event is synthetic as the pointer might have not left the window.
    static let touch_end = GDK_CROSSING_TOUCH_END /* 7 */
    /// crossing because of a device switch (i.e.
    ///   a mouse taking control of the pointer after a touch device), this event
    ///   is synthetic as the pointer didn’t leave the window.
    static let device_switch = GDK_CROSSING_DEVICE_SWITCH /* 8 */
}

/// Predefined cursors.
/// 
/// Note that these IDs are directly taken from the X cursor font, and many
/// of these cursors are either not useful, or are not available on other platforms.
/// 
/// The recommended way to create cursors is to use gdk_cursor_new_from_name().
public typealias CursorType = GdkCursorType

public extension CursorType {
    /// ![](X_cursor.png)
    static let x_cursor = GDK_X_CURSOR /* 0 */
    /// ![](arrow.png)
    static let arrow = GDK_ARROW /* 2 */
    /// ![](based_arrow_down.png)
    static let based_arrow_down = GDK_BASED_ARROW_DOWN /* 4 */
    /// ![](based_arrow_up.png)
    static let based_arrow_up = GDK_BASED_ARROW_UP /* 6 */
    /// ![](boat.png)
    static let boat = GDK_BOAT /* 8 */
    /// ![](bogosity.png)
    static let bogosity = GDK_BOGOSITY /* 10 */
    /// ![](bottom_left_corner.png)
    static let bottom_left_corner = GDK_BOTTOM_LEFT_CORNER /* 12 */
    /// ![](bottom_right_corner.png)
    static let bottom_right_corner = GDK_BOTTOM_RIGHT_CORNER /* 14 */
    /// ![](bottom_side.png)
    static let bottom_side = GDK_BOTTOM_SIDE /* 16 */
    /// ![](bottom_tee.png)
    static let bottom_tee = GDK_BOTTOM_TEE /* 18 */
    /// ![](box_spiral.png)
    static let box_spiral = GDK_BOX_SPIRAL /* 20 */
    /// ![](center_ptr.png)
    static let center_ptr = GDK_CENTER_PTR /* 22 */
    /// ![](circle.png)
    static let circle = GDK_CIRCLE /* 24 */
    /// ![](clock.png)
    static let clock = GDK_CLOCK /* 26 */
    /// ![](coffee_mug.png)
    static let coffee_mug = GDK_COFFEE_MUG /* 28 */
    /// ![](cross.png)
    static let cross = GDK_CROSS /* 30 */
    /// ![](cross_reverse.png)
    static let cross_reverse = GDK_CROSS_REVERSE /* 32 */
    /// ![](crosshair.png)
    static let crosshair = GDK_CROSSHAIR /* 34 */
    /// ![](diamond_cross.png)
    static let diamond_cross = GDK_DIAMOND_CROSS /* 36 */
    /// ![](dot.png)
    static let dot = GDK_DOT /* 38 */
    /// ![](dotbox.png)
    static let dotbox = GDK_DOTBOX /* 40 */
    /// ![](double_arrow.png)
    static let double_arrow = GDK_DOUBLE_ARROW /* 42 */
    /// ![](draft_large.png)
    static let draft_large = GDK_DRAFT_LARGE /* 44 */
    /// ![](draft_small.png)
    static let draft_small = GDK_DRAFT_SMALL /* 46 */
    /// ![](draped_box.png)
    static let draped_box = GDK_DRAPED_BOX /* 48 */
    /// ![](exchange.png)
    static let exchange = GDK_EXCHANGE /* 50 */
    /// ![](fleur.png)
    static let fleur = GDK_FLEUR /* 52 */
    /// ![](gobbler.png)
    static let gobbler = GDK_GOBBLER /* 54 */
    /// ![](gumby.png)
    static let gumby = GDK_GUMBY /* 56 */
    /// ![](hand1.png)
    static let hand1 = GDK_HAND1 /* 58 */
    /// ![](hand2.png)
    static let hand2 = GDK_HAND2 /* 60 */
    /// ![](heart.png)
    static let heart = GDK_HEART /* 62 */
    /// ![](icon.png)
    static let icon = GDK_ICON /* 64 */
    /// ![](iron_cross.png)
    static let iron_cross = GDK_IRON_CROSS /* 66 */
    /// ![](left_ptr.png)
    static let left_ptr = GDK_LEFT_PTR /* 68 */
    /// ![](left_side.png)
    static let left_side = GDK_LEFT_SIDE /* 70 */
    /// ![](left_tee.png)
    static let left_tee = GDK_LEFT_TEE /* 72 */
    /// ![](leftbutton.png)
    static let leftbutton = GDK_LEFTBUTTON /* 74 */
    /// ![](ll_angle.png)
    static let ll_angle = GDK_LL_ANGLE /* 76 */
    /// ![](lr_angle.png)
    static let lr_angle = GDK_LR_ANGLE /* 78 */
    /// ![](man.png)
    static let man = GDK_MAN /* 80 */
    /// ![](middlebutton.png)
    static let middlebutton = GDK_MIDDLEBUTTON /* 82 */
    /// ![](mouse.png)
    static let mouse = GDK_MOUSE /* 84 */
    /// ![](pencil.png)
    static let pencil = GDK_PENCIL /* 86 */
    /// ![](pirate.png)
    static let pirate = GDK_PIRATE /* 88 */
    /// ![](plus.png)
    static let plus = GDK_PLUS /* 90 */
    /// ![](question_arrow.png)
    static let question_arrow = GDK_QUESTION_ARROW /* 92 */
    /// ![](right_ptr.png)
    static let right_ptr = GDK_RIGHT_PTR /* 94 */
    /// ![](right_side.png)
    static let right_side = GDK_RIGHT_SIDE /* 96 */
    /// ![](right_tee.png)
    static let right_tee = GDK_RIGHT_TEE /* 98 */
    /// ![](rightbutton.png)
    static let rightbutton = GDK_RIGHTBUTTON /* 100 */
    /// ![](rtl_logo.png)
    static let rtl_logo = GDK_RTL_LOGO /* 102 */
    /// ![](sailboat.png)
    static let sailboat = GDK_SAILBOAT /* 104 */
    /// ![](sb_down_arrow.png)
    static let sb_down_arrow = GDK_SB_DOWN_ARROW /* 106 */
    /// ![](sb_h_double_arrow.png)
    static let sb_h_double_arrow = GDK_SB_H_DOUBLE_ARROW /* 108 */
    /// ![](sb_left_arrow.png)
    static let sb_left_arrow = GDK_SB_LEFT_ARROW /* 110 */
    /// ![](sb_right_arrow.png)
    static let sb_right_arrow = GDK_SB_RIGHT_ARROW /* 112 */
    /// ![](sb_up_arrow.png)
    static let sb_up_arrow = GDK_SB_UP_ARROW /* 114 */
    /// ![](sb_v_double_arrow.png)
    static let sb_v_double_arrow = GDK_SB_V_DOUBLE_ARROW /* 116 */
    /// ![](shuttle.png)
    static let shuttle = GDK_SHUTTLE /* 118 */
    /// ![](sizing.png)
    static let sizing = GDK_SIZING /* 120 */
    /// ![](spider.png)
    static let spider = GDK_SPIDER /* 122 */
    /// ![](spraycan.png)
    static let spraycan = GDK_SPRAYCAN /* 124 */
    /// ![](star.png)
    static let star = GDK_STAR /* 126 */
    /// ![](target.png)
    static let target = GDK_TARGET /* 128 */
    /// ![](tcross.png)
    static let tcross = GDK_TCROSS /* 130 */
    /// ![](top_left_arrow.png)
    static let top_left_arrow = GDK_TOP_LEFT_ARROW /* 132 */
    /// ![](top_left_corner.png)
    static let top_left_corner = GDK_TOP_LEFT_CORNER /* 134 */
    /// ![](top_right_corner.png)
    static let top_right_corner = GDK_TOP_RIGHT_CORNER /* 136 */
    /// ![](top_side.png)
    static let top_side = GDK_TOP_SIDE /* 138 */
    /// ![](top_tee.png)
    static let top_tee = GDK_TOP_TEE /* 140 */
    /// ![](trek.png)
    static let trek = GDK_TREK /* 142 */
    /// ![](ul_angle.png)
    static let ul_angle = GDK_UL_ANGLE /* 144 */
    /// ![](umbrella.png)
    static let umbrella = GDK_UMBRELLA /* 146 */
    /// ![](ur_angle.png)
    static let ur_angle = GDK_UR_ANGLE /* 148 */
    /// ![](watch.png)
    static let watch = GDK_WATCH /* 150 */
    /// ![](xterm.png)
    static let xterm = GDK_XTERM /* 152 */
    /// last cursor type
    static let last_cursor = GDK_LAST_CURSOR /* 153 */
    /// Blank cursor. Since 2.16
    static let blank_cursor = GDK_BLANK_CURSOR /* -2 */
    /// type of cursors constructed with
    ///   gdk_cursor_new_from_pixbuf()
    static let cursor_is_pixmap = GDK_CURSOR_IS_PIXMAP /* -1 */
}

/// A pad feature.
public typealias DevicePadFeature = GdkDevicePadFeature

public extension DevicePadFeature {
    /// a button
    static let button = GDK_DEVICE_PAD_FEATURE_BUTTON /* 0 */
    /// a ring-shaped interactive area
    static let ring = GDK_DEVICE_PAD_FEATURE_RING /* 1 */
    /// a straight interactive area
    static let strip = GDK_DEVICE_PAD_FEATURE_STRIP /* 2 */
}

/// Indicates the specific type of tool being used being a tablet. Such as an
/// airbrush, pencil, etc.
public typealias DeviceToolType = GdkDeviceToolType

public extension DeviceToolType {
    /// Tool is of an unknown type.
    static let unknown = GDK_DEVICE_TOOL_TYPE_UNKNOWN /* 0 */
    /// Tool is a standard tablet stylus.
    static let pen = GDK_DEVICE_TOOL_TYPE_PEN /* 1 */
    /// Tool is standard tablet eraser.
    static let eraser = GDK_DEVICE_TOOL_TYPE_ERASER /* 2 */
    /// Tool is a brush stylus.
    static let brush = GDK_DEVICE_TOOL_TYPE_BRUSH /* 3 */
    /// Tool is a pencil stylus.
    static let pencil = GDK_DEVICE_TOOL_TYPE_PENCIL /* 4 */
    /// Tool is an airbrush stylus.
    static let airbrush = GDK_DEVICE_TOOL_TYPE_AIRBRUSH /* 5 */
    /// Tool is a mouse.
    static let mouse = GDK_DEVICE_TOOL_TYPE_MOUSE /* 6 */
    /// Tool is a lens cursor.
    static let lens = GDK_DEVICE_TOOL_TYPE_LENS /* 7 */
}

/// Indicates the device type. See [above][GdkDeviceManager.description]
/// for more information about the meaning of these device types.
public typealias DeviceType = GdkDeviceType

public extension DeviceType {
    /// Device is a master (or virtual) device. There will
    ///                          be an associated focus indicator on the screen.
    static let master = GDK_DEVICE_TYPE_MASTER /* 0 */
    /// Device is a slave (or physical) device.
    static let slave = GDK_DEVICE_TYPE_SLAVE /* 1 */
    /// Device is a physical device, currently not attached to
    ///                            any virtual device.
    static let floating = GDK_DEVICE_TYPE_FLOATING /* 2 */
}

/// Used in `GdkDragContext` to the reason of a cancelled DND operation.
public typealias DragCancelReason = GdkDragCancelReason

public extension DragCancelReason {
    /// There is no suitable drop target.
    static let no_target = GDK_DRAG_CANCEL_NO_TARGET /* 0 */
    /// Drag cancelled by the user
    static let user_cancelled = GDK_DRAG_CANCEL_USER_CANCELLED /* 1 */
    /// Unspecified error.
    static let error = GDK_DRAG_CANCEL_ERROR /* 2 */
}

/// Used in `GdkDragContext` to indicate the protocol according to
/// which DND is done.
public typealias Drag_Protocol = GdkDragProtocol

public extension Drag_Protocol {
    /// no protocol.
    static let none_ = GDK_DRAG_PROTO_NONE /* 0 */
    /// The Motif DND protocol. No longer supported
    static let motif = GDK_DRAG_PROTO_MOTIF /* 1 */
    /// The Xdnd protocol.
    static let xdnd = GDK_DRAG_PROTO_XDND /* 2 */
    /// An extension to the Xdnd protocol for
    ///  unclaimed root window drops.
    static let rootwin = GDK_DRAG_PROTO_ROOTWIN /* 3 */
    /// The simple WM_DROPFILES protocol.
    static let win32_dropfiles = GDK_DRAG_PROTO_WIN32_DROPFILES /* 4 */
    /// The complex OLE2 DND protocol (not implemented).
    static let ole2 = GDK_DRAG_PROTO_OLE2 /* 5 */
    /// Intra-application DND.
    static let local = GDK_DRAG_PROTO_LOCAL /* 6 */
    /// Wayland DND protocol.
    static let wayland = GDK_DRAG_PROTO_WAYLAND /* 7 */
}

/// Specifies the type of the event.
/// 
/// Do not confuse these events with the signals that GTK+ widgets emit.
/// Although many of these events result in corresponding signals being emitted,
/// the events are often transformed or filtered along the way.
/// 
/// In some language bindings, the values `GDK_2BUTTON_PRESS` and
/// `GDK_3BUTTON_PRESS` would translate into something syntactically
/// invalid (eg `Gdk.EventType.2ButtonPress`, where a
/// symbol is not allowed to start with a number). In that case, the
/// aliases `GDK_DOUBLE_BUTTON_PRESS` and `GDK_TRIPLE_BUTTON_PRESS` can
/// be used instead.
public typealias EventType = GdkEventType

public extension EventType {
    /// a special code to indicate a null event.
    static let nothing = GDK_NOTHING /* -1 */
    /// the window manager has requested that the toplevel window be
    ///   hidden or destroyed, usually when the user clicks on a special icon in the
    ///   title bar.
    static let delete = GDK_DELETE /* 0 */
    /// the window has been destroyed.
    static let destroy = GDK_DESTROY /* 1 */
    /// all or part of the window has become visible and needs to be
    ///   redrawn.
    static let expose = GDK_EXPOSE /* 2 */
    /// the pointer (usually a mouse) has moved.
    static let motion_notify = GDK_MOTION_NOTIFY /* 3 */
    /// a mouse button has been pressed.
    static let button_press = GDK_BUTTON_PRESS /* 4 */
    /// a mouse button has been double-clicked (clicked twice
    ///   within a short period of time). Note that each click also generates a
    ///   `GDK_BUTTON_PRESS` event.
    static let _2button_press = GDK_2BUTTON_PRESS /* 5 */
    /// alias for `GDK_2BUTTON_PRESS`, added in 3.6.
    static let double_button_press = GDK_DOUBLE_BUTTON_PRESS /* 5 */
    /// a mouse button has been clicked 3 times in a short period
    ///   of time. Note that each click also generates a `GDK_BUTTON_PRESS` event.
    static let _3button_press = GDK_3BUTTON_PRESS /* 6 */
    /// alias for `GDK_3BUTTON_PRESS`, added in 3.6.
    static let triple_button_press = GDK_TRIPLE_BUTTON_PRESS /* 6 */
    /// a mouse button has been released.
    static let button_release = GDK_BUTTON_RELEASE /* 7 */
    /// a key has been pressed.
    static let key_press = GDK_KEY_PRESS /* 8 */
    /// a key has been released.
    static let key_release = GDK_KEY_RELEASE /* 9 */
    /// the pointer has entered the window.
    static let enter_notify = GDK_ENTER_NOTIFY /* 10 */
    /// the pointer has left the window.
    static let leave_notify = GDK_LEAVE_NOTIFY /* 11 */
    /// the keyboard focus has entered or left the window.
    static let focus_change = GDK_FOCUS_CHANGE /* 12 */
    /// the size, position or stacking order of the window has changed.
    ///   Note that GTK+ discards these events for `GDK_WINDOW_CHILD` windows.
    static let configure = GDK_CONFIGURE /* 13 */
    /// the window has been mapped.
    static let map = GDK_MAP /* 14 */
    /// the window has been unmapped.
    static let unmap = GDK_UNMAP /* 15 */
    /// a property on the window has been changed or deleted.
    static let property_notify = GDK_PROPERTY_NOTIFY /* 16 */
    /// the application has lost ownership of a selection.
    static let selection_clear = GDK_SELECTION_CLEAR /* 17 */
    /// another application has requested a selection.
    static let selection_request = GDK_SELECTION_REQUEST /* 18 */
    /// a selection has been received.
    static let selection_notify = GDK_SELECTION_NOTIFY /* 19 */
    /// an input device has moved into contact with a sensing
    ///   surface (e.g. a touchscreen or graphics tablet).
    static let proximity_in = GDK_PROXIMITY_IN /* 20 */
    /// an input device has moved out of contact with a sensing
    ///   surface.
    static let proximity_out = GDK_PROXIMITY_OUT /* 21 */
    /// the mouse has entered the window while a drag is in progress.
    static let drag_enter = GDK_DRAG_ENTER /* 22 */
    /// the mouse has left the window while a drag is in progress.
    static let drag_leave = GDK_DRAG_LEAVE /* 23 */
    /// the mouse has moved in the window while a drag is in
    ///   progress.
    static let drag_motion = GDK_DRAG_MOTION /* 24 */
    /// the status of the drag operation initiated by the window
    ///   has changed.
    static let drag_status = GDK_DRAG_STATUS /* 25 */
    /// a drop operation onto the window has started.
    static let drop_start = GDK_DROP_START /* 26 */
    /// the drop operation initiated by the window has completed.
    static let drop_finished = GDK_DROP_FINISHED /* 27 */
    /// a message has been received from another application.
    static let client_event = GDK_CLIENT_EVENT /* 28 */
    /// the window visibility status has changed.
    static let visibility_notify = GDK_VISIBILITY_NOTIFY /* 29 */
    /// the scroll wheel was turned
    static let scroll = GDK_SCROLL /* 31 */
    /// the state of a window has changed. See `GdkWindowState`
    ///   for the possible window states
    static let window_state = GDK_WINDOW_STATE /* 32 */
    /// a setting has been modified.
    static let setting = GDK_SETTING /* 33 */
    /// the owner of a selection has changed. This event type
    ///   was added in 2.6
    static let owner_change = GDK_OWNER_CHANGE /* 34 */
    /// a pointer or keyboard grab was broken. This event type
    ///   was added in 2.8.
    static let grab_broken = GDK_GRAB_BROKEN /* 35 */
    /// the content of the window has been changed. This event type
    ///   was added in 2.14.
    static let damage = GDK_DAMAGE /* 36 */
    /// A new touch event sequence has just started. This event
    ///   type was added in 3.4.
    static let touch_begin = GDK_TOUCH_BEGIN /* 37 */
    /// A touch event sequence has been updated. This event type
    ///   was added in 3.4.
    static let touch_update = GDK_TOUCH_UPDATE /* 38 */
    /// A touch event sequence has finished. This event type
    ///   was added in 3.4.
    static let touch_end = GDK_TOUCH_END /* 39 */
    /// A touch event sequence has been canceled. This event type
    ///   was added in 3.4.
    static let touch_cancel = GDK_TOUCH_CANCEL /* 40 */
    /// A touchpad swipe gesture event, the current state
    ///   is determined by its phase field. This event type was added in 3.18.
    static let touchpad_swipe = GDK_TOUCHPAD_SWIPE /* 41 */
    /// A touchpad pinch gesture event, the current state
    ///   is determined by its phase field. This event type was added in 3.18.
    static let touchpad_pinch = GDK_TOUCHPAD_PINCH /* 42 */
    /// A tablet pad button press event. This event type
    ///   was added in 3.22.
    static let pad_button_press = GDK_PAD_BUTTON_PRESS /* 43 */
    /// A tablet pad button release event. This event type
    ///   was added in 3.22.
    static let pad_button_release = GDK_PAD_BUTTON_RELEASE /* 44 */
    /// A tablet pad axis event from a "ring". This event type was
    ///   added in 3.22.
    static let pad_ring = GDK_PAD_RING /* 45 */
    /// A tablet pad axis event from a "strip". This event type was
    ///   added in 3.22.
    static let pad_strip = GDK_PAD_STRIP /* 46 */
    /// A tablet pad group mode change. This event type was
    ///   added in 3.22.
    static let pad_group_mode = GDK_PAD_GROUP_MODE /* 47 */
    /// marks the end of the GdkEventType enumeration. Added in 2.18
    static let event_last = GDK_EVENT_LAST /* 48 */
}

/// Specifies the result of applying a `GdkFilterFunc` to a native event.
public typealias FilterReturn = GdkFilterReturn

public extension FilterReturn {
    /// event not handled, continue processing.
    static let continue_ = GDK_FILTER_CONTINUE /* 0 */
    /// native event translated into a GDK event and stored
    ///  in the `event` structure that was passed in.
    static let translate = GDK_FILTER_TRANSLATE /* 1 */
    /// event handled, terminate processing.
    static let remove = GDK_FILTER_REMOVE /* 2 */
}

/// Indicates which monitor (in a multi-head setup) a window should span over
/// when in fullscreen mode.
public typealias FullscreenMode = GdkFullscreenMode

public extension FullscreenMode {
    /// Fullscreen on current monitor only.
    static let current_monitor = GDK_FULLSCREEN_ON_CURRENT_MONITOR /* 0 */
    /// Span across all monitors when fullscreen.
    static let all_monitors = GDK_FULLSCREEN_ON_ALL_MONITORS /* 1 */
}

/// Error enumeration for `GdkGLContext`.
public typealias GLError = GdkGLError

public extension GLError {
    /// OpenGL support is not available
    static let not_available = GDK_GL_ERROR_NOT_AVAILABLE /* 0 */
    /// The requested visual format is not supported
    static let unsupported_format = GDK_GL_ERROR_UNSUPPORTED_FORMAT /* 1 */
    /// The requested profile is not supported
    static let unsupported_profile = GDK_GL_ERROR_UNSUPPORTED_PROFILE /* 2 */
}

/// Defines how device grabs interact with other devices.
public typealias GrabOwnership = GdkGrabOwnership

public extension GrabOwnership {
    /// All other devices’ events are allowed.
    static let none_ = GDK_OWNERSHIP_NONE /* 0 */
    /// Other devices’ events are blocked for the grab window.
    static let window = GDK_OWNERSHIP_WINDOW /* 1 */
    /// Other devices’ events are blocked for the whole application.
    static let application = GDK_OWNERSHIP_APPLICATION /* 2 */
}

/// Returned by gdk_device_grab(), gdk_pointer_grab() and gdk_keyboard_grab() to
/// indicate success or the reason for the failure of the grab attempt.
public typealias GrabStatus = GdkGrabStatus

public extension GrabStatus {
    /// the resource was successfully grabbed.
    static let success = GDK_GRAB_SUCCESS /* 0 */
    /// the resource is actively grabbed by another client.
    static let already_grabbed = GDK_GRAB_ALREADY_GRABBED /* 1 */
    /// the resource was grabbed more recently than the
    ///  specified time.
    static let invalid_time = GDK_GRAB_INVALID_TIME /* 2 */
    /// the grab window or the `confine_to` window are not
    ///  viewable.
    static let not_viewable = GDK_GRAB_NOT_VIEWABLE /* 3 */
    /// the resource is frozen by an active grab of another client.
    static let frozen = GDK_GRAB_FROZEN /* 4 */
    /// the grab failed for some other reason. Since 3.16
    static let failed = GDK_GRAB_FAILED /* 5 */
}

/// Defines the reference point of a window and the meaning of coordinates
/// passed to gtk_window_move(). See gtk_window_move() and the "implementation
/// notes" section of the
/// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
/// specification for more details.
public typealias Gravity = GdkGravity

public extension Gravity {
    /// the reference point is at the top left corner.
    static let north_west = GDK_GRAVITY_NORTH_WEST /* 1 */
    /// the reference point is in the middle of the top edge.
    static let north = GDK_GRAVITY_NORTH /* 2 */
    /// the reference point is at the top right corner.
    static let north_east = GDK_GRAVITY_NORTH_EAST /* 3 */
    /// the reference point is at the middle of the left edge.
    static let west = GDK_GRAVITY_WEST /* 4 */
    /// the reference point is at the center of the window.
    static let center = GDK_GRAVITY_CENTER /* 5 */
    /// the reference point is at the middle of the right edge.
    static let east = GDK_GRAVITY_EAST /* 6 */
    /// the reference point is at the lower left corner.
    static let south_west = GDK_GRAVITY_SOUTH_WEST /* 7 */
    /// the reference point is at the middle of the lower edge.
    static let south = GDK_GRAVITY_SOUTH /* 8 */
    /// the reference point is at the lower right corner.
    static let south_east = GDK_GRAVITY_SOUTH_EAST /* 9 */
    /// the reference point is at the top left corner of the
    ///  window itself, ignoring window manager decorations.
    static let static_ = GDK_GRAVITY_STATIC /* 10 */
}

/// An enumeration that describes the mode of an input device.
public typealias InputMode = GdkInputMode

public extension InputMode {
    /// the device is disabled and will not report any events.
    static let disabled = GDK_MODE_DISABLED /* 0 */
    /// the device is enabled. The device’s coordinate space
    ///                   maps to the entire screen.
    static let screen = GDK_MODE_SCREEN /* 1 */
    /// the device is enabled. The device’s coordinate space
    ///                   is mapped to a single window. The manner in which this window
    ///                   is chosen is undefined, but it will typically be the same
    ///                   way in which the focus window for key events is determined.
    static let window = GDK_MODE_WINDOW /* 2 */
}

/// An enumeration describing the type of an input device in general terms.
public typealias InputSource = GdkInputSource

public extension InputSource {
    /// the device is a mouse. (This will be reported for the core
    ///                    pointer, even if it is something else, such as a trackball.)
    static let mouse = GDK_SOURCE_MOUSE /* 0 */
    /// the device is a stylus of a graphics tablet or similar device.
    static let pen = GDK_SOURCE_PEN /* 1 */
    /// the device is an eraser. Typically, this would be the other end
    ///                     of a stylus on a graphics tablet.
    static let eraser = GDK_SOURCE_ERASER /* 2 */
    /// the device is a graphics tablet “puck” or similar device.
    static let cursor = GDK_SOURCE_CURSOR /* 3 */
    /// the device is a keyboard.
    static let keyboard = GDK_SOURCE_KEYBOARD /* 4 */
    /// the device is a direct-input touch device, such
    ///     as a touchscreen or tablet. This device type has been added in 3.4.
    static let touchscreen = GDK_SOURCE_TOUCHSCREEN /* 5 */
    /// the device is an indirect touch device, such
    ///     as a touchpad. This device type has been added in 3.4.
    static let touchpad = GDK_SOURCE_TOUCHPAD /* 6 */
    /// the device is a trackpoint. This device type has been
    ///     added in 3.22
    static let trackpoint = GDK_SOURCE_TRACKPOINT /* 7 */
    /// the device is a "pad", a collection of buttons,
    ///     rings and strips found in drawing tablets. This device type has been
    ///     added in 3.22.
    static let tablet_pad = GDK_SOURCE_TABLET_PAD /* 8 */
}

/// This enum is used with gdk_keymap_get_modifier_mask()
/// in order to determine what modifiers the
/// currently used windowing system backend uses for particular
/// purposes. For example, on X11/Windows, the Control key is used for
/// invoking menu shortcuts (accelerators), whereas on Apple computers
/// it’s the Command key (which correspond to `GDK_CONTROL_MASK` and
/// `GDK_MOD2_MASK`, respectively).
public typealias ModifierIntent = GdkModifierIntent

public extension ModifierIntent {
    /// the primary modifier used to invoke
    ///  menu accelerators.
    static let primary_accelerator = GDK_MODIFIER_INTENT_PRIMARY_ACCELERATOR /* 0 */
    /// the modifier used to invoke context menus.
    ///  Note that mouse button 3 always triggers context menus. When this modifier
    ///  is not 0, it additionally triggers context menus when used with mouse button 1.
    static let context_menu = GDK_MODIFIER_INTENT_CONTEXT_MENU /* 1 */
    /// the modifier used to extend selections
    ///  using `modifier`-click or `modifier`-cursor-key
    static let extend_selection = GDK_MODIFIER_INTENT_EXTEND_SELECTION /* 2 */
    /// the modifier used to modify selections,
    ///  which in most cases means toggling the clicked item into or out of the selection.
    static let modify_selection = GDK_MODIFIER_INTENT_MODIFY_SELECTION /* 3 */
    /// when any of these modifiers is pressed, the
    ///  key event cannot produce a symbol directly. This is meant to be used for
    ///  input methods, and for use cases like typeahead search.
    static let no_text_input = GDK_MODIFIER_INTENT_NO_TEXT_INPUT /* 4 */
    /// the modifier that switches between keyboard
    ///  groups (AltGr on X11/Windows and Option/Alt on OS X).
    static let shift_group = GDK_MODIFIER_INTENT_SHIFT_GROUP /* 5 */
    /// The set of modifier masks accepted
    /// as modifiers in accelerators. Needed because Command is mapped to MOD2 on
    /// OSX, which is widely used, but on X11 MOD2 is NumLock and using that for a
    /// mod key is problematic at best.
    /// Ref: https://bugzilla.gnome.org/show_bug.cgi?id=736125.
    static let default_mod_mask = GDK_MODIFIER_INTENT_DEFAULT_MOD_MASK /* 6 */
}

/// Specifies the kind of crossing for `GdkEventCrossing`.
/// 
/// See the X11 protocol specification of LeaveNotify for
/// full details of crossing event generation.
public typealias NotifyType = GdkNotifyType

public extension NotifyType {
    /// the window is entered from an ancestor or
    ///   left towards an ancestor.
    static let ancestor = GDK_NOTIFY_ANCESTOR /* 0 */
    /// the pointer moves between an ancestor and an
    ///   inferior of the window.
    static let virtual = GDK_NOTIFY_VIRTUAL /* 1 */
    /// the window is entered from an inferior or
    ///   left towards an inferior.
    static let inferior = GDK_NOTIFY_INFERIOR /* 2 */
    /// the window is entered from or left towards
    ///   a window which is neither an ancestor nor an inferior.
    static let nonlinear = GDK_NOTIFY_NONLINEAR /* 3 */
    /// the pointer moves between two windows
    ///   which are not ancestors of each other and the window is part of
    ///   the ancestor chain between one of these windows and their least
    ///   common ancestor.
    static let nonlinear_virtual = GDK_NOTIFY_NONLINEAR_VIRTUAL /* 4 */
    /// an unknown type of enter/leave event occurred.
    static let unknown = GDK_NOTIFY_UNKNOWN /* 5 */
}

/// Specifies why a selection ownership was changed.
public typealias OwnerChange = GdkOwnerChange

public extension OwnerChange {
    /// some other app claimed the ownership
    static let new_owner = GDK_OWNER_CHANGE_NEW_OWNER /* 0 */
    /// the window was destroyed
    static let destroy = GDK_OWNER_CHANGE_DESTROY /* 1 */
    /// the client was closed
    static let close = GDK_OWNER_CHANGE_CLOSE /* 2 */
}

/// Describes how existing data is combined with new data when
/// using gdk_property_change().
public typealias PropMode = GdkPropMode

public extension PropMode {
    /// the new data replaces the existing data.
    static let replace = GDK_PROP_MODE_REPLACE /* 0 */
    /// the new data is prepended to the existing data.
    static let prepend = GDK_PROP_MODE_PREPEND /* 1 */
    /// the new data is appended to the existing data.
    static let append = GDK_PROP_MODE_APPEND /* 2 */
}

/// Specifies the type of a property change for a `GdkEventProperty`.
public typealias PropertyState = GdkPropertyState

public extension PropertyState {
    /// the property value was changed.
    static let new_value = GDK_PROPERTY_NEW_VALUE /* 0 */
    /// the property was deleted.
    static let delete = GDK_PROPERTY_DELETE /* 1 */
}

/// Specifies the direction for `GdkEventScroll`.
public typealias ScrollDirection = GdkScrollDirection

public extension ScrollDirection {
    /// the window is scrolled up.
    static let up = GDK_SCROLL_UP /* 0 */
    /// the window is scrolled down.
    static let down = GDK_SCROLL_DOWN /* 1 */
    /// the window is scrolled to the left.
    static let left_ = GDK_SCROLL_LEFT /* 2 */
    /// the window is scrolled to the right.
    static let right_ = GDK_SCROLL_RIGHT /* 3 */
    /// the scrolling is determined by the delta values
    ///   in `GdkEventScroll`. See gdk_event_get_scroll_deltas(). Since: 3.4
    static let smooth = GDK_SCROLL_SMOOTH /* 4 */
}

/// Specifies the kind of modification applied to a setting in a
/// `GdkEventSetting`.
public typealias SettingAction = GdkSettingAction

public extension SettingAction {
    /// a setting was added.
    static let new = GDK_SETTING_ACTION_NEW /* 0 */
    /// a setting was changed.
    static let changed = GDK_SETTING_ACTION_CHANGED /* 1 */
    /// a setting was deleted.
    static let deleted = GDK_SETTING_ACTION_DELETED /* 2 */
}

public typealias Status = GdkStatus

public extension Status {
    static let ok = GDK_OK /* 0 */
    static let error = GDK_ERROR /* -1 */
    static let error_param = GDK_ERROR_PARAM /* -2 */
    static let error_file = GDK_ERROR_FILE /* -3 */
    static let error_mem = GDK_ERROR_MEM /* -4 */
}

/// This enumeration describes how the red, green and blue components
/// of physical pixels on an output device are laid out.
public typealias SubpixelLayout = GdkSubpixelLayout

public extension SubpixelLayout {
    /// The layout is not known
    static let unknown = GDK_SUBPIXEL_LAYOUT_UNKNOWN /* 0 */
    /// Not organized in this way
    static let none_ = GDK_SUBPIXEL_LAYOUT_NONE /* 1 */
    /// The layout is horizontal, the order is RGB
    static let horizontal_rgb = GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB /* 2 */
    /// The layout is horizontal, the order is BGR
    static let horizontal_bgr = GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR /* 3 */
    /// The layout is vertical, the order is RGB
    static let vertical_rgb = GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB /* 4 */
    /// The layout is vertical, the order is BGR
    static let vertical_bgr = GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR /* 5 */
}

/// Specifies the current state of a touchpad gesture. All gestures are
/// guaranteed to begin with an event with phase `GDK_TOUCHPAD_GESTURE_PHASE_BEGIN`,
/// followed by 0 or several events with phase `GDK_TOUCHPAD_GESTURE_PHASE_UPDATE`.
/// 
/// A finished gesture may have 2 possible outcomes, an event with phase
/// `GDK_TOUCHPAD_GESTURE_PHASE_END` will be emitted when the gesture is
/// considered successful, this should be used as the hint to perform any
/// permanent changes.
/// 
/// Cancelled gestures may be so for a variety of reasons, due to hardware
/// or the compositor, or due to the gesture recognition layers hinting the
/// gesture did not finish resolutely (eg. a 3rd finger being added during
/// a pinch gesture). In these cases, the last event will report the phase
/// `GDK_TOUCHPAD_GESTURE_PHASE_CANCEL`, this should be used as a hint
/// to undo any visible/permanent changes that were done throughout the
/// progress of the gesture.
/// 
/// See also `GdkEventTouchpadSwipe` and `GdkEventTouchpadPinch`.
public typealias TouchpadGesturePhase = GdkTouchpadGesturePhase

public extension TouchpadGesturePhase {
    /// The gesture has begun.
    static let begin = GDK_TOUCHPAD_GESTURE_PHASE_BEGIN /* 0 */
    /// The gesture has been updated.
    static let update = GDK_TOUCHPAD_GESTURE_PHASE_UPDATE /* 1 */
    /// The gesture was finished, changes
    ///   should be permanently applied.
    static let end = GDK_TOUCHPAD_GESTURE_PHASE_END /* 2 */
    /// The gesture was cancelled, all
    ///   changes should be undone.
    static let cancel = GDK_TOUCHPAD_GESTURE_PHASE_CANCEL /* 3 */
}

/// Specifies the visiblity status of a window for a `GdkEventVisibility`.
public typealias VisibilityState = GdkVisibilityState

public extension VisibilityState {
    /// the window is completely visible.
    static let unobscured = GDK_VISIBILITY_UNOBSCURED /* 0 */
    /// the window is partially visible.
    static let partial = GDK_VISIBILITY_PARTIAL /* 1 */
    /// the window is not visible at all.
    static let fully_obscured = GDK_VISIBILITY_FULLY_OBSCURED /* 2 */
}

/// A set of values that describe the manner in which the pixel values
/// for a visual are converted into RGB values for display.
public typealias VisualType = GdkVisualType

public extension VisualType {
    /// Each pixel value indexes a grayscale value
    ///     directly.
    static let static_gray = GDK_VISUAL_STATIC_GRAY /* 0 */
    /// Each pixel is an index into a color map that
    ///     maps pixel values into grayscale values. The color map can be
    ///     changed by an application.
    static let grayscale = GDK_VISUAL_GRAYSCALE /* 1 */
    /// Each pixel value is an index into a predefined,
    ///     unmodifiable color map that maps pixel values into RGB values.
    static let static_color = GDK_VISUAL_STATIC_COLOR /* 2 */
    /// Each pixel is an index into a color map that
    ///     maps pixel values into rgb values. The color map can be changed by
    ///     an application.
    static let pseudo_color = GDK_VISUAL_PSEUDO_COLOR /* 3 */
    /// Each pixel value directly contains red, green,
    ///     and blue components. Use gdk_visual_get_red_pixel_details(), etc,
    ///     to obtain information about how the components are assembled into
    ///     a pixel value.
    static let true_color = GDK_VISUAL_TRUE_COLOR /* 4 */
    /// Each pixel value contains red, green, and blue
    ///     components as for `GDK_VISUAL_TRUE_COLOR`, but the components are
    ///     mapped via a color table into the final output table instead of
    ///     being converted directly.
    static let direct_color = GDK_VISUAL_DIRECT_COLOR /* 5 */
}

/// Determines a window edge or corner.
public typealias WindowEdge = GdkWindowEdge

public extension WindowEdge {
    /// the top left corner.
    static let north_west = GDK_WINDOW_EDGE_NORTH_WEST /* 0 */
    /// the top edge.
    static let north = GDK_WINDOW_EDGE_NORTH /* 1 */
    /// the top right corner.
    static let north_east = GDK_WINDOW_EDGE_NORTH_EAST /* 2 */
    /// the left edge.
    static let west = GDK_WINDOW_EDGE_WEST /* 3 */
    /// the right edge.
    static let east = GDK_WINDOW_EDGE_EAST /* 4 */
    /// the lower left corner.
    static let south_west = GDK_WINDOW_EDGE_SOUTH_WEST /* 5 */
    /// the lower edge.
    static let south = GDK_WINDOW_EDGE_SOUTH /* 6 */
    /// the lower right corner.
    static let south_east = GDK_WINDOW_EDGE_SOUTH_EAST /* 7 */
}

/// Describes the kind of window.
public typealias WindowType = GdkWindowType

public extension WindowType {
    /// root window; this window has no parent, covers the entire
    ///  screen, and is created by the window system
    static let root = GDK_WINDOW_ROOT /* 0 */
    /// toplevel window (used to implement `GtkWindow`)
    static let toplevel = GDK_WINDOW_TOPLEVEL /* 1 */
    /// child window (used to implement e.g. `GtkEntry`)
    static let child = GDK_WINDOW_CHILD /* 2 */
    /// override redirect temporary window (used to implement
    ///  `GtkMenu`)
    static let temp = GDK_WINDOW_TEMP /* 3 */
    /// foreign window (see gdk_window_foreign_new())
    static let foreign = GDK_WINDOW_FOREIGN /* 4 */
    /// offscreen window (see
    ///  [Offscreen Windows][OFFSCREEN-WINDOWS]). Since 2.18
    static let offscreen = GDK_WINDOW_OFFSCREEN /* 5 */
    /// subsurface-based window; This window is visually
    ///  tied to a toplevel, and is moved/stacked with it. Currently this window
    ///  type is only implemented in Wayland. Since 3.14
    static let subsurface = GDK_WINDOW_SUBSURFACE /* 6 */
}

/// These are hints for the window manager that indicate what type of function
/// the window has. The window manager can use this when determining decoration
/// and behaviour of the window. The hint must be set before mapping the window.
/// 
/// See the [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
/// specification for more details about window types.
public typealias WindowTypeHint = GdkWindowTypeHint

public extension WindowTypeHint {
    /// Normal toplevel window.
    static let normal = GDK_WINDOW_TYPE_HINT_NORMAL /* 0 */
    /// Dialog window.
    static let dialog = GDK_WINDOW_TYPE_HINT_DIALOG /* 1 */
    /// Window used to implement a menu; GTK+ uses
    ///  this hint only for torn-off menus, see `GtkTearoffMenuItem`.
    static let menu = GDK_WINDOW_TYPE_HINT_MENU /* 2 */
    /// Window used to implement toolbars.
    static let toolbar = GDK_WINDOW_TYPE_HINT_TOOLBAR /* 3 */
    /// Window used to display a splash
    ///  screen during application startup.
    static let splashscreen = GDK_WINDOW_TYPE_HINT_SPLASHSCREEN /* 4 */
    /// Utility windows which are not detached
    ///  toolbars or dialogs.
    static let utility = GDK_WINDOW_TYPE_HINT_UTILITY /* 5 */
    /// Used for creating dock or panel windows.
    static let dock = GDK_WINDOW_TYPE_HINT_DOCK /* 6 */
    /// Used for creating the desktop background
    ///  window.
    static let desktop = GDK_WINDOW_TYPE_HINT_DESKTOP /* 7 */
    /// A menu that belongs to a menubar.
    static let dropdown_menu = GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU /* 8 */
    /// A menu that does not belong to a menubar,
    ///  e.g. a context menu.
    static let popup_menu = GDK_WINDOW_TYPE_HINT_POPUP_MENU /* 9 */
    /// A tooltip.
    static let tooltip = GDK_WINDOW_TYPE_HINT_TOOLTIP /* 10 */
    /// A notification - typically a “bubble”
    ///  that belongs to a status icon.
    static let notification = GDK_WINDOW_TYPE_HINT_NOTIFICATION /* 11 */
    /// A popup from a combo box.
    static let combo = GDK_WINDOW_TYPE_HINT_COMBO /* 12 */
    /// A window that is used to implement a DND cursor.
    static let dnd = GDK_WINDOW_TYPE_HINT_DND /* 13 */
}

/// `GDK_INPUT_OUTPUT` windows are the standard kind of window you might expect.
/// Such windows receive events and are also displayed on screen.
/// `GDK_INPUT_ONLY` windows are invisible; they are usually placed above other
/// windows in order to trap or filter the events. You can’t draw on
/// `GDK_INPUT_ONLY` windows.
public typealias WindowWindowClass = GdkWindowWindowClass

public extension WindowWindowClass {
    /// window for graphics and events
    static let input_output = GDK_INPUT_OUTPUT /* 0 */
    /// window for events only
    static let input_only = GDK_INPUT_ONLY /* 1 */
}
