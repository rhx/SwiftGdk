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
func cast<I: BinaryInteger>(_ param: I) -> AxisUse { AxisUse(rawValue: cast(param)) }
func cast(_ param: AxisUse) -> UInt32 { cast(param.rawValue) }


/// A set of values describing the possible byte-orders
/// for storing pixel values in memory.
public typealias ByteOrder = GdkByteOrder

public extension ByteOrder {
    /// The values are stored with the least-significant byte
    ///   first. For instance, the 32-bit value 0xffeecc would be stored
    ///   in memory as 0xcc, 0xee, 0xff, 0x00.
    static let lsbFirst = GDK_LSB_FIRST /* 0 */
    /// The values are stored with the most-significant byte
    ///   first. For instance, the 32-bit value 0xffeecc would be stored
    ///   in memory as 0x00, 0xff, 0xee, 0xcc.
    static let msbFirst = GDK_MSB_FIRST /* 1 */
    /// The values are stored with the least-significant byte
    ///   first. For instance, the 32-bit value 0xffeecc would be stored
    ///   in memory as 0xcc, 0xee, 0xff, 0x00.
    @available(*, deprecated) static let lsb_first = ByteOrder.lsbFirst /* GDK_LSB_FIRST */
    /// The values are stored with the most-significant byte
    ///   first. For instance, the 32-bit value 0xffeecc would be stored
    ///   in memory as 0x00, 0xff, 0xee, 0xcc.
    @available(*, deprecated) static let msb_first = ByteOrder.msbFirst /* GDK_MSB_FIRST */
}
func cast<I: BinaryInteger>(_ param: I) -> ByteOrder { ByteOrder(rawValue: cast(param)) }
func cast(_ param: ByteOrder) -> UInt32 { cast(param.rawValue) }


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
    static let gtkGrab = GDK_CROSSING_GTK_GRAB /* 3 */
    /// crossing because a GTK+ grab is deactivated.
    static let gtkUngrab = GDK_CROSSING_GTK_UNGRAB /* 4 */
    /// crossing because a GTK+ widget changed
    ///   state (e.g. sensitivity).
    static let stateChanged = GDK_CROSSING_STATE_CHANGED /* 5 */
    /// crossing because a touch sequence has begun,
    ///   this event is synthetic as the pointer might have not left the window.
    static let touchBegin = GDK_CROSSING_TOUCH_BEGIN /* 6 */
    /// crossing because a touch sequence has ended,
    ///   this event is synthetic as the pointer might have not left the window.
    static let touchEnd = GDK_CROSSING_TOUCH_END /* 7 */
    /// crossing because of a device switch (i.e.
    ///   a mouse taking control of the pointer after a touch device), this event
    ///   is synthetic as the pointer didn’t leave the window.
    static let deviceSwitch = GDK_CROSSING_DEVICE_SWITCH /* 8 */
    /// crossing because a GTK+ grab is activated.
    @available(*, deprecated) static let gtk_grab = CrossingMode.gtkGrab /* GDK_CROSSING_GTK_GRAB */
    /// crossing because a GTK+ grab is deactivated.
    @available(*, deprecated) static let gtk_ungrab = CrossingMode.gtkUngrab /* GDK_CROSSING_GTK_UNGRAB */
    /// crossing because a GTK+ widget changed
    ///   state (e.g. sensitivity).
    @available(*, deprecated) static let state_changed = CrossingMode.stateChanged /* GDK_CROSSING_STATE_CHANGED */
    /// crossing because a touch sequence has begun,
    ///   this event is synthetic as the pointer might have not left the window.
    @available(*, deprecated) static let touch_begin = CrossingMode.touchBegin /* GDK_CROSSING_TOUCH_BEGIN */
    /// crossing because a touch sequence has ended,
    ///   this event is synthetic as the pointer might have not left the window.
    @available(*, deprecated) static let touch_end = CrossingMode.touchEnd /* GDK_CROSSING_TOUCH_END */
    /// crossing because of a device switch (i.e.
    ///   a mouse taking control of the pointer after a touch device), this event
    ///   is synthetic as the pointer didn’t leave the window.
    @available(*, deprecated) static let device_switch = CrossingMode.deviceSwitch /* GDK_CROSSING_DEVICE_SWITCH */
}
func cast<I: BinaryInteger>(_ param: I) -> CrossingMode { CrossingMode(rawValue: cast(param)) }
func cast(_ param: CrossingMode) -> UInt32 { cast(param.rawValue) }


/// Predefined cursors.
/// 
/// Note that these IDs are directly taken from the X cursor font, and many
/// of these cursors are either not useful, or are not available on other platforms.
/// 
/// The recommended way to create cursors is to use `gdk_cursor_new_from_name()`.
public typealias CursorType = GdkCursorType

public extension CursorType {
    /// ![](X_cursor.png)
    static let xCursor = GDK_X_CURSOR /* 0 */
    /// ![](arrow.png)
    static let arrow = GDK_ARROW /* 2 */
    /// ![](based_arrow_down.png)
    static let basedArrowDown = GDK_BASED_ARROW_DOWN /* 4 */
    /// ![](based_arrow_up.png)
    static let basedArrowUp = GDK_BASED_ARROW_UP /* 6 */
    /// ![](boat.png)
    static let boat = GDK_BOAT /* 8 */
    /// ![](bogosity.png)
    static let bogosity = GDK_BOGOSITY /* 10 */
    /// ![](bottom_left_corner.png)
    static let bottomLeftCorner = GDK_BOTTOM_LEFT_CORNER /* 12 */
    /// ![](bottom_right_corner.png)
    static let bottomRightCorner = GDK_BOTTOM_RIGHT_CORNER /* 14 */
    /// ![](bottom_side.png)
    static let bottomSide = GDK_BOTTOM_SIDE /* 16 */
    /// ![](bottom_tee.png)
    static let bottomTee = GDK_BOTTOM_TEE /* 18 */
    /// ![](box_spiral.png)
    static let boxSpiral = GDK_BOX_SPIRAL /* 20 */
    /// ![](center_ptr.png)
    static let centerPtr = GDK_CENTER_PTR /* 22 */
    /// ![](circle.png)
    static let circle = GDK_CIRCLE /* 24 */
    /// ![](clock.png)
    static let clock = GDK_CLOCK /* 26 */
    /// ![](coffee_mug.png)
    static let coffeeMug = GDK_COFFEE_MUG /* 28 */
    /// ![](cross.png)
    static let cross = GDK_CROSS /* 30 */
    /// ![](cross_reverse.png)
    static let crossReverse = GDK_CROSS_REVERSE /* 32 */
    /// ![](crosshair.png)
    static let crosshair = GDK_CROSSHAIR /* 34 */
    /// ![](diamond_cross.png)
    static let diamondCross = GDK_DIAMOND_CROSS /* 36 */
    /// ![](dot.png)
    static let dot = GDK_DOT /* 38 */
    /// ![](dotbox.png)
    static let dotbox = GDK_DOTBOX /* 40 */
    /// ![](double_arrow.png)
    static let doubleArrow = GDK_DOUBLE_ARROW /* 42 */
    /// ![](draft_large.png)
    static let draftLarge = GDK_DRAFT_LARGE /* 44 */
    /// ![](draft_small.png)
    static let draftSmall = GDK_DRAFT_SMALL /* 46 */
    /// ![](draped_box.png)
    static let drapedBox = GDK_DRAPED_BOX /* 48 */
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
    static let ironCross = GDK_IRON_CROSS /* 66 */
    /// ![](left_ptr.png)
    static let leftPtr = GDK_LEFT_PTR /* 68 */
    /// ![](left_side.png)
    static let leftSide = GDK_LEFT_SIDE /* 70 */
    /// ![](left_tee.png)
    static let leftTee = GDK_LEFT_TEE /* 72 */
    /// ![](leftbutton.png)
    static let leftbutton = GDK_LEFTBUTTON /* 74 */
    /// ![](ll_angle.png)
    static let llAngle = GDK_LL_ANGLE /* 76 */
    /// ![](lr_angle.png)
    static let lrAngle = GDK_LR_ANGLE /* 78 */
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
    static let questionArrow = GDK_QUESTION_ARROW /* 92 */
    /// ![](right_ptr.png)
    static let rightPtr = GDK_RIGHT_PTR /* 94 */
    /// ![](right_side.png)
    static let rightSide = GDK_RIGHT_SIDE /* 96 */
    /// ![](right_tee.png)
    static let rightTee = GDK_RIGHT_TEE /* 98 */
    /// ![](rightbutton.png)
    static let rightbutton = GDK_RIGHTBUTTON /* 100 */
    /// ![](rtl_logo.png)
    static let rtlLogo = GDK_RTL_LOGO /* 102 */
    /// ![](sailboat.png)
    static let sailboat = GDK_SAILBOAT /* 104 */
    /// ![](sb_down_arrow.png)
    static let sbDownArrow = GDK_SB_DOWN_ARROW /* 106 */
    /// ![](sb_h_double_arrow.png)
    static let sbHDoubleArrow = GDK_SB_H_DOUBLE_ARROW /* 108 */
    /// ![](sb_left_arrow.png)
    static let sbLeftArrow = GDK_SB_LEFT_ARROW /* 110 */
    /// ![](sb_right_arrow.png)
    static let sbRightArrow = GDK_SB_RIGHT_ARROW /* 112 */
    /// ![](sb_up_arrow.png)
    static let sbUpArrow = GDK_SB_UP_ARROW /* 114 */
    /// ![](sb_v_double_arrow.png)
    static let sbVDoubleArrow = GDK_SB_V_DOUBLE_ARROW /* 116 */
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
    static let topLeftArrow = GDK_TOP_LEFT_ARROW /* 132 */
    /// ![](top_left_corner.png)
    static let topLeftCorner = GDK_TOP_LEFT_CORNER /* 134 */
    /// ![](top_right_corner.png)
    static let topRightCorner = GDK_TOP_RIGHT_CORNER /* 136 */
    /// ![](top_side.png)
    static let topSide = GDK_TOP_SIDE /* 138 */
    /// ![](top_tee.png)
    static let topTee = GDK_TOP_TEE /* 140 */
    /// ![](trek.png)
    static let trek = GDK_TREK /* 142 */
    /// ![](ul_angle.png)
    static let ulAngle = GDK_UL_ANGLE /* 144 */
    /// ![](umbrella.png)
    static let umbrella = GDK_UMBRELLA /* 146 */
    /// ![](ur_angle.png)
    static let urAngle = GDK_UR_ANGLE /* 148 */
    /// ![](watch.png)
    static let watch = GDK_WATCH /* 150 */
    /// ![](xterm.png)
    static let xterm = GDK_XTERM /* 152 */
    /// last cursor type
    static let lastCursor = GDK_LAST_CURSOR /* 153 */
    /// Blank cursor. Since 2.16
    static let blankCursor = GDK_BLANK_CURSOR /* -2 */
    /// type of cursors constructed with
    ///   `gdk_cursor_new_from_pixbuf()`
    static let cursorIsPixmap = GDK_CURSOR_IS_PIXMAP /* -1 */
    /// ![](X_cursor.png)
    @available(*, deprecated) static let x_cursor = CursorType.xCursor /* GDK_X_CURSOR */
    /// ![](based_arrow_down.png)
    @available(*, deprecated) static let based_arrow_down = CursorType.basedArrowDown /* GDK_BASED_ARROW_DOWN */
    /// ![](based_arrow_up.png)
    @available(*, deprecated) static let based_arrow_up = CursorType.basedArrowUp /* GDK_BASED_ARROW_UP */
    /// ![](bottom_left_corner.png)
    @available(*, deprecated) static let bottom_left_corner = CursorType.bottomLeftCorner /* GDK_BOTTOM_LEFT_CORNER */
    /// ![](bottom_right_corner.png)
    @available(*, deprecated) static let bottom_right_corner = CursorType.bottomRightCorner /* GDK_BOTTOM_RIGHT_CORNER */
    /// ![](bottom_side.png)
    @available(*, deprecated) static let bottom_side = CursorType.bottomSide /* GDK_BOTTOM_SIDE */
    /// ![](bottom_tee.png)
    @available(*, deprecated) static let bottom_tee = CursorType.bottomTee /* GDK_BOTTOM_TEE */
    /// ![](box_spiral.png)
    @available(*, deprecated) static let box_spiral = CursorType.boxSpiral /* GDK_BOX_SPIRAL */
    /// ![](center_ptr.png)
    @available(*, deprecated) static let center_ptr = CursorType.centerPtr /* GDK_CENTER_PTR */
    /// ![](coffee_mug.png)
    @available(*, deprecated) static let coffee_mug = CursorType.coffeeMug /* GDK_COFFEE_MUG */
    /// ![](cross_reverse.png)
    @available(*, deprecated) static let cross_reverse = CursorType.crossReverse /* GDK_CROSS_REVERSE */
    /// ![](diamond_cross.png)
    @available(*, deprecated) static let diamond_cross = CursorType.diamondCross /* GDK_DIAMOND_CROSS */
    /// ![](double_arrow.png)
    @available(*, deprecated) static let double_arrow = CursorType.doubleArrow /* GDK_DOUBLE_ARROW */
    /// ![](draft_large.png)
    @available(*, deprecated) static let draft_large = CursorType.draftLarge /* GDK_DRAFT_LARGE */
    /// ![](draft_small.png)
    @available(*, deprecated) static let draft_small = CursorType.draftSmall /* GDK_DRAFT_SMALL */
    /// ![](draped_box.png)
    @available(*, deprecated) static let draped_box = CursorType.drapedBox /* GDK_DRAPED_BOX */
    /// ![](iron_cross.png)
    @available(*, deprecated) static let iron_cross = CursorType.ironCross /* GDK_IRON_CROSS */
    /// ![](left_ptr.png)
    @available(*, deprecated) static let left_ptr = CursorType.leftPtr /* GDK_LEFT_PTR */
    /// ![](left_side.png)
    @available(*, deprecated) static let left_side = CursorType.leftSide /* GDK_LEFT_SIDE */
    /// ![](left_tee.png)
    @available(*, deprecated) static let left_tee = CursorType.leftTee /* GDK_LEFT_TEE */
    /// ![](ll_angle.png)
    @available(*, deprecated) static let ll_angle = CursorType.llAngle /* GDK_LL_ANGLE */
    /// ![](lr_angle.png)
    @available(*, deprecated) static let lr_angle = CursorType.lrAngle /* GDK_LR_ANGLE */
    /// ![](question_arrow.png)
    @available(*, deprecated) static let question_arrow = CursorType.questionArrow /* GDK_QUESTION_ARROW */
    /// ![](right_ptr.png)
    @available(*, deprecated) static let right_ptr = CursorType.rightPtr /* GDK_RIGHT_PTR */
    /// ![](right_side.png)
    @available(*, deprecated) static let right_side = CursorType.rightSide /* GDK_RIGHT_SIDE */
    /// ![](right_tee.png)
    @available(*, deprecated) static let right_tee = CursorType.rightTee /* GDK_RIGHT_TEE */
    /// ![](rtl_logo.png)
    @available(*, deprecated) static let rtl_logo = CursorType.rtlLogo /* GDK_RTL_LOGO */
    /// ![](sb_down_arrow.png)
    @available(*, deprecated) static let sb_down_arrow = CursorType.sbDownArrow /* GDK_SB_DOWN_ARROW */
    /// ![](sb_h_double_arrow.png)
    @available(*, deprecated) static let sb_h_double_arrow = CursorType.sbHDoubleArrow /* GDK_SB_H_DOUBLE_ARROW */
    /// ![](sb_left_arrow.png)
    @available(*, deprecated) static let sb_left_arrow = CursorType.sbLeftArrow /* GDK_SB_LEFT_ARROW */
    /// ![](sb_right_arrow.png)
    @available(*, deprecated) static let sb_right_arrow = CursorType.sbRightArrow /* GDK_SB_RIGHT_ARROW */
    /// ![](sb_up_arrow.png)
    @available(*, deprecated) static let sb_up_arrow = CursorType.sbUpArrow /* GDK_SB_UP_ARROW */
    /// ![](sb_v_double_arrow.png)
    @available(*, deprecated) static let sb_v_double_arrow = CursorType.sbVDoubleArrow /* GDK_SB_V_DOUBLE_ARROW */
    /// ![](top_left_arrow.png)
    @available(*, deprecated) static let top_left_arrow = CursorType.topLeftArrow /* GDK_TOP_LEFT_ARROW */
    /// ![](top_left_corner.png)
    @available(*, deprecated) static let top_left_corner = CursorType.topLeftCorner /* GDK_TOP_LEFT_CORNER */
    /// ![](top_right_corner.png)
    @available(*, deprecated) static let top_right_corner = CursorType.topRightCorner /* GDK_TOP_RIGHT_CORNER */
    /// ![](top_side.png)
    @available(*, deprecated) static let top_side = CursorType.topSide /* GDK_TOP_SIDE */
    /// ![](top_tee.png)
    @available(*, deprecated) static let top_tee = CursorType.topTee /* GDK_TOP_TEE */
    /// ![](ul_angle.png)
    @available(*, deprecated) static let ul_angle = CursorType.ulAngle /* GDK_UL_ANGLE */
    /// ![](ur_angle.png)
    @available(*, deprecated) static let ur_angle = CursorType.urAngle /* GDK_UR_ANGLE */
    /// last cursor type
    @available(*, deprecated) static let last_cursor = CursorType.lastCursor /* GDK_LAST_CURSOR */
    /// Blank cursor. Since 2.16
    @available(*, deprecated) static let blank_cursor = CursorType.blankCursor /* GDK_BLANK_CURSOR */
    /// type of cursors constructed with
    ///   `gdk_cursor_new_from_pixbuf()`
    @available(*, deprecated) static let cursor_is_pixmap = CursorType.cursorIsPixmap /* GDK_CURSOR_IS_PIXMAP */
}
func cast<I: BinaryInteger>(_ param: I) -> CursorType { CursorType(rawValue: cast(param)) }
func cast(_ param: CursorType) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> DevicePadFeature { DevicePadFeature(rawValue: cast(param)) }
func cast(_ param: DevicePadFeature) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> DeviceToolType { DeviceToolType(rawValue: cast(param)) }
func cast(_ param: DeviceToolType) -> UInt32 { cast(param.rawValue) }


/// Indicates the device type. See [above](#GdkDeviceManager.description)
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
func cast<I: BinaryInteger>(_ param: I) -> DeviceType { DeviceType(rawValue: cast(param)) }
func cast(_ param: DeviceType) -> UInt32 { cast(param.rawValue) }


/// Used in `GdkDragContext` to the reason of a cancelled DND operation.
public typealias DragCancelReason = GdkDragCancelReason

public extension DragCancelReason {
    /// There is no suitable drop target.
    static let noTarget = GDK_DRAG_CANCEL_NO_TARGET /* 0 */
    /// Drag cancelled by the user
    static let userCancelled = GDK_DRAG_CANCEL_USER_CANCELLED /* 1 */
    /// Unspecified error.
    static let error = GDK_DRAG_CANCEL_ERROR /* 2 */
    /// There is no suitable drop target.
    @available(*, deprecated) static let no_target = DragCancelReason.noTarget /* GDK_DRAG_CANCEL_NO_TARGET */
    /// Drag cancelled by the user
    @available(*, deprecated) static let user_cancelled = DragCancelReason.userCancelled /* GDK_DRAG_CANCEL_USER_CANCELLED */
}
func cast<I: BinaryInteger>(_ param: I) -> DragCancelReason { DragCancelReason(rawValue: cast(param)) }
func cast(_ param: DragCancelReason) -> UInt32 { cast(param.rawValue) }


/// Used in `GdkDragContext` to indicate the protocol according to
/// which DND is done.
public typealias Drag_Protocol = GdkDragProtocol

public extension Drag_Protocol {
    /// no protocol.
    static let `none` = GDK_DRAG_PROTO_NONE /* 0 */
    /// The Motif DND protocol. No longer supported
    static let motif = GDK_DRAG_PROTO_MOTIF /* 1 */
    /// The Xdnd protocol.
    static let xdnd = GDK_DRAG_PROTO_XDND /* 2 */
    /// An extension to the Xdnd protocol for
    ///  unclaimed root window drops.
    static let rootwin = GDK_DRAG_PROTO_ROOTWIN /* 3 */
    /// The simple WM_DROPFILES protocol.
    static let win32Dropfiles = GDK_DRAG_PROTO_WIN32_DROPFILES /* 4 */
    /// The complex OLE2 DND protocol (not implemented).
    static let ole2 = GDK_DRAG_PROTO_OLE2 /* 5 */
    /// Intra-application DND.
    static let local = GDK_DRAG_PROTO_LOCAL /* 6 */
    /// Wayland DND protocol.
    static let wayland = GDK_DRAG_PROTO_WAYLAND /* 7 */
    /// no protocol.
    @available(*, deprecated) static let none_ = Drag_Protocol.`none` /* GDK_DRAG_PROTO_NONE */
    /// The simple WM_DROPFILES protocol.
    @available(*, deprecated) static let win32_dropfiles = Drag_Protocol.win32Dropfiles /* GDK_DRAG_PROTO_WIN32_DROPFILES */
}
func cast<I: BinaryInteger>(_ param: I) -> Drag_Protocol { Drag_Protocol(rawValue: cast(param)) }
func cast(_ param: Drag_Protocol) -> UInt32 { cast(param.rawValue) }


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
    static let motionNotify = GDK_MOTION_NOTIFY /* 3 */
    /// a mouse button has been pressed.
    static let buttonPress = GDK_BUTTON_PRESS /* 4 */
    /// a mouse button has been double-clicked (clicked twice
    ///   within a short period of time). Note that each click also generates a
    ///   `GDK_BUTTON_PRESS` event.
    static let _2buttonPress = GDK_2BUTTON_PRESS /* 5 */
    /// alias for `GDK_2BUTTON_PRESS`, added in 3.6.
    static let doubleButtonPress = GDK_DOUBLE_BUTTON_PRESS /* 5 */
    /// a mouse button has been clicked 3 times in a short period
    ///   of time. Note that each click also generates a `GDK_BUTTON_PRESS` event.
    static let _3buttonPress = GDK_3BUTTON_PRESS /* 6 */
    /// alias for `GDK_3BUTTON_PRESS`, added in 3.6.
    static let tripleButtonPress = GDK_TRIPLE_BUTTON_PRESS /* 6 */
    /// a mouse button has been released.
    static let buttonRelease = GDK_BUTTON_RELEASE /* 7 */
    /// a key has been pressed.
    static let keyPress = GDK_KEY_PRESS /* 8 */
    /// a key has been released.
    static let keyRelease = GDK_KEY_RELEASE /* 9 */
    /// the pointer has entered the window.
    static let enterNotify = GDK_ENTER_NOTIFY /* 10 */
    /// the pointer has left the window.
    static let leaveNotify = GDK_LEAVE_NOTIFY /* 11 */
    /// the keyboard focus has entered or left the window.
    static let focusChange = GDK_FOCUS_CHANGE /* 12 */
    /// the size, position or stacking order of the window has changed.
    ///   Note that GTK+ discards these events for `GDK_WINDOW_CHILD` windows.
    static let configure = GDK_CONFIGURE /* 13 */
    /// the window has been mapped.
    static let map = GDK_MAP /* 14 */
    /// the window has been unmapped.
    static let unmap = GDK_UNMAP /* 15 */
    /// a property on the window has been changed or deleted.
    static let propertyNotify = GDK_PROPERTY_NOTIFY /* 16 */
    /// the application has lost ownership of a selection.
    static let selectionClear = GDK_SELECTION_CLEAR /* 17 */
    /// another application has requested a selection.
    static let selectionRequest = GDK_SELECTION_REQUEST /* 18 */
    /// a selection has been received.
    static let selectionNotify = GDK_SELECTION_NOTIFY /* 19 */
    /// an input device has moved into contact with a sensing
    ///   surface (e.g. a touchscreen or graphics tablet).
    static let proximityIn = GDK_PROXIMITY_IN /* 20 */
    /// an input device has moved out of contact with a sensing
    ///   surface.
    static let proximityOut = GDK_PROXIMITY_OUT /* 21 */
    /// the mouse has entered the window while a drag is in progress.
    static let dragEnter = GDK_DRAG_ENTER /* 22 */
    /// the mouse has left the window while a drag is in progress.
    static let dragLeave = GDK_DRAG_LEAVE /* 23 */
    /// the mouse has moved in the window while a drag is in
    ///   progress.
    static let dragMotion = GDK_DRAG_MOTION /* 24 */
    /// the status of the drag operation initiated by the window
    ///   has changed.
    static let dragStatus = GDK_DRAG_STATUS /* 25 */
    /// a drop operation onto the window has started.
    static let dropStart = GDK_DROP_START /* 26 */
    /// the drop operation initiated by the window has completed.
    static let dropFinished = GDK_DROP_FINISHED /* 27 */
    /// a message has been received from another application.
    static let clientEvent = GDK_CLIENT_EVENT /* 28 */
    /// the window visibility status has changed.
    static let visibilityNotify = GDK_VISIBILITY_NOTIFY /* 29 */
    /// the scroll wheel was turned
    static let scroll = GDK_SCROLL /* 31 */
    /// the state of a window has changed. See `GdkWindowState`
    ///   for the possible window states
    static let windowState = GDK_WINDOW_STATE /* 32 */
    /// a setting has been modified.
    static let setting = GDK_SETTING /* 33 */
    /// the owner of a selection has changed. This event type
    ///   was added in 2.6
    static let ownerChange = GDK_OWNER_CHANGE /* 34 */
    /// a pointer or keyboard grab was broken. This event type
    ///   was added in 2.8.
    static let grabBroken = GDK_GRAB_BROKEN /* 35 */
    /// the content of the window has been changed. This event type
    ///   was added in 2.14.
    static let damage = GDK_DAMAGE /* 36 */
    /// A new touch event sequence has just started. This event
    ///   type was added in 3.4.
    static let touchBegin = GDK_TOUCH_BEGIN /* 37 */
    /// A touch event sequence has been updated. This event type
    ///   was added in 3.4.
    static let touchUpdate = GDK_TOUCH_UPDATE /* 38 */
    /// A touch event sequence has finished. This event type
    ///   was added in 3.4.
    static let touchEnd = GDK_TOUCH_END /* 39 */
    /// A touch event sequence has been canceled. This event type
    ///   was added in 3.4.
    static let touchCancel = GDK_TOUCH_CANCEL /* 40 */
    /// A touchpad swipe gesture event, the current state
    ///   is determined by its phase field. This event type was added in 3.18.
    static let touchpadSwipe = GDK_TOUCHPAD_SWIPE /* 41 */
    /// A touchpad pinch gesture event, the current state
    ///   is determined by its phase field. This event type was added in 3.18.
    static let touchpadPinch = GDK_TOUCHPAD_PINCH /* 42 */
    /// A tablet pad button press event. This event type
    ///   was added in 3.22.
    static let padButtonPress = GDK_PAD_BUTTON_PRESS /* 43 */
    /// A tablet pad button release event. This event type
    ///   was added in 3.22.
    static let padButtonRelease = GDK_PAD_BUTTON_RELEASE /* 44 */
    /// A tablet pad axis event from a "ring". This event type was
    ///   added in 3.22.
    static let padRing = GDK_PAD_RING /* 45 */
    /// A tablet pad axis event from a "strip". This event type was
    ///   added in 3.22.
    static let padStrip = GDK_PAD_STRIP /* 46 */
    /// A tablet pad group mode change. This event type was
    ///   added in 3.22.
    static let padGroupMode = GDK_PAD_GROUP_MODE /* 47 */
    /// marks the end of the GdkEventType enumeration. Added in 2.18
    static let eventLast = GDK_EVENT_LAST /* 48 */
    /// the pointer (usually a mouse) has moved.
    @available(*, deprecated) static let motion_notify = EventType.motionNotify /* GDK_MOTION_NOTIFY */
    /// a mouse button has been pressed.
    @available(*, deprecated) static let button_press = EventType.buttonPress /* GDK_BUTTON_PRESS */
    /// a mouse button has been double-clicked (clicked twice
    ///   within a short period of time). Note that each click also generates a
    ///   `GDK_BUTTON_PRESS` event.
    @available(*, deprecated) static let _2button_press = EventType._2buttonPress /* GDK_2BUTTON_PRESS */
    /// alias for `GDK_2BUTTON_PRESS`, added in 3.6.
    @available(*, deprecated) static let double_button_press = EventType.doubleButtonPress /* GDK_DOUBLE_BUTTON_PRESS */
    /// a mouse button has been clicked 3 times in a short period
    ///   of time. Note that each click also generates a `GDK_BUTTON_PRESS` event.
    @available(*, deprecated) static let _3button_press = EventType._3buttonPress /* GDK_3BUTTON_PRESS */
    /// alias for `GDK_3BUTTON_PRESS`, added in 3.6.
    @available(*, deprecated) static let triple_button_press = EventType.tripleButtonPress /* GDK_TRIPLE_BUTTON_PRESS */
    /// a mouse button has been released.
    @available(*, deprecated) static let button_release = EventType.buttonRelease /* GDK_BUTTON_RELEASE */
    /// a key has been pressed.
    @available(*, deprecated) static let key_press = EventType.keyPress /* GDK_KEY_PRESS */
    /// a key has been released.
    @available(*, deprecated) static let key_release = EventType.keyRelease /* GDK_KEY_RELEASE */
    /// the pointer has entered the window.
    @available(*, deprecated) static let enter_notify = EventType.enterNotify /* GDK_ENTER_NOTIFY */
    /// the pointer has left the window.
    @available(*, deprecated) static let leave_notify = EventType.leaveNotify /* GDK_LEAVE_NOTIFY */
    /// the keyboard focus has entered or left the window.
    @available(*, deprecated) static let focus_change = EventType.focusChange /* GDK_FOCUS_CHANGE */
    /// a property on the window has been changed or deleted.
    @available(*, deprecated) static let property_notify = EventType.propertyNotify /* GDK_PROPERTY_NOTIFY */
    /// the application has lost ownership of a selection.
    @available(*, deprecated) static let selection_clear = EventType.selectionClear /* GDK_SELECTION_CLEAR */
    /// another application has requested a selection.
    @available(*, deprecated) static let selection_request = EventType.selectionRequest /* GDK_SELECTION_REQUEST */
    /// a selection has been received.
    @available(*, deprecated) static let selection_notify = EventType.selectionNotify /* GDK_SELECTION_NOTIFY */
    /// an input device has moved into contact with a sensing
    ///   surface (e.g. a touchscreen or graphics tablet).
    @available(*, deprecated) static let proximity_in = EventType.proximityIn /* GDK_PROXIMITY_IN */
    /// an input device has moved out of contact with a sensing
    ///   surface.
    @available(*, deprecated) static let proximity_out = EventType.proximityOut /* GDK_PROXIMITY_OUT */
    /// the mouse has entered the window while a drag is in progress.
    @available(*, deprecated) static let drag_enter = EventType.dragEnter /* GDK_DRAG_ENTER */
    /// the mouse has left the window while a drag is in progress.
    @available(*, deprecated) static let drag_leave = EventType.dragLeave /* GDK_DRAG_LEAVE */
    /// the mouse has moved in the window while a drag is in
    ///   progress.
    @available(*, deprecated) static let drag_motion = EventType.dragMotion /* GDK_DRAG_MOTION */
    /// the status of the drag operation initiated by the window
    ///   has changed.
    @available(*, deprecated) static let drag_status = EventType.dragStatus /* GDK_DRAG_STATUS */
    /// a drop operation onto the window has started.
    @available(*, deprecated) static let drop_start = EventType.dropStart /* GDK_DROP_START */
    /// the drop operation initiated by the window has completed.
    @available(*, deprecated) static let drop_finished = EventType.dropFinished /* GDK_DROP_FINISHED */
    /// a message has been received from another application.
    @available(*, deprecated) static let client_event = EventType.clientEvent /* GDK_CLIENT_EVENT */
    /// the window visibility status has changed.
    @available(*, deprecated) static let visibility_notify = EventType.visibilityNotify /* GDK_VISIBILITY_NOTIFY */
    /// the state of a window has changed. See `GdkWindowState`
    ///   for the possible window states
    @available(*, deprecated) static let window_state = EventType.windowState /* GDK_WINDOW_STATE */
    /// the owner of a selection has changed. This event type
    ///   was added in 2.6
    @available(*, deprecated) static let owner_change = EventType.ownerChange /* GDK_OWNER_CHANGE */
    /// a pointer or keyboard grab was broken. This event type
    ///   was added in 2.8.
    @available(*, deprecated) static let grab_broken = EventType.grabBroken /* GDK_GRAB_BROKEN */
    /// A new touch event sequence has just started. This event
    ///   type was added in 3.4.
    @available(*, deprecated) static let touch_begin = EventType.touchBegin /* GDK_TOUCH_BEGIN */
    /// A touch event sequence has been updated. This event type
    ///   was added in 3.4.
    @available(*, deprecated) static let touch_update = EventType.touchUpdate /* GDK_TOUCH_UPDATE */
    /// A touch event sequence has finished. This event type
    ///   was added in 3.4.
    @available(*, deprecated) static let touch_end = EventType.touchEnd /* GDK_TOUCH_END */
    /// A touch event sequence has been canceled. This event type
    ///   was added in 3.4.
    @available(*, deprecated) static let touch_cancel = EventType.touchCancel /* GDK_TOUCH_CANCEL */
    /// A touchpad swipe gesture event, the current state
    ///   is determined by its phase field. This event type was added in 3.18.
    @available(*, deprecated) static let touchpad_swipe = EventType.touchpadSwipe /* GDK_TOUCHPAD_SWIPE */
    /// A touchpad pinch gesture event, the current state
    ///   is determined by its phase field. This event type was added in 3.18.
    @available(*, deprecated) static let touchpad_pinch = EventType.touchpadPinch /* GDK_TOUCHPAD_PINCH */
    /// A tablet pad button press event. This event type
    ///   was added in 3.22.
    @available(*, deprecated) static let pad_button_press = EventType.padButtonPress /* GDK_PAD_BUTTON_PRESS */
    /// A tablet pad button release event. This event type
    ///   was added in 3.22.
    @available(*, deprecated) static let pad_button_release = EventType.padButtonRelease /* GDK_PAD_BUTTON_RELEASE */
    /// A tablet pad axis event from a "ring". This event type was
    ///   added in 3.22.
    @available(*, deprecated) static let pad_ring = EventType.padRing /* GDK_PAD_RING */
    /// A tablet pad axis event from a "strip". This event type was
    ///   added in 3.22.
    @available(*, deprecated) static let pad_strip = EventType.padStrip /* GDK_PAD_STRIP */
    /// A tablet pad group mode change. This event type was
    ///   added in 3.22.
    @available(*, deprecated) static let pad_group_mode = EventType.padGroupMode /* GDK_PAD_GROUP_MODE */
    /// marks the end of the GdkEventType enumeration. Added in 2.18
    @available(*, deprecated) static let event_last = EventType.eventLast /* GDK_EVENT_LAST */
}
func cast<I: BinaryInteger>(_ param: I) -> EventType { EventType(rawValue: cast(param)) }
func cast(_ param: EventType) -> UInt32 { cast(param.rawValue) }


/// Specifies the result of applying a `GdkFilterFunc` to a native event.
public typealias FilterReturn = GdkFilterReturn

public extension FilterReturn {
    /// event not handled, continue processing.
    static let `continue` = GDK_FILTER_CONTINUE /* 0 */
    /// native event translated into a GDK event and stored
    ///  in the `event` structure that was passed in.
    static let translate = GDK_FILTER_TRANSLATE /* 1 */
    /// event handled, terminate processing.
    static let remove = GDK_FILTER_REMOVE /* 2 */
    /// event not handled, continue processing.
    @available(*, deprecated) static let continue_ = FilterReturn.`continue` /* GDK_FILTER_CONTINUE */
}
func cast<I: BinaryInteger>(_ param: I) -> FilterReturn { FilterReturn(rawValue: cast(param)) }
func cast(_ param: FilterReturn) -> UInt32 { cast(param.rawValue) }


/// Indicates which monitor (in a multi-head setup) a window should span over
/// when in fullscreen mode.
public typealias FullscreenMode = GdkFullscreenMode

public extension FullscreenMode {
    /// Fullscreen on current monitor only.
    static let currentMonitor = GDK_FULLSCREEN_ON_CURRENT_MONITOR /* 0 */
    /// Span across all monitors when fullscreen.
    static let allMonitors = GDK_FULLSCREEN_ON_ALL_MONITORS /* 1 */
    /// Fullscreen on current monitor only.
    @available(*, deprecated) static let current_monitor = FullscreenMode.currentMonitor /* GDK_FULLSCREEN_ON_CURRENT_MONITOR */
    /// Span across all monitors when fullscreen.
    @available(*, deprecated) static let all_monitors = FullscreenMode.allMonitors /* GDK_FULLSCREEN_ON_ALL_MONITORS */
}
func cast<I: BinaryInteger>(_ param: I) -> FullscreenMode { FullscreenMode(rawValue: cast(param)) }
func cast(_ param: FullscreenMode) -> UInt32 { cast(param.rawValue) }


/// Error enumeration for `GdkGLContext`.
public typealias GLError = GdkGLError

public extension GLError {
    /// OpenGL support is not available
    static let notAvailable = GDK_GL_ERROR_NOT_AVAILABLE /* 0 */
    /// The requested visual format is not supported
    static let unsupportedFormat = GDK_GL_ERROR_UNSUPPORTED_FORMAT /* 1 */
    /// The requested profile is not supported
    static let unsupportedProfile = GDK_GL_ERROR_UNSUPPORTED_PROFILE /* 2 */
    /// OpenGL support is not available
    @available(*, deprecated) static let not_available = GLError.notAvailable /* GDK_GL_ERROR_NOT_AVAILABLE */
    /// The requested visual format is not supported
    @available(*, deprecated) static let unsupported_format = GLError.unsupportedFormat /* GDK_GL_ERROR_UNSUPPORTED_FORMAT */
    /// The requested profile is not supported
    @available(*, deprecated) static let unsupported_profile = GLError.unsupportedProfile /* GDK_GL_ERROR_UNSUPPORTED_PROFILE */
}
func cast<I: BinaryInteger>(_ param: I) -> GLError { GLError(rawValue: cast(param)) }
func cast(_ param: GLError) -> UInt32 { cast(param.rawValue) }


/// Defines how device grabs interact with other devices.
public typealias GrabOwnership = GdkGrabOwnership

public extension GrabOwnership {
    /// All other devices’ events are allowed.
    static let `none` = GDK_OWNERSHIP_NONE /* 0 */
    /// Other devices’ events are blocked for the grab window.
    static let window = GDK_OWNERSHIP_WINDOW /* 1 */
    /// Other devices’ events are blocked for the whole application.
    static let application = GDK_OWNERSHIP_APPLICATION /* 2 */
    /// All other devices’ events are allowed.
    @available(*, deprecated) static let none_ = GrabOwnership.`none` /* GDK_OWNERSHIP_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> GrabOwnership { GrabOwnership(rawValue: cast(param)) }
func cast(_ param: GrabOwnership) -> UInt32 { cast(param.rawValue) }


/// Returned by `gdk_device_grab()`, `gdk_pointer_grab()` and `gdk_keyboard_grab()` to
/// indicate success or the reason for the failure of the grab attempt.
public typealias GrabStatus = GdkGrabStatus

public extension GrabStatus {
    /// the resource was successfully grabbed.
    static let success = GDK_GRAB_SUCCESS /* 0 */
    /// the resource is actively grabbed by another client.
    static let alreadyGrabbed = GDK_GRAB_ALREADY_GRABBED /* 1 */
    /// the resource was grabbed more recently than the
    ///  specified time.
    static let invalidTime = GDK_GRAB_INVALID_TIME /* 2 */
    /// the grab window or the `confine_to` window are not
    ///  viewable.
    static let notViewable = GDK_GRAB_NOT_VIEWABLE /* 3 */
    /// the resource is frozen by an active grab of another client.
    static let frozen = GDK_GRAB_FROZEN /* 4 */
    /// the grab failed for some other reason. Since 3.16
    static let failed = GDK_GRAB_FAILED /* 5 */
    /// the resource is actively grabbed by another client.
    @available(*, deprecated) static let already_grabbed = GrabStatus.alreadyGrabbed /* GDK_GRAB_ALREADY_GRABBED */
    /// the resource was grabbed more recently than the
    ///  specified time.
    @available(*, deprecated) static let invalid_time = GrabStatus.invalidTime /* GDK_GRAB_INVALID_TIME */
    /// the grab window or the `confine_to` window are not
    ///  viewable.
    @available(*, deprecated) static let not_viewable = GrabStatus.notViewable /* GDK_GRAB_NOT_VIEWABLE */
}
func cast<I: BinaryInteger>(_ param: I) -> GrabStatus { GrabStatus(rawValue: cast(param)) }
func cast(_ param: GrabStatus) -> UInt32 { cast(param.rawValue) }


/// Defines the reference point of a window and the meaning of coordinates
/// passed to `gtk_window_move()`. See `gtk_window_move()` and the "implementation
/// notes" section of the
/// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec)
/// specification for more details.
public typealias Gravity = GdkGravity

public extension Gravity {
    /// the reference point is at the top left corner.
    static let northWest = GDK_GRAVITY_NORTH_WEST /* 1 */
    /// the reference point is in the middle of the top edge.
    static let north = GDK_GRAVITY_NORTH /* 2 */
    /// the reference point is at the top right corner.
    static let northEast = GDK_GRAVITY_NORTH_EAST /* 3 */
    /// the reference point is at the middle of the left edge.
    static let west = GDK_GRAVITY_WEST /* 4 */
    /// the reference point is at the center of the window.
    static let center = GDK_GRAVITY_CENTER /* 5 */
    /// the reference point is at the middle of the right edge.
    static let east = GDK_GRAVITY_EAST /* 6 */
    /// the reference point is at the lower left corner.
    static let southWest = GDK_GRAVITY_SOUTH_WEST /* 7 */
    /// the reference point is at the middle of the lower edge.
    static let south = GDK_GRAVITY_SOUTH /* 8 */
    /// the reference point is at the lower right corner.
    static let southEast = GDK_GRAVITY_SOUTH_EAST /* 9 */
    /// the reference point is at the top left corner of the
    ///  window itself, ignoring window manager decorations.
    static let `static` = GDK_GRAVITY_STATIC /* 10 */
    /// the reference point is at the top left corner.
    @available(*, deprecated) static let north_west = Gravity.northWest /* GDK_GRAVITY_NORTH_WEST */
    /// the reference point is at the top right corner.
    @available(*, deprecated) static let north_east = Gravity.northEast /* GDK_GRAVITY_NORTH_EAST */
    /// the reference point is at the lower left corner.
    @available(*, deprecated) static let south_west = Gravity.southWest /* GDK_GRAVITY_SOUTH_WEST */
    /// the reference point is at the lower right corner.
    @available(*, deprecated) static let south_east = Gravity.southEast /* GDK_GRAVITY_SOUTH_EAST */
    /// the reference point is at the top left corner of the
    ///  window itself, ignoring window manager decorations.
    @available(*, deprecated) static let static_ = Gravity.`static` /* GDK_GRAVITY_STATIC */
}
func cast<I: BinaryInteger>(_ param: I) -> Gravity { Gravity(rawValue: cast(param)) }
func cast(_ param: Gravity) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> InputMode { InputMode(rawValue: cast(param)) }
func cast(_ param: InputMode) -> UInt32 { cast(param.rawValue) }


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
    static let tabletPad = GDK_SOURCE_TABLET_PAD /* 8 */
    /// the device is a "pad", a collection of buttons,
    ///     rings and strips found in drawing tablets. This device type has been
    ///     added in 3.22.
    @available(*, deprecated) static let tablet_pad = InputSource.tabletPad /* GDK_SOURCE_TABLET_PAD */
}
func cast<I: BinaryInteger>(_ param: I) -> InputSource { InputSource(rawValue: cast(param)) }
func cast(_ param: InputSource) -> UInt32 { cast(param.rawValue) }


/// This enum is used with `gdk_keymap_get_modifier_mask()`
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
    static let primaryAccelerator = GDK_MODIFIER_INTENT_PRIMARY_ACCELERATOR /* 0 */
    /// the modifier used to invoke context menus.
    ///  Note that mouse button 3 always triggers context menus. When this modifier
    ///  is not 0, it additionally triggers context menus when used with mouse button 1.
    static let contextMenu = GDK_MODIFIER_INTENT_CONTEXT_MENU /* 1 */
    /// the modifier used to extend selections
    ///  using `modifier`-click or `modifier`-cursor-key
    static let extendSelection = GDK_MODIFIER_INTENT_EXTEND_SELECTION /* 2 */
    /// the modifier used to modify selections,
    ///  which in most cases means toggling the clicked item into or out of the selection.
    static let modifySelection = GDK_MODIFIER_INTENT_MODIFY_SELECTION /* 3 */
    /// when any of these modifiers is pressed, the
    ///  key event cannot produce a symbol directly. This is meant to be used for
    ///  input methods, and for use cases like typeahead search.
    static let noTextInput = GDK_MODIFIER_INTENT_NO_TEXT_INPUT /* 4 */
    /// the modifier that switches between keyboard
    ///  groups (AltGr on X11/Windows and Option/Alt on OS X).
    static let shiftGroup = GDK_MODIFIER_INTENT_SHIFT_GROUP /* 5 */
    /// The set of modifier masks accepted
    /// as modifiers in accelerators. Needed because Command is mapped to MOD2 on
    /// OSX, which is widely used, but on X11 MOD2 is NumLock and using that for a
    /// mod key is problematic at best.
    /// Ref: https://bugzilla.gnome.org/show_bug.cgi?id=736125.
    static let defaultModMask = GDK_MODIFIER_INTENT_DEFAULT_MOD_MASK /* 6 */
    /// the primary modifier used to invoke
    ///  menu accelerators.
    @available(*, deprecated) static let primary_accelerator = ModifierIntent.primaryAccelerator /* GDK_MODIFIER_INTENT_PRIMARY_ACCELERATOR */
    /// the modifier used to invoke context menus.
    ///  Note that mouse button 3 always triggers context menus. When this modifier
    ///  is not 0, it additionally triggers context menus when used with mouse button 1.
    @available(*, deprecated) static let context_menu = ModifierIntent.contextMenu /* GDK_MODIFIER_INTENT_CONTEXT_MENU */
    /// the modifier used to extend selections
    ///  using `modifier`-click or `modifier`-cursor-key
    @available(*, deprecated) static let extend_selection = ModifierIntent.extendSelection /* GDK_MODIFIER_INTENT_EXTEND_SELECTION */
    /// the modifier used to modify selections,
    ///  which in most cases means toggling the clicked item into or out of the selection.
    @available(*, deprecated) static let modify_selection = ModifierIntent.modifySelection /* GDK_MODIFIER_INTENT_MODIFY_SELECTION */
    /// when any of these modifiers is pressed, the
    ///  key event cannot produce a symbol directly. This is meant to be used for
    ///  input methods, and for use cases like typeahead search.
    @available(*, deprecated) static let no_text_input = ModifierIntent.noTextInput /* GDK_MODIFIER_INTENT_NO_TEXT_INPUT */
    /// the modifier that switches between keyboard
    ///  groups (AltGr on X11/Windows and Option/Alt on OS X).
    @available(*, deprecated) static let shift_group = ModifierIntent.shiftGroup /* GDK_MODIFIER_INTENT_SHIFT_GROUP */
    /// The set of modifier masks accepted
    /// as modifiers in accelerators. Needed because Command is mapped to MOD2 on
    /// OSX, which is widely used, but on X11 MOD2 is NumLock and using that for a
    /// mod key is problematic at best.
    /// Ref: https://bugzilla.gnome.org/show_bug.cgi?id=736125.
    @available(*, deprecated) static let default_mod_mask = ModifierIntent.defaultModMask /* GDK_MODIFIER_INTENT_DEFAULT_MOD_MASK */
}
func cast<I: BinaryInteger>(_ param: I) -> ModifierIntent { ModifierIntent(rawValue: cast(param)) }
func cast(_ param: ModifierIntent) -> UInt32 { cast(param.rawValue) }


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
    static let nonlinearVirtual = GDK_NOTIFY_NONLINEAR_VIRTUAL /* 4 */
    /// an unknown type of enter/leave event occurred.
    static let unknown = GDK_NOTIFY_UNKNOWN /* 5 */
    /// the pointer moves between two windows
    ///   which are not ancestors of each other and the window is part of
    ///   the ancestor chain between one of these windows and their least
    ///   common ancestor.
    @available(*, deprecated) static let nonlinear_virtual = NotifyType.nonlinearVirtual /* GDK_NOTIFY_NONLINEAR_VIRTUAL */
}
func cast<I: BinaryInteger>(_ param: I) -> NotifyType { NotifyType(rawValue: cast(param)) }
func cast(_ param: NotifyType) -> UInt32 { cast(param.rawValue) }


/// Specifies why a selection ownership was changed.
public typealias OwnerChange = GdkOwnerChange

public extension OwnerChange {
    /// some other app claimed the ownership
    static let newOwner = GDK_OWNER_CHANGE_NEW_OWNER /* 0 */
    /// the window was destroyed
    static let destroy = GDK_OWNER_CHANGE_DESTROY /* 1 */
    /// the client was closed
    static let close = GDK_OWNER_CHANGE_CLOSE /* 2 */
    /// some other app claimed the ownership
    @available(*, deprecated) static let new_owner = OwnerChange.newOwner /* GDK_OWNER_CHANGE_NEW_OWNER */
}
func cast<I: BinaryInteger>(_ param: I) -> OwnerChange { OwnerChange(rawValue: cast(param)) }
func cast(_ param: OwnerChange) -> UInt32 { cast(param.rawValue) }


/// Describes how existing data is combined with new data when
/// using `gdk_property_change()`.
public typealias PropMode = GdkPropMode

public extension PropMode {
    /// the new data replaces the existing data.
    static let replace = GDK_PROP_MODE_REPLACE /* 0 */
    /// the new data is prepended to the existing data.
    static let prepend = GDK_PROP_MODE_PREPEND /* 1 */
    /// the new data is appended to the existing data.
    static let append = GDK_PROP_MODE_APPEND /* 2 */

}
func cast<I: BinaryInteger>(_ param: I) -> PropMode { PropMode(rawValue: cast(param)) }
func cast(_ param: PropMode) -> UInt32 { cast(param.rawValue) }


/// Specifies the type of a property change for a `GdkEventProperty`.
public typealias PropertyState = GdkPropertyState

public extension PropertyState {
    /// the property value was changed.
    static let newValue = GDK_PROPERTY_NEW_VALUE /* 0 */
    /// the property was deleted.
    static let delete = GDK_PROPERTY_DELETE /* 1 */
    /// the property value was changed.
    @available(*, deprecated) static let new_value = PropertyState.newValue /* GDK_PROPERTY_NEW_VALUE */
}
func cast<I: BinaryInteger>(_ param: I) -> PropertyState { PropertyState(rawValue: cast(param)) }
func cast(_ param: PropertyState) -> UInt32 { cast(param.rawValue) }


/// Specifies the direction for `GdkEventScroll`.
public typealias ScrollDirection = GdkScrollDirection

public extension ScrollDirection {
    /// the window is scrolled up.
    static let up = GDK_SCROLL_UP /* 0 */
    /// the window is scrolled down.
    static let down = GDK_SCROLL_DOWN /* 1 */
    /// the window is scrolled to the left.
    static let `left` = GDK_SCROLL_LEFT /* 2 */
    /// the window is scrolled to the right.
    static let `right` = GDK_SCROLL_RIGHT /* 3 */
    /// the scrolling is determined by the delta values
    ///   in `GdkEventScroll`. See `gdk_event_get_scroll_deltas()`. Since: 3.4
    static let smooth = GDK_SCROLL_SMOOTH /* 4 */
    /// the window is scrolled to the left.
    @available(*, deprecated) static let left_ = ScrollDirection.`left` /* GDK_SCROLL_LEFT */
    /// the window is scrolled to the right.
    @available(*, deprecated) static let right_ = ScrollDirection.`right` /* GDK_SCROLL_RIGHT */
}
func cast<I: BinaryInteger>(_ param: I) -> ScrollDirection { ScrollDirection(rawValue: cast(param)) }
func cast(_ param: ScrollDirection) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> SettingAction { SettingAction(rawValue: cast(param)) }
func cast(_ param: SettingAction) -> UInt32 { cast(param.rawValue) }


public typealias Status = GdkStatus

public extension Status {
    static let ok = GDK_OK /* 0 */
    static let error = GDK_ERROR /* -1 */
    static let errorParam = GDK_ERROR_PARAM /* -2 */
    static let errorFile = GDK_ERROR_FILE /* -3 */
    static let errorMem = GDK_ERROR_MEM /* -4 */
    @available(*, deprecated) static let error_param = Status.errorParam /* GDK_ERROR_PARAM */
    @available(*, deprecated) static let error_file = Status.errorFile /* GDK_ERROR_FILE */
    @available(*, deprecated) static let error_mem = Status.errorMem /* GDK_ERROR_MEM */
}
func cast<I: BinaryInteger>(_ param: I) -> Status { Status(rawValue: cast(param)) }
func cast(_ param: Status) -> UInt32 { cast(param.rawValue) }


/// This enumeration describes how the red, green and blue components
/// of physical pixels on an output device are laid out.
public typealias SubpixelLayout = GdkSubpixelLayout

public extension SubpixelLayout {
    /// The layout is not known
    static let unknown = GDK_SUBPIXEL_LAYOUT_UNKNOWN /* 0 */
    /// Not organized in this way
    static let `none` = GDK_SUBPIXEL_LAYOUT_NONE /* 1 */
    /// The layout is horizontal, the order is RGB
    static let horizontalRgb = GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB /* 2 */
    /// The layout is horizontal, the order is BGR
    static let horizontalBgr = GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR /* 3 */
    /// The layout is vertical, the order is RGB
    static let verticalRgb = GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB /* 4 */
    /// The layout is vertical, the order is BGR
    static let verticalBgr = GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR /* 5 */
    /// Not organized in this way
    @available(*, deprecated) static let none_ = SubpixelLayout.`none` /* GDK_SUBPIXEL_LAYOUT_NONE */
    /// The layout is horizontal, the order is RGB
    @available(*, deprecated) static let horizontal_rgb = SubpixelLayout.horizontalRgb /* GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB */
    /// The layout is horizontal, the order is BGR
    @available(*, deprecated) static let horizontal_bgr = SubpixelLayout.horizontalBgr /* GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR */
    /// The layout is vertical, the order is RGB
    @available(*, deprecated) static let vertical_rgb = SubpixelLayout.verticalRgb /* GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB */
    /// The layout is vertical, the order is BGR
    @available(*, deprecated) static let vertical_bgr = SubpixelLayout.verticalBgr /* GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR */
}
func cast<I: BinaryInteger>(_ param: I) -> SubpixelLayout { SubpixelLayout(rawValue: cast(param)) }
func cast(_ param: SubpixelLayout) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> TouchpadGesturePhase { TouchpadGesturePhase(rawValue: cast(param)) }
func cast(_ param: TouchpadGesturePhase) -> UInt32 { cast(param.rawValue) }


/// Specifies the visiblity status of a window for a `GdkEventVisibility`.
public typealias VisibilityState = GdkVisibilityState

public extension VisibilityState {
    /// the window is completely visible.
    static let unobscured = GDK_VISIBILITY_UNOBSCURED /* 0 */
    /// the window is partially visible.
    static let partial = GDK_VISIBILITY_PARTIAL /* 1 */
    /// the window is not visible at all.
    static let fullyObscured = GDK_VISIBILITY_FULLY_OBSCURED /* 2 */
    /// the window is not visible at all.
    @available(*, deprecated) static let fully_obscured = VisibilityState.fullyObscured /* GDK_VISIBILITY_FULLY_OBSCURED */
}
func cast<I: BinaryInteger>(_ param: I) -> VisibilityState { VisibilityState(rawValue: cast(param)) }
func cast(_ param: VisibilityState) -> UInt32 { cast(param.rawValue) }


/// A set of values that describe the manner in which the pixel values
/// for a visual are converted into RGB values for display.
public typealias VisualType = GdkVisualType

public extension VisualType {
    /// Each pixel value indexes a grayscale value
    ///     directly.
    static let staticGray = GDK_VISUAL_STATIC_GRAY /* 0 */
    /// Each pixel is an index into a color map that
    ///     maps pixel values into grayscale values. The color map can be
    ///     changed by an application.
    static let grayscale = GDK_VISUAL_GRAYSCALE /* 1 */
    /// Each pixel value is an index into a predefined,
    ///     unmodifiable color map that maps pixel values into RGB values.
    static let staticColor = GDK_VISUAL_STATIC_COLOR /* 2 */
    /// Each pixel is an index into a color map that
    ///     maps pixel values into rgb values. The color map can be changed by
    ///     an application.
    static let pseudoColor = GDK_VISUAL_PSEUDO_COLOR /* 3 */
    /// Each pixel value directly contains red, green,
    ///     and blue components. Use `gdk_visual_get_red_pixel_details()`, etc,
    ///     to obtain information about how the components are assembled into
    ///     a pixel value.
    static let trueColor = GDK_VISUAL_TRUE_COLOR /* 4 */
    /// Each pixel value contains red, green, and blue
    ///     components as for `GDK_VISUAL_TRUE_COLOR`, but the components are
    ///     mapped via a color table into the final output table instead of
    ///     being converted directly.
    static let directColor = GDK_VISUAL_DIRECT_COLOR /* 5 */
    /// Each pixel value indexes a grayscale value
    ///     directly.
    @available(*, deprecated) static let static_gray = VisualType.staticGray /* GDK_VISUAL_STATIC_GRAY */
    /// Each pixel value is an index into a predefined,
    ///     unmodifiable color map that maps pixel values into RGB values.
    @available(*, deprecated) static let static_color = VisualType.staticColor /* GDK_VISUAL_STATIC_COLOR */
    /// Each pixel is an index into a color map that
    ///     maps pixel values into rgb values. The color map can be changed by
    ///     an application.
    @available(*, deprecated) static let pseudo_color = VisualType.pseudoColor /* GDK_VISUAL_PSEUDO_COLOR */
    /// Each pixel value directly contains red, green,
    ///     and blue components. Use `gdk_visual_get_red_pixel_details()`, etc,
    ///     to obtain information about how the components are assembled into
    ///     a pixel value.
    @available(*, deprecated) static let true_color = VisualType.trueColor /* GDK_VISUAL_TRUE_COLOR */
    /// Each pixel value contains red, green, and blue
    ///     components as for `GDK_VISUAL_TRUE_COLOR`, but the components are
    ///     mapped via a color table into the final output table instead of
    ///     being converted directly.
    @available(*, deprecated) static let direct_color = VisualType.directColor /* GDK_VISUAL_DIRECT_COLOR */
}
func cast<I: BinaryInteger>(_ param: I) -> VisualType { VisualType(rawValue: cast(param)) }
func cast(_ param: VisualType) -> UInt32 { cast(param.rawValue) }


/// Determines a window edge or corner.
public typealias WindowEdge = GdkWindowEdge

public extension WindowEdge {
    /// the top left corner.
    static let northWest = GDK_WINDOW_EDGE_NORTH_WEST /* 0 */
    /// the top edge.
    static let north = GDK_WINDOW_EDGE_NORTH /* 1 */
    /// the top right corner.
    static let northEast = GDK_WINDOW_EDGE_NORTH_EAST /* 2 */
    /// the left edge.
    static let west = GDK_WINDOW_EDGE_WEST /* 3 */
    /// the right edge.
    static let east = GDK_WINDOW_EDGE_EAST /* 4 */
    /// the lower left corner.
    static let southWest = GDK_WINDOW_EDGE_SOUTH_WEST /* 5 */
    /// the lower edge.
    static let south = GDK_WINDOW_EDGE_SOUTH /* 6 */
    /// the lower right corner.
    static let southEast = GDK_WINDOW_EDGE_SOUTH_EAST /* 7 */
    /// the top left corner.
    @available(*, deprecated) static let north_west = WindowEdge.northWest /* GDK_WINDOW_EDGE_NORTH_WEST */
    /// the top right corner.
    @available(*, deprecated) static let north_east = WindowEdge.northEast /* GDK_WINDOW_EDGE_NORTH_EAST */
    /// the lower left corner.
    @available(*, deprecated) static let south_west = WindowEdge.southWest /* GDK_WINDOW_EDGE_SOUTH_WEST */
    /// the lower right corner.
    @available(*, deprecated) static let south_east = WindowEdge.southEast /* GDK_WINDOW_EDGE_SOUTH_EAST */
}
func cast<I: BinaryInteger>(_ param: I) -> WindowEdge { WindowEdge(rawValue: cast(param)) }
func cast(_ param: WindowEdge) -> UInt32 { cast(param.rawValue) }


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
    /// foreign window (see `gdk_window_foreign_new()`)
    static let foreign = GDK_WINDOW_FOREIGN /* 4 */
    /// offscreen window (see
    ///  [Offscreen Windows](#OFFSCREEN-WINDOWS)). Since 2.18
    static let offscreen = GDK_WINDOW_OFFSCREEN /* 5 */
    /// subsurface-based window; This window is visually
    ///  tied to a toplevel, and is moved/stacked with it. Currently this window
    ///  type is only implemented in Wayland. Since 3.14
    static let subsurface = GDK_WINDOW_SUBSURFACE /* 6 */

}
func cast<I: BinaryInteger>(_ param: I) -> WindowType { WindowType(rawValue: cast(param)) }
func cast(_ param: WindowType) -> UInt32 { cast(param.rawValue) }


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
    static let dropdownMenu = GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU /* 8 */
    /// A menu that does not belong to a menubar,
    ///  e.g. a context menu.
    static let popupMenu = GDK_WINDOW_TYPE_HINT_POPUP_MENU /* 9 */
    /// A tooltip.
    static let tooltip = GDK_WINDOW_TYPE_HINT_TOOLTIP /* 10 */
    /// A notification - typically a “bubble”
    ///  that belongs to a status icon.
    static let notification = GDK_WINDOW_TYPE_HINT_NOTIFICATION /* 11 */
    /// A popup from a combo box.
    static let combo = GDK_WINDOW_TYPE_HINT_COMBO /* 12 */
    /// A window that is used to implement a DND cursor.
    static let dnd = GDK_WINDOW_TYPE_HINT_DND /* 13 */
    /// A menu that belongs to a menubar.
    @available(*, deprecated) static let dropdown_menu = WindowTypeHint.dropdownMenu /* GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU */
    /// A menu that does not belong to a menubar,
    ///  e.g. a context menu.
    @available(*, deprecated) static let popup_menu = WindowTypeHint.popupMenu /* GDK_WINDOW_TYPE_HINT_POPUP_MENU */
}
func cast<I: BinaryInteger>(_ param: I) -> WindowTypeHint { WindowTypeHint(rawValue: cast(param)) }
func cast(_ param: WindowTypeHint) -> UInt32 { cast(param.rawValue) }


/// `GDK_INPUT_OUTPUT` windows are the standard kind of window you might expect.
/// Such windows receive events and are also displayed on screen.
/// `GDK_INPUT_ONLY` windows are invisible; they are usually placed above other
/// windows in order to trap or filter the events. You can’t draw on
/// `GDK_INPUT_ONLY` windows.
public typealias WindowWindowClass = GdkWindowWindowClass

public extension WindowWindowClass {
    /// window for graphics and events
    static let inputOutput = GDK_INPUT_OUTPUT /* 0 */
    /// window for events only
    static let inputOnly = GDK_INPUT_ONLY /* 1 */
    /// window for graphics and events
    @available(*, deprecated) static let input_output = WindowWindowClass.inputOutput /* GDK_INPUT_OUTPUT */
    /// window for events only
    @available(*, deprecated) static let input_only = WindowWindowClass.inputOnly /* GDK_INPUT_ONLY */
}
func cast<I: BinaryInteger>(_ param: I) -> WindowWindowClass { WindowWindowClass(rawValue: cast(param)) }
func cast(_ param: WindowWindowClass) -> UInt32 { cast(param.rawValue) }
