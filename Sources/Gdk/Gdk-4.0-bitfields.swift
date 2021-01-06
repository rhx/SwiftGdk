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

/// Positioning hints for aligning a surface relative to a rectangle.
/// 
/// These hints determine how the surface should be positioned in the case that
/// the surface would fall off-screen if placed in its ideal position.
/// 
/// For example, `GDK_ANCHOR_FLIP_X` will replace `GDK_GRAVITY_NORTH_WEST` with
/// `GDK_GRAVITY_NORTH_EAST` and vice versa if the surface extends beyond the left
/// or right edges of the monitor.
/// 
/// If `GDK_ANCHOR_SLIDE_X` is set, the surface can be shifted horizontally to fit
/// on-screen. If `GDK_ANCHOR_RESIZE_X` is set, the surface can be shrunken
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
    /// allow sliding surface horizontally
    public static let slideX = AnchorHints(4) // GDK_ANCHOR_SLIDE_X
    /// allow sliding surface vertically
    public static let slideY = AnchorHints(8) // GDK_ANCHOR_SLIDE_Y
    /// allow resizing surface horizontally
    public static let resizeX = AnchorHints(16) // GDK_ANCHOR_RESIZE_X
    /// allow resizing surface vertically
    public static let resizeY = AnchorHints(32) // GDK_ANCHOR_RESIZE_Y
    /// allow flipping anchors on both axes
    public static let flip = AnchorHints(3) // GDK_ANCHOR_FLIP
    /// allow sliding surface on both axes
    public static let slide = AnchorHints(12) // GDK_ANCHOR_SLIDE
    /// allow resizing surface on both axes
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
    /// Scroll X delta axis is present
    public static let deltaX = AxisFlags(8) // GDK_AXIS_FLAG_DELTA_X
    /// Scroll Y delta axis is present
    public static let deltaY = AxisFlags(16) // GDK_AXIS_FLAG_DELTA_Y
    /// Pressure axis is present
    public static let pressure = AxisFlags(32) // GDK_AXIS_FLAG_PRESSURE
    /// X tilt axis is present
    public static let xtilt = AxisFlags(64) // GDK_AXIS_FLAG_XTILT
    /// Y tilt axis is present
    public static let ytilt = AxisFlags(128) // GDK_AXIS_FLAG_YTILT
    /// Wheel axis is present
    public static let wheel = AxisFlags(256) // GDK_AXIS_FLAG_WHEEL
    /// Distance axis is present
    public static let distance = AxisFlags(512) // GDK_AXIS_FLAG_DISTANCE
    /// Z-axis rotation is present
    public static let rotation = AxisFlags(1024) // GDK_AXIS_FLAG_ROTATION
    /// Slider axis is present
    public static let slider = AxisFlags(2048) // GDK_AXIS_FLAG_SLIDER
}



/// Used in `GdkDrop` and `GdkDrag` to indicate the actions that the
/// destination can and should do with the dropped data.
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

    /// Copy the data.
    public static let copy = DragAction(1) // GDK_ACTION_COPY
    /// Move the data, i.e. first copy it, then delete
    ///  it from the source using the DELETE target of the X selection protocol.
    public static let move = DragAction(2) // GDK_ACTION_MOVE
    /// Add a link to the data. Note that this is only
    ///  useful if source and destination agree on what it means, and is not
    ///  supported on all platforms.
    public static let link = DragAction(4) // GDK_ACTION_LINK
    /// Ask the user what to do with the data.
    public static let ask = DragAction(8) // GDK_ACTION_ASK
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
    /// corresponds to GdkFrameClock`layout`. Should not be handled by applicatiosn.
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
/// Note that GDK may add internal values to events which include values outside
/// of this enumeration. Your code should preserve and ignore them.  You can use
/// `GDK_MODIFIER_MASK` to remove all private values.
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
    public static let altMask = ModifierType(8) // GDK_ALT_MASK
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
    /// the Super modifier
    public static let superMask = ModifierType(67108864) // GDK_SUPER_MASK
    /// the Hyper modifier
    public static let hyperMask = ModifierType(134217728) // GDK_HYPER_MASK
    /// the Meta modifier
    public static let metaMask = ModifierType(268435456) // GDK_META_MASK
}



/// Flags about this object. Implementations use these for optimizations
/// such as caching.
public struct PaintableFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkPaintableFlags` enum value
    @inlinable public var value: GdkPaintableFlags {
        get {
            func castToGdkPaintableFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkPaintableFlags(rawValue: castToGdkPaintableFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkPaintableFlags` enum value
    @inlinable public init(_ enumValue: GdkPaintableFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// The size is immutable.
    ///     The `GdkPaintable::invalidate`-size signal will never be
    ///     emitted.
    public static let size = PaintableFlags(1) // GDK_PAINTABLE_STATIC_SIZE
    /// The content is immutable.
    ///     The `GdkPaintable::invalidate`-contents signal will never be
    ///     emitted.
    public static let contents = PaintableFlags(2) // GDK_PAINTABLE_STATIC_CONTENTS
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
    /// The seat has drawing tablet `pad(s)` attached
    public static let tabletPad = SeatCapabilities(16) // GDK_SEAT_CAPABILITY_TABLET_PAD
    /// The union of all pointing capabilities
    public static let allPointing = SeatCapabilities(7) // GDK_SEAT_CAPABILITY_ALL_POINTING
    /// The union of all capabilities
    public static let all = SeatCapabilities(15) // GDK_SEAT_CAPABILITY_ALL
}



/// Specifies the state of a toplevel surface.
/// 
/// On platforms that support information about individual edges, the `GDK_TOPLEVEL_STATE_TILED`
/// state will be set whenever any of the individual tiled states is set. On platforms
/// that lack that support, the tiled state will give an indication of tiledness without
/// any of the per-edge states being set.
public struct ToplevelState: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GdkToplevelState` enum value
    @inlinable public var value: GdkToplevelState {
        get {
            func castToGdkToplevelStateInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GdkToplevelState(rawValue: castToGdkToplevelStateInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GdkToplevelState` enum value
    @inlinable public init(_ enumValue: GdkToplevelState) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// the surface is minimized
    public static let minimized = ToplevelState(1) // GDK_TOPLEVEL_STATE_MINIMIZED
    /// the surface is maximized
    public static let maximized = ToplevelState(2) // GDK_TOPLEVEL_STATE_MAXIMIZED
    /// the surface is sticky
    public static let sticky = ToplevelState(4) // GDK_TOPLEVEL_STATE_STICKY
    /// the surface is maximized without decorations
    public static let fullscreen = ToplevelState(8) // GDK_TOPLEVEL_STATE_FULLSCREEN
    /// the surface is kept above other surfaces
    public static let above = ToplevelState(16) // GDK_TOPLEVEL_STATE_ABOVE
    /// the surface is kept below other surfaces
    public static let below = ToplevelState(32) // GDK_TOPLEVEL_STATE_BELOW
    /// the surface is presented as focused (with active decorations)
    public static let focused = ToplevelState(64) // GDK_TOPLEVEL_STATE_FOCUSED
    /// the surface is in a tiled state
    public static let tiled = ToplevelState(128) // GDK_TOPLEVEL_STATE_TILED
    /// whether the top edge is tiled
    public static let topTiled = ToplevelState(256) // GDK_TOPLEVEL_STATE_TOP_TILED
    /// whether the top edge is resizable
    public static let topResizable = ToplevelState(512) // GDK_TOPLEVEL_STATE_TOP_RESIZABLE
    /// whether the right edge is tiled
    public static let rightTiled = ToplevelState(1024) // GDK_TOPLEVEL_STATE_RIGHT_TILED
    /// whether the right edge is resizable
    public static let rightResizable = ToplevelState(2048) // GDK_TOPLEVEL_STATE_RIGHT_RESIZABLE
    /// whether the bottom edge is tiled
    public static let bottomTiled = ToplevelState(4096) // GDK_TOPLEVEL_STATE_BOTTOM_TILED
    /// whether the bottom edge is resizable
    public static let bottomResizable = ToplevelState(8192) // GDK_TOPLEVEL_STATE_BOTTOM_RESIZABLE
    /// whether the left edge is tiled
    public static let leftTiled = ToplevelState(16384) // GDK_TOPLEVEL_STATE_LEFT_TILED
    /// whether the left edge is resizable
    public static let leftResizable = ToplevelState(32768) // GDK_TOPLEVEL_STATE_LEFT_RESIZABLE
}

