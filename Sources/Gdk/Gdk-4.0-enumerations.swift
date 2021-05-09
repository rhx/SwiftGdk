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

/// Defines how device axes are interpreted by GTK.
/// 
/// Note that the X and Y axes are not really needed; pointer devices
/// report their location via the x/y members of events regardless. Whether
/// X and Y are present as axes depends on the GDK backend.
public typealias AxisUse = GdkAxisUse

public extension AxisUse {
    /// Cast constructor, converting any binary integer to a
    /// `AxisUse`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAxisUseInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAxisUseInt(raw))
    }
    /// the axis is ignored.
    static let ignore = GDK_AXIS_IGNORE // 0
    /// the axis is used as the x axis.
    static let x = GDK_AXIS_X // 1
    /// the axis is used as the y axis.
    static let y = GDK_AXIS_Y // 2
    /// the axis is used as the scroll x delta
    static let deltaX = GDK_AXIS_DELTA_X // 3
    /// the axis is used as the scroll y delta
    static let deltaY = GDK_AXIS_DELTA_Y // 4
    /// the axis is used for pressure information.
    static let pressure = GDK_AXIS_PRESSURE // 5
    /// the axis is used for x tilt information.
    static let xtilt = GDK_AXIS_XTILT // 6
    /// the axis is used for y tilt information.
    static let ytilt = GDK_AXIS_YTILT // 7
    /// the axis is used for wheel information.
    static let wheel = GDK_AXIS_WHEEL // 8
    /// the axis is used for pen/tablet distance information
    static let distance = GDK_AXIS_DISTANCE // 9
    /// the axis is used for pen rotation information
    static let rotation = GDK_AXIS_ROTATION // 10
    /// the axis is used for pen slider information
    static let slider = GDK_AXIS_SLIDER // 11
    /// a constant equal to the numerically highest axis value.
    static let last = GDK_AXIS_LAST // 12
}



/// Specifies the crossing mode for enter and leave events.
public typealias CrossingMode = GdkCrossingMode

public extension CrossingMode {
    /// Cast constructor, converting any binary integer to a
    /// `CrossingMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCrossingModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCrossingModeInt(raw))
    }
    /// crossing because of pointer motion.
    static let normal = GDK_CROSSING_NORMAL // 0
    /// crossing because a grab is activated.
    static let grab = GDK_CROSSING_GRAB // 1
    /// crossing because a grab is deactivated.
    static let ungrab = GDK_CROSSING_UNGRAB // 2
    /// crossing because a GTK grab is activated.
    static let gtkGrab = GDK_CROSSING_GTK_GRAB // 3
    /// crossing because a GTK grab is deactivated.
    static let gtkUngrab = GDK_CROSSING_GTK_UNGRAB // 4
    /// crossing because a GTK widget changed
    ///   state (e.g. sensitivity).
    static let stateChanged = GDK_CROSSING_STATE_CHANGED // 5
    /// crossing because a touch sequence has begun,
    ///   this event is synthetic as the pointer might have not left the surface.
    static let touchBegin = GDK_CROSSING_TOUCH_BEGIN // 6
    /// crossing because a touch sequence has ended,
    ///   this event is synthetic as the pointer might have not left the surface.
    static let touchEnd = GDK_CROSSING_TOUCH_END // 7
    /// crossing because of a device switch (i.e.
    ///   a mouse taking control of the pointer after a touch device), this event
    ///   is synthetic as the pointer didn’t leave the surface.
    static let deviceSwitch = GDK_CROSSING_DEVICE_SWITCH // 8
}



/// A pad feature.
public typealias DevicePadFeature = GdkDevicePadFeature

public extension DevicePadFeature {
    /// Cast constructor, converting any binary integer to a
    /// `DevicePadFeature`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToDevicePadFeatureInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToDevicePadFeatureInt(raw))
    }
    /// a button
    static let button = GDK_DEVICE_PAD_FEATURE_BUTTON // 0
    /// a ring-shaped interactive area
    static let ring = GDK_DEVICE_PAD_FEATURE_RING // 1
    /// a straight interactive area
    static let strip = GDK_DEVICE_PAD_FEATURE_STRIP // 2
}



/// Indicates the specific type of tool being used being a tablet. Such as an
/// airbrush, pencil, etc.
public typealias DeviceToolType = GdkDeviceToolType

public extension DeviceToolType {
    /// Cast constructor, converting any binary integer to a
    /// `DeviceToolType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToDeviceToolTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToDeviceToolTypeInt(raw))
    }
    /// Tool is of an unknown type.
    static let unknown = GDK_DEVICE_TOOL_TYPE_UNKNOWN // 0
    /// Tool is a standard tablet stylus.
    static let pen = GDK_DEVICE_TOOL_TYPE_PEN // 1
    /// Tool is standard tablet eraser.
    static let eraser = GDK_DEVICE_TOOL_TYPE_ERASER // 2
    /// Tool is a brush stylus.
    static let brush = GDK_DEVICE_TOOL_TYPE_BRUSH // 3
    /// Tool is a pencil stylus.
    static let pencil = GDK_DEVICE_TOOL_TYPE_PENCIL // 4
    /// Tool is an airbrush stylus.
    static let airbrush = GDK_DEVICE_TOOL_TYPE_AIRBRUSH // 5
    /// Tool is a mouse.
    static let mouse = GDK_DEVICE_TOOL_TYPE_MOUSE // 6
    /// Tool is a lens cursor.
    static let lens = GDK_DEVICE_TOOL_TYPE_LENS // 7
}



/// Used in `GdkDrag` to the reason of a cancelled DND operation.
public typealias DragCancelReason = GdkDragCancelReason

public extension DragCancelReason {
    /// Cast constructor, converting any binary integer to a
    /// `DragCancelReason`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToDragCancelReasonInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToDragCancelReasonInt(raw))
    }
    /// There is no suitable drop target.
    static let noTarget = GDK_DRAG_CANCEL_NO_TARGET // 0
    /// Drag cancelled by the user
    static let userCancelled = GDK_DRAG_CANCEL_USER_CANCELLED // 1
    /// Unspecified error.
    static let error = GDK_DRAG_CANCEL_ERROR // 2
}



/// Specifies the type of the event.
public typealias EventType = GdkEventType

public extension EventType {
    /// Cast constructor, converting any binary integer to a
    /// `EventType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToEventTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToEventTypeInt(raw))
    }
    /// the window manager has requested that the toplevel surface be
    ///   hidden or destroyed, usually when the user clicks on a special icon in the
    ///   title bar.
    static let delete = GDK_DELETE // 0
    /// the pointer (usually a mouse) has moved.
    static let motionNotify = GDK_MOTION_NOTIFY // 1
    /// a mouse button has been pressed.
    static let buttonPress = GDK_BUTTON_PRESS // 2
    /// a mouse button has been released.
    static let buttonRelease = GDK_BUTTON_RELEASE // 3
    /// a key has been pressed.
    static let keyPress = GDK_KEY_PRESS // 4
    /// a key has been released.
    static let keyRelease = GDK_KEY_RELEASE // 5
    /// the pointer has entered the surface.
    static let enterNotify = GDK_ENTER_NOTIFY // 6
    /// the pointer has left the surface.
    static let leaveNotify = GDK_LEAVE_NOTIFY // 7
    /// the keyboard focus has entered or left the surface.
    static let focusChange = GDK_FOCUS_CHANGE // 8
    /// an input device has moved into contact with a sensing
    ///   surface (e.g. a touchscreen or graphics tablet).
    static let proximityIn = GDK_PROXIMITY_IN // 9
    /// an input device has moved out of contact with a sensing
    ///   surface.
    static let proximityOut = GDK_PROXIMITY_OUT // 10
    /// the mouse has entered the surface while a drag is in progress.
    static let dragEnter = GDK_DRAG_ENTER // 11
    /// the mouse has left the surface while a drag is in progress.
    static let dragLeave = GDK_DRAG_LEAVE // 12
    /// the mouse has moved in the surface while a drag is in
    ///   progress.
    static let dragMotion = GDK_DRAG_MOTION // 13
    /// a drop operation onto the surface has started.
    static let dropStart = GDK_DROP_START // 14
    /// the scroll wheel was turned
    static let scroll = GDK_SCROLL // 15
    /// a pointer or keyboard grab was broken.
    static let grabBroken = GDK_GRAB_BROKEN // 16
    /// A new touch event sequence has just started.
    static let touchBegin = GDK_TOUCH_BEGIN // 17
    /// A touch event sequence has been updated.
    static let touchUpdate = GDK_TOUCH_UPDATE // 18
    /// A touch event sequence has finished.
    static let touchEnd = GDK_TOUCH_END // 19
    /// A touch event sequence has been canceled.
    static let touchCancel = GDK_TOUCH_CANCEL // 20
    /// A touchpad swipe gesture event, the current state
    ///   is determined by its phase field.
    static let touchpadSwipe = GDK_TOUCHPAD_SWIPE // 21
    /// A touchpad pinch gesture event, the current state
    ///   is determined by its phase field.
    static let touchpadPinch = GDK_TOUCHPAD_PINCH // 22
    /// A tablet pad button press event.
    static let padButtonPress = GDK_PAD_BUTTON_PRESS // 23
    /// A tablet pad button release event.
    static let padButtonRelease = GDK_PAD_BUTTON_RELEASE // 24
    /// A tablet pad axis event from a "ring".
    static let padRing = GDK_PAD_RING // 25
    /// A tablet pad axis event from a "strip".
    static let padStrip = GDK_PAD_STRIP // 26
    /// A tablet pad group mode change.
    static let padGroupMode = GDK_PAD_GROUP_MODE // 27
    /// marks the end of the GdkEventType enumeration.
    static let eventLast = GDK_EVENT_LAST // 28
}



/// Indicates which monitor a surface should span over when in fullscreen mode.
public typealias FullscreenMode = GdkFullscreenMode

public extension FullscreenMode {
    /// Cast constructor, converting any binary integer to a
    /// `FullscreenMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFullscreenModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFullscreenModeInt(raw))
    }
    /// Fullscreen on current monitor only.
    static let currentMonitor = GDK_FULLSCREEN_ON_CURRENT_MONITOR // 0
    /// Span across all monitors when fullscreen.
    static let allMonitors = GDK_FULLSCREEN_ON_ALL_MONITORS // 1
}



/// Error enumeration for `GdkGLContext`.
public typealias GLError = GdkGLError

public extension GLError {
    /// Cast constructor, converting any binary integer to a
    /// `GLError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToGLErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToGLErrorInt(raw))
    }
    /// OpenGL support is not available
    static let notAvailable = GDK_GL_ERROR_NOT_AVAILABLE // 0
    /// The requested visual format is not supported
    static let unsupportedFormat = GDK_GL_ERROR_UNSUPPORTED_FORMAT // 1
    /// The requested profile is not supported
    static let unsupportedProfile = GDK_GL_ERROR_UNSUPPORTED_PROFILE // 2
    /// The shader compilation failed
    static let compilationFailed = GDK_GL_ERROR_COMPILATION_FAILED // 3
    /// The shader linking failed
    static let linkFailed = GDK_GL_ERROR_LINK_FAILED // 4
}



/// Defines the reference point of a surface and is used in `GdkPopupLayout`.
public typealias Gravity = GdkGravity

public extension Gravity {
    /// Cast constructor, converting any binary integer to a
    /// `Gravity`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToGravityInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToGravityInt(raw))
    }
    /// the reference point is at the top left corner.
    static let northWest = GDK_GRAVITY_NORTH_WEST // 1
    /// the reference point is in the middle of the top edge.
    static let north = GDK_GRAVITY_NORTH // 2
    /// the reference point is at the top right corner.
    static let northEast = GDK_GRAVITY_NORTH_EAST // 3
    /// the reference point is at the middle of the left edge.
    static let west = GDK_GRAVITY_WEST // 4
    /// the reference point is at the center of the surface.
    static let center = GDK_GRAVITY_CENTER // 5
    /// the reference point is at the middle of the right edge.
    static let east = GDK_GRAVITY_EAST // 6
    /// the reference point is at the lower left corner.
    static let southWest = GDK_GRAVITY_SOUTH_WEST // 7
    /// the reference point is at the middle of the lower edge.
    static let south = GDK_GRAVITY_SOUTH // 8
    /// the reference point is at the lower right corner.
    static let southEast = GDK_GRAVITY_SOUTH_EAST // 9
    /// the reference point is at the top left corner of the
    ///  surface itself, ignoring window manager decorations.
    static let `static` = GDK_GRAVITY_STATIC // 10
}



/// An enumeration describing the type of an input device in general terms.
public typealias InputSource = GdkInputSource

public extension InputSource {
    /// Cast constructor, converting any binary integer to a
    /// `InputSource`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToInputSourceInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToInputSourceInt(raw))
    }
    /// the device is a mouse. (This will be reported for the core
    ///                    pointer, even if it is something else, such as a trackball.)
    static let mouse = GDK_SOURCE_MOUSE // 0
    /// the device is a stylus of a graphics tablet or similar device.
    static let pen = GDK_SOURCE_PEN // 1
    /// the device is a keyboard.
    static let keyboard = GDK_SOURCE_KEYBOARD // 2
    /// the device is a direct-input touch device, such
    ///     as a touchscreen or tablet
    static let touchscreen = GDK_SOURCE_TOUCHSCREEN // 3
    /// the device is an indirect touch device, such
    ///     as a touchpad
    static let touchpad = GDK_SOURCE_TOUCHPAD // 4
    /// the device is a trackpoint
    static let trackpoint = GDK_SOURCE_TRACKPOINT // 5
    /// the device is a "pad", a collection of buttons,
    ///     rings and strips found in drawing tablets
    static let tabletPad = GDK_SOURCE_TABLET_PAD // 6
}



/// Describes how well an event matches a given keyval and modifiers.
/// 
/// `GdkKeyMatch` values are returned by [method`Gdk.KeyEvent.matches`].
public typealias KeyMatch = GdkKeyMatch

public extension KeyMatch {
    /// Cast constructor, converting any binary integer to a
    /// `KeyMatch`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToKeyMatchInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToKeyMatchInt(raw))
    }
    /// The key event does not match
    static let `none` = GDK_KEY_MATCH_NONE // 0
    /// The key event matches if keyboard state
    ///     (specifically, the currently active group) is ignored
    static let partial = GDK_KEY_MATCH_PARTIAL // 1
    /// The key event matches
    static let exact = GDK_KEY_MATCH_EXACT // 2
}



/// `GdkMemoryFormat` describes a format that bytes can have in memory.
/// 
/// It describes formats by listing the contents of the memory passed to it.
/// So GDK_MEMORY_A8R8G8B8 will be 1 byte (8 bits) of alpha, followed by a
/// byte each of red, green and blue. It is not endian-dependent, so
/// CAIRO_FORMAT_ARGB32 is represented by different `GdkMemoryFormats`
/// on architectures with different endiannesses.
/// 
/// Its naming is modelled after VkFormat (see
/// https://www.khronos.org/registry/vulkan/specs/1.0/html/vkspec.html`VkFormat`
/// for details).
public typealias MemoryFormat = GdkMemoryFormat

public extension MemoryFormat {
    /// Cast constructor, converting any binary integer to a
    /// `MemoryFormat`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMemoryFormatInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMemoryFormatInt(raw))
    }
    /// 4 bytes; for blue, green, red, alpha.
    ///     The color values are premultiplied with the alpha value.
    static let b8g8r8a8Premultiplied = GDK_MEMORY_B8G8R8A8_PREMULTIPLIED // 0
    /// 4 bytes; for alpha, red, green, blue.
    ///     The color values are premultiplied with the alpha value.
    static let a8r8g8b8Premultiplied = GDK_MEMORY_A8R8G8B8_PREMULTIPLIED // 1
    /// 4 bytes; for red, green, blue, alpha
    ///     The color values are premultiplied with the alpha value.
    static let r8g8b8a8Premultiplied = GDK_MEMORY_R8G8B8A8_PREMULTIPLIED // 2
    /// 4 bytes; for blue, green, red, alpha.
    static let b8g8r8a8 = GDK_MEMORY_B8G8R8A8 // 3
    /// 4 bytes; for alpha, red, green, blue.
    static let a8r8g8b8 = GDK_MEMORY_A8R8G8B8 // 4
    /// 4 bytes; for red, green, blue, alpha.
    static let r8g8b8a8 = GDK_MEMORY_R8G8B8A8 // 5
    /// 4 bytes; for alpha, blue, green, red.
    static let a8b8g8r8 = GDK_MEMORY_A8B8G8R8 // 6
    /// 3 bytes; for red, green, blue. The data is opaque.
    static let r8g8b8 = GDK_MEMORY_R8G8B8 // 7
    /// 3 bytes; for blue, green, red. The data is opaque.
    static let b8g8r8 = GDK_MEMORY_B8G8R8 // 8
    /// The number of formats. This value will change as
    ///     more formats get added, so do not rely on its concrete integer.
    static let nFormats = GDK_MEMORY_N_FORMATS // 9
}



/// Specifies the kind of crossing for enter and leave events.
/// 
/// See the X11 protocol specification of LeaveNotify for
/// full details of crossing event generation.
public typealias NotifyType = GdkNotifyType

public extension NotifyType {
    /// Cast constructor, converting any binary integer to a
    /// `NotifyType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToNotifyTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToNotifyTypeInt(raw))
    }
    /// the surface is entered from an ancestor or
    ///   left towards an ancestor.
    static let ancestor = GDK_NOTIFY_ANCESTOR // 0
    /// the pointer moves between an ancestor and an
    ///   inferior of the surface.
    static let virtual = GDK_NOTIFY_VIRTUAL // 1
    /// the surface is entered from an inferior or
    ///   left towards an inferior.
    static let inferior = GDK_NOTIFY_INFERIOR // 2
    /// the surface is entered from or left towards
    ///   a surface which is neither an ancestor nor an inferior.
    static let nonlinear = GDK_NOTIFY_NONLINEAR // 3
    /// the pointer moves between two surfaces
    ///   which are not ancestors of each other and the surface is part of
    ///   the ancestor chain between one of these surfaces and their least
    ///   common ancestor.
    static let nonlinearVirtual = GDK_NOTIFY_NONLINEAR_VIRTUAL // 4
    /// an unknown type of enter/leave event occurred.
    static let unknown = GDK_NOTIFY_UNKNOWN // 5
}



/// Specifies the direction for scroll events.
public typealias ScrollDirection = GdkScrollDirection

public extension ScrollDirection {
    /// Cast constructor, converting any binary integer to a
    /// `ScrollDirection`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToScrollDirectionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToScrollDirectionInt(raw))
    }
    /// the surface is scrolled up.
    static let up = GDK_SCROLL_UP // 0
    /// the surface is scrolled down.
    static let down = GDK_SCROLL_DOWN // 1
    /// the surface is scrolled to the left.
    static let `left` = GDK_SCROLL_LEFT // 2
    /// the surface is scrolled to the right.
    static let `right` = GDK_SCROLL_RIGHT // 3
    /// the scrolling is determined by the delta values
    ///   in scroll events. See `gdk_scroll_event_get_deltas()`
    static let smooth = GDK_SCROLL_SMOOTH // 4
}



/// This enumeration describes how the red, green and blue components
/// of physical pixels on an output device are laid out.
public typealias SubpixelLayout = GdkSubpixelLayout

public extension SubpixelLayout {
    /// Cast constructor, converting any binary integer to a
    /// `SubpixelLayout`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSubpixelLayoutInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSubpixelLayoutInt(raw))
    }
    /// The layout is not known
    static let unknown = GDK_SUBPIXEL_LAYOUT_UNKNOWN // 0
    /// Not organized in this way
    static let `none` = GDK_SUBPIXEL_LAYOUT_NONE // 1
    /// The layout is horizontal, the order is RGB
    static let horizontalRgb = GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB // 2
    /// The layout is horizontal, the order is BGR
    static let horizontalBgr = GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR // 3
    /// The layout is vertical, the order is RGB
    static let verticalRgb = GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB // 4
    /// The layout is vertical, the order is BGR
    static let verticalBgr = GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR // 5
}



/// Determines a surface edge or corner.
public typealias SurfaceEdge = GdkSurfaceEdge

public extension SurfaceEdge {
    /// Cast constructor, converting any binary integer to a
    /// `SurfaceEdge`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSurfaceEdgeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSurfaceEdgeInt(raw))
    }
    /// the top left corner.
    static let northWest = GDK_SURFACE_EDGE_NORTH_WEST // 0
    /// the top edge.
    static let north = GDK_SURFACE_EDGE_NORTH // 1
    /// the top right corner.
    static let northEast = GDK_SURFACE_EDGE_NORTH_EAST // 2
    /// the left edge.
    static let west = GDK_SURFACE_EDGE_WEST // 3
    /// the right edge.
    static let east = GDK_SURFACE_EDGE_EAST // 4
    /// the lower left corner.
    static let southWest = GDK_SURFACE_EDGE_SOUTH_WEST // 5
    /// the lower edge.
    static let south = GDK_SURFACE_EDGE_SOUTH // 6
    /// the lower right corner.
    static let southEast = GDK_SURFACE_EDGE_SOUTH_EAST // 7
}



/// Specifies the current state of a touchpad gesture.
/// 
/// All gestures are guaranteed to begin with an event with phase
/// `GDK_TOUCHPAD_GESTURE_PHASE_BEGIN`, followed by 0 or several events
/// with phase `GDK_TOUCHPAD_GESTURE_PHASE_UPDATE`.
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
public typealias TouchpadGesturePhase = GdkTouchpadGesturePhase

public extension TouchpadGesturePhase {
    /// Cast constructor, converting any binary integer to a
    /// `TouchpadGesturePhase`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTouchpadGesturePhaseInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTouchpadGesturePhaseInt(raw))
    }
    /// The gesture has begun.
    static let begin = GDK_TOUCHPAD_GESTURE_PHASE_BEGIN // 0
    /// The gesture has been updated.
    static let update = GDK_TOUCHPAD_GESTURE_PHASE_UPDATE // 1
    /// The gesture was finished, changes
    ///   should be permanently applied.
    static let end = GDK_TOUCHPAD_GESTURE_PHASE_END // 2
    /// The gesture was cancelled, all
    ///   changes should be undone.
    static let cancel = GDK_TOUCHPAD_GESTURE_PHASE_CANCEL // 3
}



/// Error enumeration for `GdkVulkanContext`.
public typealias VulkanError = GdkVulkanError

public extension VulkanError {
    /// Cast constructor, converting any binary integer to a
    /// `VulkanError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToVulkanErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToVulkanErrorInt(raw))
    }
    /// Vulkan is not supported on this backend or has not been
    ///     compiled in.
    static let unsupported = GDK_VULKAN_ERROR_UNSUPPORTED // 0
    /// Vulkan support is not available on this Surface
    static let notAvailable = GDK_VULKAN_ERROR_NOT_AVAILABLE // 1
}

