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
public struct AnchorHints: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkAnchorHints` enum value
    @inlinable public var value: GdkAnchorHints {
        get {
            func castToGdkAnchorHintsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkAnchorHints(rawValue: castToGdkAnchorHintsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkAnchorHints` enum value
    @inlinable public init(_ enumValue: GdkAnchorHints) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// allow flipping anchors horizontally
    public static let flipX = AnchorHints(1) // GDK_ANCHOR_FLIP_X
    /// allow flipping anchors vertically
    public static let flipY = AnchorHints(2) // GDK_ANCHOR_FLIP_Y
    /// allow sliding window horizontally
    public static let slideX = AnchorHints(4) // GDK_ANCHOR_SLIDE_X
    /// allow sliding window vertically
    public static let slideY = AnchorHints(8) // GDK_ANCHOR_SLIDE_Y
    /// allow resizing window horizontally
    public static let resizeX = AnchorHints(16) // GDK_ANCHOR_RESIZE_X
    /// allow resizing window vertically
    public static let resizeY = AnchorHints(32) // GDK_ANCHOR_RESIZE_Y
    /// allow flipping anchors on both axes
    public static let flip = AnchorHints(3) // GDK_ANCHOR_FLIP
    /// allow sliding window on both axes
    public static let slide = AnchorHints(12) // GDK_ANCHOR_SLIDE
    /// allow resizing window on both axes
    public static let resize = AnchorHints(48) // GDK_ANCHOR_RESIZE
}



/// Flags describing the current capabilities of a device/tool.
public struct AxisFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkAxisFlags` enum value
    @inlinable public var value: GdkAxisFlags {
        get {
            func castToGdkAxisFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkAxisFlags(rawValue: castToGdkAxisFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkAxisFlags` enum value
    @inlinable public init(_ enumValue: GdkAxisFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// X axis is present
    public static let x = AxisFlags(2) // GDK_AXIS_FLAG_X
    /// Y axis is present
    public static let y = AxisFlags(4) // GDK_AXIS_FLAG_Y
    /// Pressure axis is present
    public static let pressure = AxisFlags(8) // GDK_AXIS_FLAG_PRESSURE
    /// X tilt axis is present
    public static let xtilt = AxisFlags(16) // GDK_AXIS_FLAG_XTILT
    /// Y tilt axis is present
    public static let ytilt = AxisFlags(32) // GDK_AXIS_FLAG_YTILT
    /// Wheel axis is present
    public static let wheel = AxisFlags(64) // GDK_AXIS_FLAG_WHEEL
    /// Distance axis is present
    public static let distance = AxisFlags(128) // GDK_AXIS_FLAG_DISTANCE
    /// Z-axis rotation is present
    public static let rotation = AxisFlags(256) // GDK_AXIS_FLAG_ROTATION
    /// Slider axis is present
    public static let slider = AxisFlags(512) // GDK_AXIS_FLAG_SLIDER
}



/// Used in `GdkDragContext` to indicate what the destination
/// should do with the dropped data.
public struct DragAction: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkDragAction` enum value
    @inlinable public var value: GdkDragAction {
        get {
            func castToGdkDragActionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkDragAction(rawValue: castToGdkDragActionInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkDragAction` enum value
    @inlinable public init(_ enumValue: GdkDragAction) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Means nothing, and should not be used.
    public static let `default` = DragAction(1) // GDK_ACTION_DEFAULT
    /// Copy the data.
    public static let copy = DragAction(2) // GDK_ACTION_COPY
    /// Move the data, i.e. first copy it, then delete
    ///  it from the source using the DELETE target of the X selection protocol.
    public static let move = DragAction(4) // GDK_ACTION_MOVE
    /// Add a link to the data. Note that this is only
    ///  useful if source and destination agree on what it means.
    public static let link = DragAction(8) // GDK_ACTION_LINK
    /// Special action which tells the source that the
    ///  destination will do something that the source doesn’t understand.
    public static let `private` = DragAction(16) // GDK_ACTION_PRIVATE
    /// Ask the user what to do with the data.
    public static let ask = DragAction(32) // GDK_ACTION_ASK
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
public struct EventMask: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkEventMask` enum value
    @inlinable public var value: GdkEventMask {
        get {
            func castToGdkEventMaskInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkEventMask(rawValue: castToGdkEventMaskInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkEventMask` enum value
    @inlinable public init(_ enumValue: GdkEventMask) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// receive expose events
    public static let exposureMask = EventMask(2) // GDK_EXPOSURE_MASK
    /// receive all pointer motion events
    public static let pointerMotionMask = EventMask(4) // GDK_POINTER_MOTION_MASK
    /// deprecated. see the explanation above
    public static let pointerMotionHintMask = EventMask(8) // GDK_POINTER_MOTION_HINT_MASK
    /// receive pointer motion events while any button is pressed
    public static let buttonMotionMask = EventMask(16) // GDK_BUTTON_MOTION_MASK
    /// receive pointer motion events while 1 button is pressed
    public static let button1MotionMask = EventMask(32) // GDK_BUTTON1_MOTION_MASK
    /// receive pointer motion events while 2 button is pressed
    public static let button2MotionMask = EventMask(64) // GDK_BUTTON2_MOTION_MASK
    /// receive pointer motion events while 3 button is pressed
    public static let button3MotionMask = EventMask(128) // GDK_BUTTON3_MOTION_MASK
    /// receive button press events
    public static let buttonPressMask = EventMask(256) // GDK_BUTTON_PRESS_MASK
    /// receive button release events
    public static let buttonReleaseMask = EventMask(512) // GDK_BUTTON_RELEASE_MASK
    /// receive key press events
    public static let keyPressMask = EventMask(1024) // GDK_KEY_PRESS_MASK
    /// receive key release events
    public static let keyReleaseMask = EventMask(2048) // GDK_KEY_RELEASE_MASK
    /// receive window enter events
    public static let enterNotifyMask = EventMask(4096) // GDK_ENTER_NOTIFY_MASK
    /// receive window leave events
    public static let leaveNotifyMask = EventMask(8192) // GDK_LEAVE_NOTIFY_MASK
    /// receive focus change events
    public static let focusChangeMask = EventMask(16384) // GDK_FOCUS_CHANGE_MASK
    /// receive events about window configuration change
    public static let structureMask = EventMask(32768) // GDK_STRUCTURE_MASK
    /// receive property change events
    public static let propertyChangeMask = EventMask(65536) // GDK_PROPERTY_CHANGE_MASK
    /// receive visibility change events
    public static let visibilityNotifyMask = EventMask(131072) // GDK_VISIBILITY_NOTIFY_MASK
    /// receive proximity in events
    public static let proximityInMask = EventMask(262144) // GDK_PROXIMITY_IN_MASK
    /// receive proximity out events
    public static let proximityOutMask = EventMask(524288) // GDK_PROXIMITY_OUT_MASK
    /// receive events about window configuration changes of
    ///   child windows
    public static let substructureMask = EventMask(1048576) // GDK_SUBSTRUCTURE_MASK
    /// receive scroll events
    public static let scrollMask = EventMask(2097152) // GDK_SCROLL_MASK
    /// receive touch events. Since 3.4
    public static let touchMask = EventMask(4194304) // GDK_TOUCH_MASK
    /// receive smooth scrolling events. Since 3.4
    public static let smoothScrollMask = EventMask(8388608) // GDK_SMOOTH_SCROLL_MASK
    /// receive touchpad gesture events. Since 3.18
    public static let touchpadGestureMask = EventMask(16777216) // GDK_TOUCHPAD_GESTURE_MASK
    /// receive tablet pad events. Since 3.22
    public static let tabletPadMask = EventMask(33554432) // GDK_TABLET_PAD_MASK
    /// the combination of all the above event masks.
    public static let allEventsMask = EventMask(67108862) // GDK_ALL_EVENTS_MASK
}



/// `GdkFrameClockPhase` is used to represent the different paint clock
/// phases that can be requested. The elements of the enumeration
/// correspond to the signals of `GdkFrameClock`.
public struct FrameClockPhase: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkFrameClockPhase` enum value
    @inlinable public var value: GdkFrameClockPhase {
        get {
            func castToGdkFrameClockPhaseInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkFrameClockPhase(rawValue: castToGdkFrameClockPhaseInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkFrameClockPhase` enum value
    @inlinable public init(_ enumValue: GdkFrameClockPhase) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// no phase
    public static let `none` = FrameClockPhase(0) // GDK_FRAME_CLOCK_PHASE_NONE
    /// corresponds to GdkFrameClock`flush`-events. Should not be handled by applications.
    public static let flushEvents = FrameClockPhase(1) // GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS
    /// corresponds to GdkFrameClock`before`-paint. Should not be handled by applications.
    public static let beforePaint = FrameClockPhase(2) // GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT
    /// corresponds to GdkFrameClock`update`.
    public static let update = FrameClockPhase(4) // GDK_FRAME_CLOCK_PHASE_UPDATE
    /// corresponds to GdkFrameClock`layout`.
    public static let layout = FrameClockPhase(8) // GDK_FRAME_CLOCK_PHASE_LAYOUT
    /// corresponds to GdkFrameClock`paint`.
    public static let paint = FrameClockPhase(16) // GDK_FRAME_CLOCK_PHASE_PAINT
    /// corresponds to GdkFrameClock`resume`-events. Should not be handled by applications.
    public static let resumeEvents = FrameClockPhase(32) // GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS
    /// corresponds to GdkFrameClock`after`-paint. Should not be handled by applications.
    public static let afterPaint = FrameClockPhase(64) // GDK_FRAME_CLOCK_PHASE_AFTER_PAINT
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
public struct ModifierType: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkModifierType` enum value
    @inlinable public var value: GdkModifierType {
        get {
            func castToGdkModifierTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkModifierType(rawValue: castToGdkModifierTypeInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkModifierType` enum value
    @inlinable public init(_ enumValue: GdkModifierType) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// the Shift key.
    public static let shiftMask = ModifierType(1) // GDK_SHIFT_MASK
    /// a Lock key (depending on the modifier mapping of the
    ///  X server this may either be CapsLock or ShiftLock).
    public static let lockMask = ModifierType(2) // GDK_LOCK_MASK
    /// the Control key.
    public static let controlMask = ModifierType(4) // GDK_CONTROL_MASK
    /// the fourth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier, but
    ///  normally it is the Alt key).
    public static let mod1Mask = ModifierType(8) // GDK_MOD1_MASK
    /// the fifth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    public static let mod2Mask = ModifierType(16) // GDK_MOD2_MASK
    /// the sixth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    public static let mod3Mask = ModifierType(32) // GDK_MOD3_MASK
    /// the seventh modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    public static let mod4Mask = ModifierType(64) // GDK_MOD4_MASK
    /// the eighth modifier key (it depends on the modifier
    ///  mapping of the X server which key is interpreted as this modifier).
    public static let mod5Mask = ModifierType(128) // GDK_MOD5_MASK
    /// the first mouse button.
    public static let button1Mask = ModifierType(256) // GDK_BUTTON1_MASK
    /// the second mouse button.
    public static let button2Mask = ModifierType(512) // GDK_BUTTON2_MASK
    /// the third mouse button.
    public static let button3Mask = ModifierType(1024) // GDK_BUTTON3_MASK
    /// the fourth mouse button.
    public static let button4Mask = ModifierType(2048) // GDK_BUTTON4_MASK
    /// the fifth mouse button.
    public static let button5Mask = ModifierType(4096) // GDK_BUTTON5_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved13Mask = ModifierType(8192) // GDK_MODIFIER_RESERVED_13_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved14Mask = ModifierType(16384) // GDK_MODIFIER_RESERVED_14_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved15Mask = ModifierType(32768) // GDK_MODIFIER_RESERVED_15_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved16Mask = ModifierType(65536) // GDK_MODIFIER_RESERVED_16_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved17Mask = ModifierType(131072) // GDK_MODIFIER_RESERVED_17_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved18Mask = ModifierType(262144) // GDK_MODIFIER_RESERVED_18_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved19Mask = ModifierType(524288) // GDK_MODIFIER_RESERVED_19_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved20Mask = ModifierType(1048576) // GDK_MODIFIER_RESERVED_20_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved21Mask = ModifierType(2097152) // GDK_MODIFIER_RESERVED_21_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved22Mask = ModifierType(4194304) // GDK_MODIFIER_RESERVED_22_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved23Mask = ModifierType(8388608) // GDK_MODIFIER_RESERVED_23_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved24Mask = ModifierType(16777216) // GDK_MODIFIER_RESERVED_24_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved25Mask = ModifierType(33554432) // GDK_MODIFIER_RESERVED_25_MASK
    /// the Super modifier. Since 2.10
    public static let superMask = ModifierType(67108864) // GDK_SUPER_MASK
    /// the Hyper modifier. Since 2.10
    public static let hyperMask = ModifierType(134217728) // GDK_HYPER_MASK
    /// the Meta modifier. Since 2.10
    public static let metaMask = ModifierType(268435456) // GDK_META_MASK
    /// A reserved bit flag; do not use in your own code
    public static let modifierReserved29Mask = ModifierType(536870912) // GDK_MODIFIER_RESERVED_29_MASK
    /// not used in GDK itself. GTK+ uses it to differentiate
    ///  between (keyval, modifiers) pairs from key press and release events.
    public static let releaseMask = ModifierType(1073741824) // GDK_RELEASE_MASK
    /// a mask covering all modifier types.
    public static let modifierMask = ModifierType(1543512063) // GDK_MODIFIER_MASK
}



/// Flags describing the seat capabilities.
public struct SeatCapabilities: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkSeatCapabilities` enum value
    @inlinable public var value: GdkSeatCapabilities {
        get {
            func castToGdkSeatCapabilitiesInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkSeatCapabilities(rawValue: castToGdkSeatCapabilitiesInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkSeatCapabilities` enum value
    @inlinable public init(_ enumValue: GdkSeatCapabilities) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// No input capabilities
    public static let `none` = SeatCapabilities(0) // GDK_SEAT_CAPABILITY_NONE
    /// The seat has a pointer (e.g. mouse)
    public static let pointer = SeatCapabilities(1) // GDK_SEAT_CAPABILITY_POINTER
    /// The seat has `touchscreen(s)` attached
    public static let touch = SeatCapabilities(2) // GDK_SEAT_CAPABILITY_TOUCH
    /// The seat has drawing `tablet(s)` attached
    public static let tabletStylus = SeatCapabilities(4) // GDK_SEAT_CAPABILITY_TABLET_STYLUS
    /// The seat has `keyboard(s)` attached
    public static let keyboard = SeatCapabilities(8) // GDK_SEAT_CAPABILITY_KEYBOARD
    /// The union of all pointing capabilities
    public static let allPointing = SeatCapabilities(7) // GDK_SEAT_CAPABILITY_ALL_POINTING
    /// The union of all capabilities
    public static let all = SeatCapabilities(15) // GDK_SEAT_CAPABILITY_ALL
}



/// These are hints originally defined by the Motif toolkit.
/// The window manager can use them when determining how to decorate
/// the window. The hint must be set before mapping the window.
public struct WMDecoration: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkWMDecoration` enum value
    @inlinable public var value: GdkWMDecoration {
        get {
            func castToGdkWMDecorationInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkWMDecoration(rawValue: castToGdkWMDecorationInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkWMDecoration` enum value
    @inlinable public init(_ enumValue: GdkWMDecoration) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// all decorations should be applied.
    public static let all = WMDecoration(1) // GDK_DECOR_ALL
    /// a frame should be drawn around the window.
    public static let border = WMDecoration(2) // GDK_DECOR_BORDER
    /// the frame should have resize handles.
    public static let resizeh = WMDecoration(4) // GDK_DECOR_RESIZEH
    /// a titlebar should be placed above the window.
    public static let title = WMDecoration(8) // GDK_DECOR_TITLE
    /// a button for opening a menu should be included.
    public static let menu = WMDecoration(16) // GDK_DECOR_MENU
    /// a minimize button should be included.
    public static let minimize = WMDecoration(32) // GDK_DECOR_MINIMIZE
    /// a maximize button should be included.
    public static let maximize = WMDecoration(64) // GDK_DECOR_MAXIMIZE
}



/// These are hints originally defined by the Motif toolkit. The window manager
/// can use them when determining the functions to offer for the window. The
/// hint must be set before mapping the window.
public struct WMFunction: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkWMFunction` enum value
    @inlinable public var value: GdkWMFunction {
        get {
            func castToGdkWMFunctionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkWMFunction(rawValue: castToGdkWMFunctionInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkWMFunction` enum value
    @inlinable public init(_ enumValue: GdkWMFunction) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// all functions should be offered.
    public static let all = WMFunction(1) // GDK_FUNC_ALL
    /// the window should be resizable.
    public static let resize = WMFunction(2) // GDK_FUNC_RESIZE
    /// the window should be movable.
    public static let move = WMFunction(4) // GDK_FUNC_MOVE
    /// the window should be minimizable.
    public static let minimize = WMFunction(8) // GDK_FUNC_MINIMIZE
    /// the window should be maximizable.
    public static let maximize = WMFunction(16) // GDK_FUNC_MAXIMIZE
    /// the window should be closable.
    public static let close = WMFunction(32) // GDK_FUNC_CLOSE
}



/// Used to indicate which fields in the `GdkWindowAttr` struct should be honored.
/// For example, if you filled in the “cursor” and “x” fields of `GdkWindowAttr`,
/// pass “`GDK_WA_X` | `GDK_WA_CURSOR`” to `gdk_window_new()`. Fields in
/// `GdkWindowAttr` not covered by a bit in this enum are required; for example,
/// the `width`/`height`, `wclass`, and `window_type` fields are required, they have
/// no corresponding flag in `GdkWindowAttributesType`.
public struct WindowAttributesType: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkWindowAttributesType` enum value
    @inlinable public var value: GdkWindowAttributesType {
        get {
            func castToGdkWindowAttributesTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkWindowAttributesType(rawValue: castToGdkWindowAttributesTypeInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkWindowAttributesType` enum value
    @inlinable public init(_ enumValue: GdkWindowAttributesType) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Honor the title field
    public static let title = WindowAttributesType(2) // GDK_WA_TITLE
    /// Honor the X coordinate field
    public static let x = WindowAttributesType(4) // GDK_WA_X
    /// Honor the Y coordinate field
    public static let y = WindowAttributesType(8) // GDK_WA_Y
    /// Honor the cursor field
    public static let cursor = WindowAttributesType(16) // GDK_WA_CURSOR
    /// Honor the visual field
    public static let visual = WindowAttributesType(32) // GDK_WA_VISUAL
    /// Honor the wmclass_class and wmclass_name fields
    public static let wmclass = WindowAttributesType(64) // GDK_WA_WMCLASS
    /// Honor the override_redirect field
    public static let noredir = WindowAttributesType(128) // GDK_WA_NOREDIR
    /// Honor the type_hint field
    public static let typeHint = WindowAttributesType(256) // GDK_WA_TYPE_HINT
}



/// Used to indicate which fields of a `GdkGeometry` struct should be paid
/// attention to. Also, the presence/absence of `GDK_HINT_POS`,
/// `GDK_HINT_USER_POS`, and `GDK_HINT_USER_SIZE` is significant, though they don't
/// directly refer to `GdkGeometry` fields. `GDK_HINT_USER_POS` will be set
/// automatically by `GtkWindow` if you call `gtk_window_move()`.
/// `GDK_HINT_USER_POS` and `GDK_HINT_USER_SIZE` should be set if the user
/// specified a size/position using a --geometry command-line argument;
/// `gtk_window_parse_geometry()` automatically sets these flags.
public struct WindowHints: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkWindowHints` enum value
    @inlinable public var value: GdkWindowHints {
        get {
            func castToGdkWindowHintsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkWindowHints(rawValue: castToGdkWindowHintsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkWindowHints` enum value
    @inlinable public init(_ enumValue: GdkWindowHints) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// indicates that the program has positioned the window
    public static let pos = WindowHints(1) // GDK_HINT_POS
    /// min size fields are set
    public static let minSize = WindowHints(2) // GDK_HINT_MIN_SIZE
    /// max size fields are set
    public static let maxSize = WindowHints(4) // GDK_HINT_MAX_SIZE
    /// base size fields are set
    public static let baseSize = WindowHints(8) // GDK_HINT_BASE_SIZE
    /// aspect ratio fields are set
    public static let aspect = WindowHints(16) // GDK_HINT_ASPECT
    /// resize increment fields are set
    public static let resizeInc = WindowHints(32) // GDK_HINT_RESIZE_INC
    /// window gravity field is set
    public static let winGravity = WindowHints(64) // GDK_HINT_WIN_GRAVITY
    /// indicates that the window’s position was explicitly set
    ///  by the user
    public static let userPos = WindowHints(128) // GDK_HINT_USER_POS
    /// indicates that the window’s size was explicitly set by
    ///  the user
    public static let userSize = WindowHints(256) // GDK_HINT_USER_SIZE
}



/// Specifies the state of a toplevel window.
public struct WindowState: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkWindowState` enum value
    @inlinable public var value: GdkWindowState {
        get {
            func castToGdkWindowStateInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkWindowState(rawValue: castToGdkWindowStateInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkWindowState` enum value
    @inlinable public init(_ enumValue: GdkWindowState) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// the window is not shown.
    public static let withdrawn = WindowState(1) // GDK_WINDOW_STATE_WITHDRAWN
    /// the window is minimized.
    public static let iconified = WindowState(2) // GDK_WINDOW_STATE_ICONIFIED
    /// the window is maximized.
    public static let maximized = WindowState(4) // GDK_WINDOW_STATE_MAXIMIZED
    /// the window is sticky.
    public static let sticky = WindowState(8) // GDK_WINDOW_STATE_STICKY
    /// the window is maximized without
    ///   decorations.
    public static let fullscreen = WindowState(16) // GDK_WINDOW_STATE_FULLSCREEN
    /// the window is kept above other windows.
    public static let above = WindowState(32) // GDK_WINDOW_STATE_ABOVE
    /// the window is kept below other windows.
    public static let below = WindowState(64) // GDK_WINDOW_STATE_BELOW
    /// the window is presented as focused (with active decorations).
    public static let focused = WindowState(128) // GDK_WINDOW_STATE_FOCUSED
    /// the window is in a tiled state, Since 3.10. Since 3.22.23, this
    ///                          is deprecated in favor of per-edge information.
    public static let tiled = WindowState(256) // GDK_WINDOW_STATE_TILED
    /// whether the top edge is tiled, Since 3.22.23
    public static let topTiled = WindowState(512) // GDK_WINDOW_STATE_TOP_TILED
    /// whether the top edge is resizable, Since 3.22.23
    public static let topResizable = WindowState(1024) // GDK_WINDOW_STATE_TOP_RESIZABLE
    /// whether the right edge is tiled, Since 3.22.23
    public static let rightTiled = WindowState(2048) // GDK_WINDOW_STATE_RIGHT_TILED
    /// whether the right edge is resizable, Since 3.22.23
    public static let rightResizable = WindowState(4096) // GDK_WINDOW_STATE_RIGHT_RESIZABLE
    /// whether the bottom edge is tiled, Since 3.22.23
    public static let bottomTiled = WindowState(8192) // GDK_WINDOW_STATE_BOTTOM_TILED
    /// whether the bottom edge is resizable, Since 3.22.23
    public static let bottomResizable = WindowState(16384) // GDK_WINDOW_STATE_BOTTOM_RESIZABLE
    /// whether the left edge is tiled, Since 3.22.23
    public static let leftTiled = WindowState(32768) // GDK_WINDOW_STATE_LEFT_TILED
    /// whether the left edge is resizable, Since 3.22.23
    public static let leftResizable = WindowState(65536) // GDK_WINDOW_STATE_LEFT_RESIZABLE
}

