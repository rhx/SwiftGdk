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

/// Checks all open displays for a `GdkEvent` to process,to be processed
/// on, fetching events from the windowing system if necessary.
/// See `gdk_display_get_event()`.
@inlinable public func get() -> EventRef! {
    guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_get())) else { return nil }
    return rv
}




/// Sets the function to call to handle all events from GDK.
/// 
/// Note that GTK+ uses this to install its own event handler, so it is
/// usually not useful for GTK+ applications. (Although an application
/// can call this function then call `gtk_main_do_event()` to pass
/// events to GTK+.)
@inlinable public func handlerSet(`func`: GdkEventFunc?, data: gpointer! = nil, notify: GDestroyNotify?) {
    gdk_event_handler_set(`func`, data, notify)

}




/// If there is an event waiting in the event queue of some open
/// display, returns a copy of it. See `gdk_display_peek_event()`.
@inlinable public func peek() -> EventRef! {
    guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_peek())) else { return nil }
    return rv
}




/// Request more motion notifies if `event` is a motion notify hint event.
/// 
/// This function should be used instead of `gdk_window_get_pointer()` to
/// request further motion notifies, because it also works for extension
/// events where motion notifies are provided for devices other than the
/// core pointer. Coordinate extraction, processing and requesting more
/// motion events from a `GDK_MOTION_NOTIFY` event usually works like this:
/// 
/// (C Language Example):
/// ```C
/// {
///   // motion_event handler
///   x = motion_event->x;
///   y = motion_event->y;
///   // handle (x,y) motion
///   gdk_event_request_motions (motion_event); // handles is_hint events
/// }
/// ```
/// 
@inlinable public func requestMotions<EventMotionT: EventMotionProtocol>(event: EventMotionT) {
    gdk_event_request_motions(event._ptr)

}




/// Appends gdk option entries to the passed in option group. This is
/// not public API and must not be used by applications.
///
/// **add_option_entries_libgtk_only is deprecated:**
/// This symbol was never meant to be used outside
///   of GTK+
@available(*, deprecated) @inlinable public func addOptionEntriesLibgtkOnly<OptionGroupT: GLib.OptionGroupProtocol>(group: OptionGroupT) {
    gdk_add_option_entries_libgtk_only(group.option_group_ptr)

}




/// Finds or creates an atom corresponding to a given string.
@inlinable public func atomIntern(atomName: UnsafePointer<gchar>!, onlyIfExists: Bool) -> GdkAtom! {
    let rv = gdk_atom_intern(atomName, gboolean((onlyIfExists) ? 1 : 0))
    return rv
}




/// Finds or creates an atom corresponding to a given string.
/// 
/// Note that this function is identical to `gdk_atom_intern()` except
/// that if a new `GdkAtom` is created the string itself is used rather
/// than a copy. This saves memory, but can only be used if the string
/// will always exist. It can be used with statically
/// allocated strings in the main program, but not with statically
/// allocated memory in dynamically loaded modules, if you expect to
/// ever unload the module again (e.g. do not use this function in
/// GTK+ theme engines).
@inlinable public func atomInternStaticString(atomName: UnsafePointer<gchar>!) -> GdkAtom! {
    let rv = gdk_atom_intern_static_string(atomName)
    return rv
}




/// Emits a short beep on the default display.
@inlinable @available(*, deprecated) public func beep() {
    gdk_beep()

}




/// Creates a Cairo context for drawing to `window`.
/// 
/// Note that calling `cairo_reset_clip()` on the resulting `cairo_t` will
/// produce undefined results, so avoid it at all costs.
/// 
/// Typically, this function is used to draw on a `GdkWindow` out of the paint
/// cycle of the toolkit; this should be avoided, as it breaks various assumptions
/// and optimizations.
/// 
/// If you are drawing on a native `GdkWindow` in response to a `GDK_EXPOSE` event
/// you should use `gdk_window_begin_draw_frame()` and `gdk_drawing_context_get_cairo_context()`
/// instead. GTK will automatically do this for you when drawing a widget.
///
/// **cairo_create is deprecated:**
/// Use gdk_window_begin_draw_frame() and
///   gdk_drawing_context_get_cairo_context() instead
@available(*, deprecated) @inlinable public func cairoCreate<WindowT: WindowProtocol>(window: WindowT) -> Cairo.ContextRef! {
    guard let rv = Cairo.ContextRef(gdk_cairo_create(window.window_ptr)) else { return nil }
    return rv
}




/// This is the main way to draw GL content in GTK+. It takes a render buffer ID
/// (`source_type` == `GL_RENDERBUFFER`) or a texture id (`source_type` == `GL_TEXTURE`)
/// and draws it onto `cr` with an OVER operation, respecting the current clip.
/// The top left corner of the rectangle specified by `x`, `y`, `width` and `height`
/// will be drawn at the current (0,0) position of the cairo_t.
/// 
/// This will work for *all* cairo_t, as long as `window` is realized, but the
/// fallback implementation that reads back the pixels from the buffer may be
/// used in the general case. In the case of direct drawing to a window with
/// no special effects applied to `cr` it will however use a more efficient
/// approach.
/// 
/// For `GL_RENDERBUFFER` the code will always fall back to software for buffers
/// with alpha components, so make sure you use `GL_TEXTURE` if using alpha.
/// 
/// Calling this may change the current GL context.
@inlinable public func cairoDrawFromGl<ContextT: Cairo.ContextProtocol, WindowT: WindowProtocol>(cr: ContextT, window: WindowT, source: Int, sourceType: Int, bufferScale: Int, x: Int, y: Int, width: Int, height: Int) {
    gdk_cairo_draw_from_gl(cr._ptr, window.window_ptr, gint(source), gint(sourceType), gint(bufferScale), gint(x), gint(y), gint(width), gint(height))

}




/// This is a convenience function around `cairo_clip_extents()`.
/// It rounds the clip extents to integer coordinates and returns
/// a boolean indicating if a clip area exists.
@inlinable public func cairoGetClipRectangle<ContextT: Cairo.ContextProtocol>(cr: ContextT, rect: RectangleRef? = nil) -> Bool {
    let rv = ((gdk_cairo_get_clip_rectangle(cr._ptr, rect?.rectangle_ptr)) != 0)
    return rv
}
/// This is a convenience function around `cairo_clip_extents()`.
/// It rounds the clip extents to integer coordinates and returns
/// a boolean indicating if a clip area exists.
@inlinable public func cairoGetClipRectangle<ContextT: Cairo.ContextProtocol, RectangleT: RectangleProtocol>(cr: ContextT, rect: RectangleT?) -> Bool {
    let rv = ((gdk_cairo_get_clip_rectangle(cr._ptr, rect?.rectangle_ptr)) != 0)
    return rv
}




/// Retrieves the `GdkDrawingContext` that created the Cairo
/// context `cr`.
@inlinable public func cairoGetDrawingContext<ContextT: Cairo.ContextProtocol>(cr: ContextT) -> DrawingContextRef! {
    guard let rv = DrawingContextRef(gconstpointer: gconstpointer(gdk_cairo_get_drawing_context(cr._ptr))) else { return nil }
    return rv
}




/// Adds the given rectangle to the current path of `cr`.
@inlinable public func cairoRectangle<ContextT: Cairo.ContextProtocol, RectangleT: RectangleProtocol>(cr: ContextT, rectangle: RectangleT) {
    gdk_cairo_rectangle(cr._ptr, rectangle.rectangle_ptr)

}




/// Adds the given region to the current path of `cr`.
@inlinable public func cairoRegion<ContextT: Cairo.ContextProtocol, RegionT: Cairo.RegionProtocol>(cr: ContextT, region: RegionT) {
    gdk_cairo_region(cr._ptr, region._ptr)

}




/// Creates region that describes covers the area where the given
/// `surface` is more than 50% opaque.
/// 
/// This function takes into account device offsets that might be
/// set with `cairo_surface_set_device_offset()`.
@inlinable public func cairoRegionCreateFrom<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT) -> Cairo.RegionRef! {
    guard let rv = Cairo.RegionRef(gdk_cairo_region_create_from_surface(surface._ptr)) else { return nil }
    return rv
}




/// Sets the specified `GdkColor` as the source color of `cr`.
///
/// **cairo_set_source_color is deprecated:**
/// Use gdk_cairo_set_source_rgba() instead
@available(*, deprecated) @inlinable public func cairoSetSourceColor<ColorT: ColorProtocol, ContextT: Cairo.ContextProtocol>(cr: ContextT, color: ColorT) {
    gdk_cairo_set_source_color(cr._ptr, color.color_ptr)

}




/// Sets the given pixbuf as the source pattern for `cr`.
/// 
/// The pattern has an extend mode of `CAIRO_EXTEND_NONE` and is aligned
/// so that the origin of `pixbuf` is `pixbuf_x`, `pixbuf_y`.
@inlinable public func cairoSetSourcePixbuf<ContextT: Cairo.ContextProtocol, PixbufT: PixbufProtocol>(cr: ContextT, pixbuf: PixbufT, pixbufX: Double, pixbufY: Double) {
    gdk_cairo_set_source_pixbuf(cr._ptr, pixbuf.pixbuf_ptr, gdouble(pixbufX), gdouble(pixbufY))

}




/// Sets the specified `GdkRGBA` as the source color of `cr`.
@inlinable public func cairoSetSourceRgba<ContextT: Cairo.ContextProtocol, RGBAT: RGBAProtocol>(cr: ContextT, rgba: RGBAT) {
    gdk_cairo_set_source_rgba(cr._ptr, rgba.rgba_ptr)

}




/// Sets the given window as the source pattern for `cr`.
/// 
/// The pattern has an extend mode of `CAIRO_EXTEND_NONE` and is aligned
/// so that the origin of `window` is `x`, `y`. The window contains all its
/// subwindows when rendering.
/// 
/// Note that the contents of `window` are undefined outside of the
/// visible part of `window`, so use this function with care.
@inlinable public func cairoSetSourceWindow<ContextT: Cairo.ContextProtocol, WindowT: WindowProtocol>(cr: ContextT, window: WindowT, x: Double, y: Double) {
    gdk_cairo_set_source_window(cr._ptr, window.window_ptr, gdouble(x), gdouble(y))

}




/// Creates an image surface with the same contents as
/// the pixbuf.
@inlinable public func cairoSurfaceCreateFrom<PixbufT: PixbufProtocol>(pixbuf: PixbufT, scale: Int, `for` window: WindowRef? = nil) -> Cairo.SurfaceRef! {
    guard let rv = Cairo.SurfaceRef(gdk_cairo_surface_create_from_pixbuf(pixbuf.pixbuf_ptr, gint(scale), window?.window_ptr)) else { return nil }
    return rv
}
/// Creates an image surface with the same contents as
/// the pixbuf.
@inlinable public func cairoSurfaceCreateFrom<PixbufT: PixbufProtocol, WindowT: WindowProtocol>(pixbuf: PixbufT, scale: Int, `for` window: WindowT?) -> Cairo.SurfaceRef! {
    guard let rv = Cairo.SurfaceRef(gdk_cairo_surface_create_from_pixbuf(pixbuf.pixbuf_ptr, gint(scale), window?.window_ptr)) else { return nil }
    return rv
}




/// Parses a textual specification of a color and fill in the
/// `red`, `green`, and `blue` fields of a `GdkColor`.
/// 
/// The string can either one of a large set of standard names
/// (taken from the X11 `rgb.txt` file), or it can be a hexadecimal
/// value in the form “\`rgb`” “\`rrggbb`”, “\`rrrgggbbb`” or
/// “\`rrrrggggbbbb`” where “r”, “g” and “b” are hex digits of
/// the red, green, and blue components of the color, respectively.
/// (White in the four forms is “\`fff`”, “\`ffffff`”, “\`fffffffff`”
/// and “\`ffffffffffff`”).
///
/// **color_parse is deprecated:**
/// Use #GdkRGBA
@available(*, deprecated) @inlinable public func colorParse<ColorT: ColorProtocol>(spec: UnsafePointer<gchar>!, color: ColorT) -> Bool {
    let rv = ((gdk_color_parse(spec, color.color_ptr)) != 0)
    return rv
}




/// Disables multidevice support in GDK. This call must happen prior
/// to `gdk_display_open()`, `gtk_init()`, `gtk_init_with_args()` or
/// `gtk_init_check()` in order to take effect.
/// 
/// Most common GTK+ applications won’t ever need to call this. Only
/// applications that do mixed GDK/Xlib calls could want to disable
/// multidevice support if such Xlib code deals with input devices in
/// any way and doesn’t observe the presence of XInput 2.
@inlinable public func disableMultidevice() {
    gdk_disable_multidevice()

}




/// Aborts a drag without dropping.
/// 
/// This function is called by the drag source.
/// 
/// This function does not need to be called in managed drag and drop
/// operations. See `gdk_drag_context_manage_dnd()` for more information.
@inlinable public func dragAbort<DragContextT: DragContextProtocol>(context: DragContextT, time_: guint32) {
    gdk_drag_abort(context.drag_context_ptr, time_)

}




/// Starts a drag and creates a new drag context for it.
/// This function assumes that the drag is controlled by the
/// client pointer device, use `gdk_drag_begin_for_device()` to
/// begin a drag with a different device.
/// 
/// This function is called by the drag source.
@inlinable public func dragBegin<ListT: GLib.ListProtocol, WindowT: WindowProtocol>(window: WindowT, targets: ListT) -> DragContextRef! {
    guard let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin(window.window_ptr, targets._ptr))) else { return nil }
    return rv
}




/// Starts a drag and creates a new drag context for it.
/// 
/// This function is called by the drag source.
@inlinable public func dragBeginForDevice<DeviceT: DeviceProtocol, ListT: GLib.ListProtocol, WindowT: WindowProtocol>(window: WindowT, device: DeviceT, targets: ListT) -> DragContextRef! {
    guard let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin_for_device(window.window_ptr, device.device_ptr, targets._ptr))) else { return nil }
    return rv
}




/// Starts a drag and creates a new drag context for it.
/// 
/// This function is called by the drag source.
@inlinable public func dragBeginFromPoint<DeviceT: DeviceProtocol, ListT: GLib.ListProtocol, WindowT: WindowProtocol>(window: WindowT, device: DeviceT, targets: ListT, xRoot: Int, yRoot: Int) -> DragContextRef! {
    guard let rv = DragContextRef(gconstpointer: gconstpointer(gdk_drag_begin_from_point(window.window_ptr, device.device_ptr, targets._ptr, gint(xRoot), gint(yRoot)))) else { return nil }
    return rv
}




/// Drops on the current destination.
/// 
/// This function is called by the drag source.
/// 
/// This function does not need to be called in managed drag and drop
/// operations. See `gdk_drag_context_manage_dnd()` for more information.
@inlinable public func dragDrop<DragContextT: DragContextProtocol>(context: DragContextT, time_: guint32) {
    gdk_drag_drop(context.drag_context_ptr, time_)

}




/// Inform GDK if the drop ended successfully. Passing `false`
/// for `success` may trigger a drag cancellation animation.
/// 
/// This function is called by the drag source, and should
/// be the last call before dropping the reference to the
/// `context`.
/// 
/// The `GdkDragContext` will only take the first `gdk_drag_drop_done()`
/// call as effective, if this function is called multiple times,
/// all subsequent calls will be ignored.
@inlinable public func dragDropDone<DragContextT: DragContextProtocol>(context: DragContextT, success: Bool) {
    gdk_drag_drop_done(context.drag_context_ptr, gboolean((success) ? 1 : 0))

}




/// Returns whether the dropped data has been successfully
/// transferred. This function is intended to be used while
/// handling a `GDK_DROP_FINISHED` event, its return value is
/// meaningless at other times.
@inlinable public func dragDropSucceeded<DragContextT: DragContextProtocol>(context: DragContextT) -> Bool {
    let rv = ((gdk_drag_drop_succeeded(context.drag_context_ptr)) != 0)
    return rv
}




/// Finds the destination window and DND protocol to use at the
/// given pointer position.
/// 
/// This function is called by the drag source to obtain the
/// `dest_window` and `protocol` parameters for `gdk_drag_motion()`.
@inlinable public func dragFindWindowForScreen<DragContextT: DragContextProtocol, ScreenT: ScreenProtocol, WindowT: WindowProtocol>(context: DragContextT, dragWindow: WindowT, screen: ScreenT, xRoot: Int, yRoot: Int, destWindow: UnsafeMutablePointer<UnsafeMutablePointer<GdkWindow>?>!, `protocol`: UnsafeMutablePointer<GdkDragProtocol>!) {
    gdk_drag_find_window_for_screen(context.drag_context_ptr, dragWindow.window_ptr, screen.screen_ptr, gint(xRoot), gint(yRoot), destWindow, `protocol`)

}




/// Returns the selection atom for the current source window.
@inlinable public func dragGetSelection<DragContextT: DragContextProtocol>(context: DragContextT) -> GdkAtom! {
    let rv = gdk_drag_get_selection(context.drag_context_ptr)
    return rv
}




/// Updates the drag context when the pointer moves or the
/// set of actions changes.
/// 
/// This function is called by the drag source.
/// 
/// This function does not need to be called in managed drag and drop
/// operations. See `gdk_drag_context_manage_dnd()` for more information.
@inlinable public func dragMotion<DragContextT: DragContextProtocol, WindowT: WindowProtocol>(context: DragContextT, destWindow: WindowT, `protocol`: GdkDragProtocol, xRoot: Int, yRoot: Int, suggestedAction: DragAction, possibleActions: DragAction, time_: guint32) -> Bool {
    let rv = ((gdk_drag_motion(context.drag_context_ptr, destWindow.window_ptr, `protocol`, gint(xRoot), gint(yRoot), suggestedAction.value, possibleActions.value, time_)) != 0)
    return rv
}




/// Selects one of the actions offered by the drag source.
/// 
/// This function is called by the drag destination in response to
/// `gdk_drag_motion()` called by the drag source.
@inlinable public func dragStatus<DragContextT: DragContextProtocol>(context: DragContextT, action: DragAction, time_: guint32) {
    gdk_drag_status(context.drag_context_ptr, action.value, time_)

}




/// Ends the drag operation after a drop.
/// 
/// This function is called by the drag destination.
@inlinable public func dropFinish<DragContextT: DragContextProtocol>(context: DragContextT, success: Bool, time_: guint32) {
    gdk_drop_finish(context.drag_context_ptr, gboolean((success) ? 1 : 0), time_)

}




/// Accepts or rejects a drop.
/// 
/// This function is called by the drag destination in response
/// to a drop initiated by the drag source.
@inlinable public func dropReply<DragContextT: DragContextProtocol>(context: DragContextT, accepted: Bool, time_: guint32) {
    gdk_drop_reply(context.drag_context_ptr, gboolean((accepted) ? 1 : 0), time_)

}




/// Removes an error trap pushed with `gdk_error_trap_push()`.
/// May block until an error has been definitively received
/// or not received from the X server. `gdk_error_trap_pop_ignored()`
/// is preferred if you don’t need to know whether an error
/// occurred, because it never has to block. If you don't
/// need the return value of `gdk_error_trap_pop()`, use
/// `gdk_error_trap_pop_ignored()`.
/// 
/// Prior to GDK 3.0, this function would not automatically
/// sync for you, so you had to `gdk_flush()` if your last
/// call to Xlib was not a blocking round trip.
@inlinable @available(*, deprecated) public func errorTrapPop() -> Int {
    let rv = Int(gdk_error_trap_pop())
    return rv
}




/// Removes an error trap pushed with `gdk_error_trap_push()`, but
/// without bothering to wait and see whether an error occurred.  If an
/// error arrives later asynchronously that was triggered while the
/// trap was pushed, that error will be ignored.
@inlinable @available(*, deprecated) public func errorTrapPopIgnored() {
    gdk_error_trap_pop_ignored()

}




/// This function allows X errors to be trapped instead of the normal
/// behavior of exiting the application. It should only be used if it
/// is not possible to avoid the X error in any other way. Errors are
/// ignored on all `GdkDisplay` currently known to the
/// `GdkDisplayManager`. If you don’t care which error happens and just
/// want to ignore everything, pop with `gdk_error_trap_pop_ignored()`.
/// If you need the error code, use `gdk_error_trap_pop()` which may have
/// to block and wait for the error to arrive from the X server.
/// 
/// This API exists on all platforms but only does anything on X.
/// 
/// You can use `gdk_x11_display_error_trap_push()` to ignore errors
/// on only a single display.
/// 
/// ## Trapping an X error
/// 
/// (C Language Example):
/// ```C
/// gdk_error_trap_push ();
/// 
///  // ... Call the X function which may cause an error here ...
/// 
/// 
/// if (gdk_error_trap_pop ())
///  {
///    // ... Handle the error here ...
///  }
/// ```
/// 
@inlinable @available(*, deprecated) public func errorTrapPush() {
    gdk_error_trap_push()

}




/// Checks all open displays for a `GdkEvent` to process,to be processed
/// on, fetching events from the windowing system if necessary.
/// See `gdk_display_get_event()`.
@inlinable public func eventGet() -> EventRef! {
    guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_get())) else { return nil }
    return rv
}




/// Sets the function to call to handle all events from GDK.
/// 
/// Note that GTK+ uses this to install its own event handler, so it is
/// usually not useful for GTK+ applications. (Although an application
/// can call this function then call `gtk_main_do_event()` to pass
/// events to GTK+.)
@inlinable public func eventHandlerSet(`func`: GdkEventFunc?, data: gpointer! = nil, notify: GDestroyNotify?) {
    gdk_event_handler_set(`func`, data, notify)

}




/// If there is an event waiting in the event queue of some open
/// display, returns a copy of it. See `gdk_display_peek_event()`.
@inlinable public func eventPeek() -> EventRef! {
    guard let rv = EventRef(gconstpointer: gconstpointer(gdk_event_peek())) else { return nil }
    return rv
}




/// Request more motion notifies if `event` is a motion notify hint event.
/// 
/// This function should be used instead of `gdk_window_get_pointer()` to
/// request further motion notifies, because it also works for extension
/// events where motion notifies are provided for devices other than the
/// core pointer. Coordinate extraction, processing and requesting more
/// motion events from a `GDK_MOTION_NOTIFY` event usually works like this:
/// 
/// (C Language Example):
/// ```C
/// {
///   // motion_event handler
///   x = motion_event->x;
///   y = motion_event->y;
///   // handle (x,y) motion
///   gdk_event_request_motions (motion_event); // handles is_hint events
/// }
/// ```
/// 
@inlinable public func eventRequestMotions<EventMotionT: EventMotionProtocol>(event: EventMotionT) {
    gdk_event_request_motions(event._ptr)

}




/// If both events contain X/Y information, this function will return `true`
/// and return in `angle` the relative angle from `event1` to `event2`. The rotation
/// direction for positive angles is from the positive X axis towards the positive
/// Y axis.
@inlinable public func eventsGetAngle<EventT: EventProtocol>(event1: EventT, event2: EventT, angle: UnsafeMutablePointer<gdouble>!) -> Bool {
    let rv = ((gdk_events_get_angle(event1.event_ptr, event2.event_ptr, angle)) != 0)
    return rv
}




/// If both events contain X/Y information, the center of both coordinates
/// will be returned in `x` and `y`.
@inlinable public func eventsGetCenter<EventT: EventProtocol>(event1: EventT, event2: EventT, x: UnsafeMutablePointer<gdouble>!, y: UnsafeMutablePointer<gdouble>!) -> Bool {
    let rv = ((gdk_events_get_center(event1.event_ptr, event2.event_ptr, x, y)) != 0)
    return rv
}




/// If both events have X/Y information, the distance between both coordinates
/// (as in a straight line going from `event1` to `event2`) will be returned.
@inlinable public func eventsGetDistance<EventT: EventProtocol>(event1: EventT, event2: EventT, distance: UnsafeMutablePointer<gdouble>!) -> Bool {
    let rv = ((gdk_events_get_distance(event1.event_ptr, event2.event_ptr, distance)) != 0)
    return rv
}




/// Checks if any events are ready to be processed for any display.
@inlinable public func eventsPending() -> Bool {
    let rv = ((gdk_events_pending()) != 0)
    return rv
}




/// Flushes the output buffers of all display connections and waits
/// until all requests have been processed.
/// This is rarely needed by applications.
@inlinable @available(*, deprecated) public func flush() {
    gdk_flush()

}




/// Obtains the root window (parent all other windows are inside)
/// for the default display and screen.
@inlinable public func getDefaultRootWindow() -> WindowRef! {
    guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_get_default_root_window())) else { return nil }
    return rv
}




/// Gets the name of the display, which usually comes from the
/// `DISPLAY` environment variable or the
/// `--display` command line option.
///
/// **get_display is deprecated:**
/// Call gdk_display_get_name (gdk_display_get_default ()))
///    instead.
@available(*, deprecated) @inlinable public func getDisplay() -> String! {
    guard let rv = gdk_get_display().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the display name specified in the command line arguments passed
/// to `gdk_init()` or `gdk_parse_args()`, if any.
@inlinable public func getDisplayArgName() -> String! {
    guard let rv = gdk_get_display_arg_name().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the program class. Unless the program class has explicitly
/// been set with `gdk_set_program_class()` or with the `--class`
/// commandline option, the default value is the program name (determined
/// with `g_get_prgname()`) with the first character converted to uppercase.
@inlinable public func getProgramClass() -> String! {
    guard let rv = gdk_get_program_class().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets whether event debugging output is enabled.
@inlinable public func getShowEvents() -> Bool {
    let rv = ((gdk_get_show_events()) != 0)
    return rv
}




@inlinable public func glErrorQuark() -> GQuark {
    let rv = gdk_gl_error_quark()
    return rv
}




/// Initializes the GDK library and connects to the windowing system.
/// If initialization fails, a warning message is output and the application
/// terminates with a call to ``exit(1)``.
/// 
/// Any arguments used by GDK are removed from the array and `argc` and `argv`
/// are updated accordingly.
/// 
/// GTK+ initializes GDK in `gtk_init()` and so this function is not usually
/// needed by GTK+ applications.
@inlinable public func init_(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) {
    gdk_init(argc, argv)

}




/// Initializes the GDK library and connects to the windowing system,
/// returning `true` on success.
/// 
/// Any arguments used by GDK are removed from the array and `argc` and `argv`
/// are updated accordingly.
/// 
/// GTK+ initializes GDK in `gtk_init()` and so this function is not usually
/// needed by GTK+ applications.
@inlinable public func initCheck(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) -> Bool {
    let rv = ((gdk_init_check(argc, argv)) != 0)
    return rv
}




/// Grabs the keyboard so that all events are passed to this
/// application until the keyboard is ungrabbed with `gdk_keyboard_ungrab()`.
/// This overrides any previous keyboard grab by this client.
/// 
/// If you set up anything at the time you take the grab that needs to be cleaned
/// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
/// are emitted when the grab ends unvoluntarily.
///
/// **keyboard_grab is deprecated:**
/// Use gdk_device_grab() instead.
@available(*, deprecated) @inlinable public func keyboardGrab<WindowT: WindowProtocol>(window: WindowT, ownerEvents: Bool, time_: guint32) -> GdkGrabStatus {
    let rv = gdk_keyboard_grab(window.window_ptr, gboolean((ownerEvents) ? 1 : 0), time_)
    return rv
}




/// Ungrabs the keyboard on the default display, if it is grabbed by this
/// application.
///
/// **keyboard_ungrab is deprecated:**
/// Use gdk_device_ungrab(), together with gdk_device_grab()
///             instead.
@available(*, deprecated) @inlinable public func keyboardUngrab(time_: guint32) {
    gdk_keyboard_ungrab(time_)

}




/// Obtains the upper- and lower-case versions of the keyval `symbol`.
/// Examples of keyvals are `GDK_KEY_a`, `GDK_KEY_Enter`, `GDK_KEY_F1`, etc.
@inlinable public func keyvalConvertCase(symbol: Int, lower: UnsafeMutablePointer<guint>!, upper: UnsafeMutablePointer<guint>!) {
    gdk_keyval_convert_case(guint(symbol), lower, upper)

}




/// Converts a key name to a key value.
/// 
/// The names are the same as those in the
/// `gdk/gdkkeysyms.h` header file
/// but without the leading “GDK_KEY_”.
@inlinable public func keyvalFromName(keyvalName: UnsafePointer<gchar>!) -> Int {
    let rv = Int(gdk_keyval_from_name(keyvalName))
    return rv
}




/// Returns `true` if the given key value is in lower case.
@inlinable public func keyvalIsLower(keyval: Int) -> Bool {
    let rv = ((gdk_keyval_is_lower(guint(keyval))) != 0)
    return rv
}




/// Returns `true` if the given key value is in upper case.
@inlinable public func keyvalIsUpper(keyval: Int) -> Bool {
    let rv = ((gdk_keyval_is_upper(guint(keyval))) != 0)
    return rv
}




/// Converts a key value into a symbolic name.
/// 
/// The names are the same as those in the
/// `gdk/gdkkeysyms.h` header file
/// but without the leading “GDK_KEY_”.
@inlinable public func keyvalName(keyval: Int) -> String! {
    guard let rv = gdk_keyval_name(guint(keyval)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a key value to lower case, if applicable.
@inlinable public func keyvalToLower(keyval: Int) -> Int {
    let rv = Int(gdk_keyval_to_lower(guint(keyval)))
    return rv
}




/// Convert from a GDK key symbol to the corresponding ISO10646 (Unicode)
/// character.
@inlinable public func keyvalToUnicode(keyval: Int) -> guint32 {
    let rv = gdk_keyval_to_unicode(guint(keyval))
    return rv
}




/// Converts a key value to upper case, if applicable.
@inlinable public func keyvalToUpper(keyval: Int) -> Int {
    let rv = Int(gdk_keyval_to_upper(guint(keyval)))
    return rv
}




/// Lists the available visuals for the default screen.
/// (See `gdk_screen_list_visuals()`)
/// A visual describes a hardware image data format.
/// For example, a visual might support 24-bit color, or 8-bit color,
/// and might expect pixels to be in a certain format.
/// 
/// Call `g_list_free()` on the return value when you’re finished with it.
///
/// **list_visuals is deprecated:**
/// Use gdk_screen_list_visuals (gdk_screen_get_default ()).
@available(*, deprecated) @inlinable public func listVisuals() -> GLib.ListRef! {
    guard let rv = GLib.ListRef(gdk_list_visuals()) else { return nil }
    return rv
}




/// Indicates to the GUI environment that the application has finished
/// loading. If the applications opens windows, this function is
/// normally called after opening the application’s initial set of
/// windows.
/// 
/// GTK+ will call this function automatically after opening the first
/// `GtkWindow` unless `gtk_window_set_auto_startup_notification()` is called
/// to disable that feature.
@inlinable public func notifyStartupComplete() {
    gdk_notify_startup_complete()

}




/// Indicates to the GUI environment that the application has
/// finished loading, using a given identifier.
/// 
/// GTK+ will call this function automatically for `GtkWindow`
/// with custom startup-notification identifier unless
/// `gtk_window_set_auto_startup_notification()` is called to
/// disable that feature.
@inlinable public func notifyStartupCompleteWithId(startupId: UnsafePointer<gchar>!) {
    gdk_notify_startup_complete_with_id(startupId)

}




/// Gets the window that `window` is embedded in.
@inlinable public func offscreenWindowGetEmbedder<WindowT: WindowProtocol>(window: WindowT) -> WindowRef! {
    guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_offscreen_window_get_embedder(window.window_ptr))) else { return nil }
    return rv
}




/// Gets the offscreen surface that an offscreen window renders into.
/// If you need to keep this around over window resizes, you need to
/// add a reference to it.
@inlinable public func offscreenWindowGetSurface<WindowT: WindowProtocol>(window: WindowT) -> Cairo.SurfaceRef! {
    guard let rv = Cairo.SurfaceRef(gdk_offscreen_window_get_surface(window.window_ptr)) else { return nil }
    return rv
}




/// Sets `window` to be embedded in `embedder`.
/// 
/// To fully embed an offscreen window, in addition to calling this
/// function, it is also necessary to handle the `GdkWindow::pick-embedded-child`
/// signal on the `embedder` and the `GdkWindow::to-embedder` and
/// `GdkWindow::from-embedder` signals on `window`.
@inlinable public func offscreenWindowSetEmbedder<WindowT: WindowProtocol>(window: WindowT, embedder: WindowT) {
    gdk_offscreen_window_set_embedder(window.window_ptr, embedder.window_ptr)

}




/// Creates a `PangoContext` for the default GDK screen.
/// 
/// The context must be freed when you’re finished with it.
/// 
/// When using GTK+, normally you should use `gtk_widget_get_pango_context()`
/// instead of this function, to get the appropriate context for
/// the widget you intend to render text onto.
/// 
/// The newly created context will have the default font options (see
/// `cairo_font_options_t`) for the default screen; if these options
/// change it will not be updated. Using `gtk_widget_get_pango_context()`
/// is more convenient if you want to keep a context around and track
/// changes to the screen’s font rendering settings.
@inlinable public func pangoContextGet() -> Pango.ContextRef! {
    guard let rv = Pango.ContextRef(gdk_pango_context_get()) else { return nil }
    return rv
}




/// Creates a `PangoContext` for `display`.
/// 
/// The context must be freed when you’re finished with it.
/// 
/// When using GTK+, normally you should use `gtk_widget_get_pango_context()`
/// instead of this function, to get the appropriate context for
/// the widget you intend to render text onto.
/// 
/// The newly created context will have the default font options
/// (see `cairo_font_options_t`) for the display; if these options
/// change it will not be updated. Using `gtk_widget_get_pango_context()`
/// is more convenient if you want to keep a context around and track
/// changes to the font rendering settings.
@inlinable public func pangoContextGetFor<DisplayT: DisplayProtocol>(display: DisplayT) -> Pango.ContextRef! {
    guard let rv = Pango.ContextRef(gdk_pango_context_get_for_display(display.display_ptr)) else { return nil }
    return rv
}




/// Creates a `PangoContext` for `screen`.
/// 
/// The context must be freed when you’re finished with it.
/// 
/// When using GTK+, normally you should use `gtk_widget_get_pango_context()`
/// instead of this function, to get the appropriate context for
/// the widget you intend to render text onto.
/// 
/// The newly created context will have the default font options
/// (see `cairo_font_options_t`) for the screen; if these options
/// change it will not be updated. Using `gtk_widget_get_pango_context()`
/// is more convenient if you want to keep a context around and track
/// changes to the screen’s font rendering settings.
@inlinable public func pangoContextGetFor<ScreenT: ScreenProtocol>(screen: ScreenT) -> Pango.ContextRef! {
    guard let rv = Pango.ContextRef(gdk_pango_context_get_for_screen(screen.screen_ptr)) else { return nil }
    return rv
}




/// Obtains a clip region which contains the areas where the given ranges
/// of text would be drawn. `x_origin` and `y_origin` are the top left point
/// to center the layout. `index_ranges` should contain
/// ranges of bytes in the layout’s text.
/// 
/// Note that the regions returned correspond to logical extents of the text
/// ranges, not ink extents. So the drawn layout may in fact touch areas out of
/// the clip region.  The clip region is mainly useful for highlightling parts
/// of text, such as when text is selected.
@inlinable public func pangoLayoutGetClipRegion<LayoutT: Pango.LayoutProtocol>(layout: LayoutT, xOrigin: Int, yOrigin: Int, indexRanges: UnsafePointer<gint>!, nRanges: Int) -> Cairo.RegionRef! {
    guard let rv = Cairo.RegionRef(gdk_pango_layout_get_clip_region(layout.layout_ptr, gint(xOrigin), gint(yOrigin), indexRanges, gint(nRanges))) else { return nil }
    return rv
}




/// Obtains a clip region which contains the areas where the given
/// ranges of text would be drawn. `x_origin` and `y_origin` are the top left
/// position of the layout. `index_ranges`
/// should contain ranges of bytes in the layout’s text. The clip
/// region will include space to the left or right of the line (to the
/// layout bounding box) if you have indexes above or below the indexes
/// contained inside the line. This is to draw the selection all the way
/// to the side of the layout. However, the clip region is in line coordinates,
/// not layout coordinates.
/// 
/// Note that the regions returned correspond to logical extents of the text
/// ranges, not ink extents. So the drawn line may in fact touch areas out of
/// the clip region.  The clip region is mainly useful for highlightling parts
/// of text, such as when text is selected.
@inlinable public func pangoLayoutLineGetClipRegion<LayoutLineT: Pango.LayoutLineProtocol>(line: LayoutLineT, xOrigin: Int, yOrigin: Int, indexRanges: UnsafePointer<gint>!, nRanges: Int) -> Cairo.RegionRef! {
    guard let rv = Cairo.RegionRef(gdk_pango_layout_line_get_clip_region(line.layout_line_ptr, gint(xOrigin), gint(yOrigin), indexRanges, gint(nRanges))) else { return nil }
    return rv
}




/// Parse command line arguments, and store for future
/// use by calls to `gdk_display_open()`.
/// 
/// Any arguments used by GDK are removed from the array and `argc` and `argv` are
/// updated accordingly.
/// 
/// You shouldn’t call this function explicitly if you are using
/// `gtk_init()`, `gtk_init_check()`, `gdk_init()`, or `gdk_init_check()`.
@inlinable public func parseArgs(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) {
    gdk_parse_args(argc, argv)

}




/// Transfers image data from a `cairo_surface_t` and converts it to an `RGB(A)`
/// representation inside a `GdkPixbuf`. This allows you to efficiently read
/// individual pixels from cairo surfaces. For `GdkWindows`, use
/// `gdk_pixbuf_get_from_window()` instead.
/// 
/// This function will create an RGB pixbuf with 8 bits per channel.
/// The pixbuf will contain an alpha channel if the `surface` contains one.
@inlinable public func pixbufGetFrom<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT, srcX: Int, srcY: Int, width: Int, height: Int) -> PixbufRef! {
    guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_get_from_surface(surface._ptr, gint(srcX), gint(srcY), gint(width), gint(height)))) else { return nil }
    return rv
}




/// Transfers image data from a `GdkWindow` and converts it to an `RGB(A)`
/// representation inside a `GdkPixbuf`. In other words, copies
/// image data from a server-side drawable to a client-side `RGB(A)` buffer.
/// This allows you to efficiently read individual pixels on the client side.
/// 
/// This function will create an RGB pixbuf with 8 bits per channel with
/// the size specified by the `width` and `height` arguments scaled by the
/// scale factor of `window`. The pixbuf will contain an alpha channel if
/// the `window` contains one.
/// 
/// If the window is off the screen, then there is no image data in the
/// obscured/offscreen regions to be placed in the pixbuf. The contents of
/// portions of the pixbuf corresponding to the offscreen region are undefined.
/// 
/// If the window you’re obtaining data from is partially obscured by
/// other windows, then the contents of the pixbuf areas corresponding
/// to the obscured regions are undefined.
/// 
/// If the window is not mapped (typically because it’s iconified/minimized
/// or not on the current workspace), then `nil` will be returned.
/// 
/// If memory can’t be allocated for the return value, `nil` will be returned
/// instead.
/// 
/// (In short, there are several ways this function can fail, and if it fails
///  it returns `nil`; so check the return value.)
@inlinable public func pixbufGetFrom<WindowT: WindowProtocol>(window: WindowT, srcX: Int, srcY: Int, width: Int, height: Int) -> PixbufRef! {
    guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_get_from_window(window.window_ptr, gint(srcX), gint(srcY), gint(width), gint(height)))) else { return nil }
    return rv
}




/// Grabs the pointer (usually a mouse) so that all events are passed to this
/// application until the pointer is ungrabbed with `gdk_pointer_ungrab()`, or
/// the grab window becomes unviewable.
/// This overrides any previous pointer grab by this client.
/// 
/// Pointer grabs are used for operations which need complete control over mouse
/// events, even if the mouse leaves the application.
/// For example in GTK+ it is used for Drag and Drop, for dragging the handle in
/// the `GtkHPaned` and `GtkVPaned` widgets.
/// 
/// Note that if the event mask of an X window has selected both button press and
/// button release events, then a button press event will cause an automatic
/// pointer grab until the button is released.
/// X does this automatically since most applications expect to receive button
/// press and release events in pairs.
/// It is equivalent to a pointer grab on the window with `owner_events` set to
/// `true`.
/// 
/// If you set up anything at the time you take the grab that needs to be cleaned
/// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
/// are emitted when the grab ends unvoluntarily.
///
/// **pointer_grab is deprecated:**
/// Use gdk_device_grab() instead.
@available(*, deprecated) @inlinable public func pointerGrab<WindowT: WindowProtocol>(window: WindowT, ownerEvents: Bool, eventMask: EventMask, confineTo: WindowRef? = nil, cursor: CursorRef? = nil, time_: guint32) -> GdkGrabStatus {
    let rv = gdk_pointer_grab(window.window_ptr, gboolean((ownerEvents) ? 1 : 0), eventMask.value, confineTo?.window_ptr, cursor?.cursor_ptr, time_)
    return rv
}
/// Grabs the pointer (usually a mouse) so that all events are passed to this
/// application until the pointer is ungrabbed with `gdk_pointer_ungrab()`, or
/// the grab window becomes unviewable.
/// This overrides any previous pointer grab by this client.
/// 
/// Pointer grabs are used for operations which need complete control over mouse
/// events, even if the mouse leaves the application.
/// For example in GTK+ it is used for Drag and Drop, for dragging the handle in
/// the `GtkHPaned` and `GtkVPaned` widgets.
/// 
/// Note that if the event mask of an X window has selected both button press and
/// button release events, then a button press event will cause an automatic
/// pointer grab until the button is released.
/// X does this automatically since most applications expect to receive button
/// press and release events in pairs.
/// It is equivalent to a pointer grab on the window with `owner_events` set to
/// `true`.
/// 
/// If you set up anything at the time you take the grab that needs to be cleaned
/// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
/// are emitted when the grab ends unvoluntarily.
///
/// **pointer_grab is deprecated:**
/// Use gdk_device_grab() instead.
@available(*, deprecated) @inlinable public func pointerGrab<CursorT: CursorProtocol, WindowT: WindowProtocol>(window: WindowT, ownerEvents: Bool, eventMask: EventMask, confineTo: WindowT?, cursor: CursorT?, time_: guint32) -> GdkGrabStatus {
    let rv = gdk_pointer_grab(window.window_ptr, gboolean((ownerEvents) ? 1 : 0), eventMask.value, confineTo?.window_ptr, cursor?.cursor_ptr, time_)
    return rv
}




/// Returns `true` if the pointer on the default display is currently
/// grabbed by this application.
/// 
/// Note that this does not take the inmplicit pointer grab on button
/// presses into account.
///
/// **pointer_is_grabbed is deprecated:**
/// Use gdk_display_device_is_grabbed() instead.
@available(*, deprecated) @inlinable public func pointerIsGrabbed() -> Bool {
    let rv = ((gdk_pointer_is_grabbed()) != 0)
    return rv
}




/// Ungrabs the pointer on the default display, if it is grabbed by this
/// application.
///
/// **pointer_ungrab is deprecated:**
/// Use gdk_device_ungrab(), together with gdk_device_grab()
///             instead.
@available(*, deprecated) @inlinable public func pointerUngrab(time_: guint32) {
    gdk_pointer_ungrab(time_)

}




/// Prepare for parsing command line arguments for GDK. This is not
/// public API and should not be used in application code.
///
/// **pre_parse_libgtk_only is deprecated:**
/// This symbol was never meant to be used outside
///   of GTK+
@available(*, deprecated) @inlinable public func preParseLibgtkOnly() {
    gdk_pre_parse_libgtk_only()

}




/// Changes the contents of a property on a window.
@inlinable public func propertyChange<WindowT: WindowProtocol, AtomT: AtomProtocol>(window: WindowT, property: AtomT!, type: AtomT!, format: Int, mode: GdkPropMode, data: UnsafePointer<guchar>!, nelements: Int) {
    gdk_property_change(window.window_ptr, property._ptr, type._ptr, gint(format), mode, data, gint(nelements))

}




/// Deletes a property from a window.
@inlinable public func propertyDelete<WindowT: WindowProtocol>(window: WindowT, property: GdkAtom!) {
    gdk_property_delete(window.window_ptr, property)

}





// *** propertyGet() causes a syntax error and is therefore not available!





/// This function returns the available bit depths for the default
/// screen. It’s equivalent to listing the visuals
/// (`gdk_list_visuals()`) and then looking at the depth field in each
/// visual, removing duplicates.
/// 
/// The array returned by this function should not be freed.
///
/// **query_depths is deprecated:**
/// Visual selection should be done using
///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
@available(*, deprecated) @inlinable public func query(depths: UnsafeMutablePointer<UnsafeMutablePointer<gint>?>!, count: UnsafeMutablePointer<gint>!) {
    gdk_query_depths(depths, count)

}




/// This function returns the available visual types for the default
/// screen. It’s equivalent to listing the visuals
/// (`gdk_list_visuals()`) and then looking at the type field in each
/// visual, removing duplicates.
/// 
/// The array returned by this function should not be freed.
///
/// **query_visual_types is deprecated:**
/// Visual selection should be done using
///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
@available(*, deprecated) @inlinable public func query(visualTypes: UnsafeMutablePointer<UnsafeMutablePointer<GdkVisualType>?>!, count: UnsafeMutablePointer<gint>!) {
    gdk_query_visual_types(visualTypes, count)

}




/// Retrieves the contents of a selection in a given
/// form.
@inlinable public func selectionConvert<WindowT: WindowProtocol>(requestor: WindowT, selection: GdkAtom!, target: GdkAtom!, time_: guint32) {
    gdk_selection_convert(requestor.window_ptr, selection, target, time_)

}




/// Determines the owner of the given selection.
@inlinable public func selectionOwnerGet(selection: GdkAtom!) -> WindowRef! {
    guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_selection_owner_get(selection))) else { return nil }
    return rv
}




/// Determine the owner of the given selection.
/// 
/// Note that the return value may be owned by a different
/// process if a foreign window was previously created for that
/// window, but a new foreign window will never be created by this call.
@inlinable public func selectionOwnerGetFor<DisplayT: DisplayProtocol>(display: DisplayT, selection: GdkAtom!) -> WindowRef! {
    guard let rv = WindowRef(gconstpointer: gconstpointer(gdk_selection_owner_get_for_display(display.display_ptr, selection))) else { return nil }
    return rv
}




/// Sets the owner of the given selection.
@inlinable public func selectionOwnerSet(owner: WindowRef? = nil, selection: GdkAtom!, time_: guint32, sendEvent: Bool) -> Bool {
    let rv = ((gdk_selection_owner_set(owner?.window_ptr, selection, time_, gboolean((sendEvent) ? 1 : 0))) != 0)
    return rv
}
/// Sets the owner of the given selection.
@inlinable public func selectionOwnerSet<WindowT: WindowProtocol>(owner: WindowT?, selection: GdkAtom!, time_: guint32, sendEvent: Bool) -> Bool {
    let rv = ((gdk_selection_owner_set(owner?.window_ptr, selection, time_, gboolean((sendEvent) ? 1 : 0))) != 0)
    return rv
}




/// Sets the `GdkWindow` `owner` as the current owner of the selection `selection`.
@inlinable public func selectionOwnerSetFor<DisplayT: DisplayProtocol>(display: DisplayT, owner: WindowRef? = nil, selection: GdkAtom!, time_: guint32, sendEvent: Bool) -> Bool {
    let rv = ((gdk_selection_owner_set_for_display(display.display_ptr, owner?.window_ptr, selection, time_, gboolean((sendEvent) ? 1 : 0))) != 0)
    return rv
}
/// Sets the `GdkWindow` `owner` as the current owner of the selection `selection`.
@inlinable public func selectionOwnerSetFor<DisplayT: DisplayProtocol, WindowT: WindowProtocol>(display: DisplayT, owner: WindowT?, selection: GdkAtom!, time_: guint32, sendEvent: Bool) -> Bool {
    let rv = ((gdk_selection_owner_set_for_display(display.display_ptr, owner?.window_ptr, selection, time_, gboolean((sendEvent) ? 1 : 0))) != 0)
    return rv
}




/// Retrieves selection data that was stored by the selection
/// data in response to a call to `gdk_selection_convert()`. This function
/// will not be used by applications, who should use the `GtkClipboard`
/// API instead.
@inlinable public func selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propertyType: UnsafeMutablePointer<GdkAtom?>!, propertyFormat: UnsafeMutablePointer<gint>!) -> Int {
    let rv = Int(gdk_selection_property_get(requestor.window_ptr, data, propertyType, propertyFormat))
    return rv
}




/// Sends a response to SelectionRequest event.
@inlinable public func selectionSendNotify<WindowT: WindowProtocol>(requestor: WindowT, selection: GdkAtom!, target: GdkAtom!, property: GdkAtom!, time_: guint32) {
    gdk_selection_send_notify(requestor.window_ptr, selection, target, property, time_)

}




/// Send a response to SelectionRequest event.
@inlinable public func selectionSendNotifyFor<DisplayT: DisplayProtocol, WindowT: WindowProtocol>(display: DisplayT, requestor: WindowT, selection: GdkAtom!, target: GdkAtom!, property: GdkAtom!, time_: guint32) {
    gdk_selection_send_notify_for_display(display.display_ptr, requestor.window_ptr, selection, target, property, time_)

}




/// Sets a list of backends that GDK should try to use.
/// 
/// This can be be useful if your application does not
/// work with certain GDK backends.
/// 
/// By default, GDK tries all included backends.
/// 
/// For example,
/// (C Language Example):
/// ```C
/// gdk_set_allowed_backends ("wayland,quartz,*");
/// ```
/// instructs GDK to try the Wayland backend first,
/// followed by the Quartz backend, and then all
/// others.
/// 
/// If the `GDK_BACKEND` environment variable
/// is set, it determines what backends are tried in what
/// order, while still respecting the set of allowed backends
/// that are specified by this function.
/// 
/// The possible backend names are x11, win32, quartz,
/// broadway, wayland. You can also include a * in the
/// list to try all remaining backends.
/// 
/// This call must happen prior to `gdk_display_open()`,
/// `gtk_init()`, `gtk_init_with_args()` or `gtk_init_check()`
/// in order to take effect.
@inlinable public func setAllowed(backends: UnsafePointer<gchar>!) {
    gdk_set_allowed_backends(backends)

}




/// Set the double click time for the default display. See
/// `gdk_display_set_double_click_time()`.
/// See also `gdk_display_set_double_click_distance()`.
/// Applications should not set this, it is a
/// global user-configured setting.
@inlinable @available(*, deprecated) public func setDoubleClickTime(msec: Int) {
    gdk_set_double_click_time(guint(msec))

}




/// Sets the program class. The X11 backend uses the program class to set
/// the class name part of the `WM_CLASS` property on
/// toplevel windows; see the ICCCM.
/// 
/// The program class can still be overridden with the --class command
/// line option.
@inlinable public func set(programClass: UnsafePointer<gchar>!) {
    gdk_set_program_class(programClass)

}




/// Sets whether a trace of received events is output.
/// Note that GTK+ must be compiled with debugging (that is,
/// configured using the `--enable-debug` option)
/// to use this option.
@inlinable public func set(showEvents: Bool) {
    gdk_set_show_events(gboolean((showEvents) ? 1 : 0))

}




/// Obtains a desktop-wide setting, such as the double-click time,
/// for the default screen. See `gdk_screen_get_setting()`.
@inlinable public func settingGet<ValueT: GLibObject.ValueProtocol>(name: UnsafePointer<gchar>!, value: ValueT) -> Bool {
    let rv = ((gdk_setting_get(name, value.value_ptr)) != 0)
    return rv
}




@inlinable public func synthesizeWindowState<WindowT: WindowProtocol>(window: WindowT, unsetFlags: WindowState, setFlags: WindowState) {
    gdk_synthesize_window_state(window.window_ptr, unsetFlags.value, setFlags.value)

}




/// Retrieves a pixel from `window` to force the windowing
/// system to carry out any pending rendering commands.
/// 
/// This function is intended to be used to synchronize with rendering
/// pipelines, to benchmark windowing system rendering operations.
@inlinable public func testRenderSync<WindowT: WindowProtocol>(window: WindowT) {
    gdk_test_render_sync(window.window_ptr)

}




/// This function is intended to be used in GTK+ test programs.
/// It will warp the mouse pointer to the given (`x`,`y`) coordinates
/// within `window` and simulate a button press or release event.
/// Because the mouse pointer needs to be warped to the target
/// location, use of this function outside of test programs that
/// run in their own virtual windowing system (e.g. Xvfb) is not
/// recommended.
/// 
/// Also, `gdk_test_simulate_button()` is a fairly low level function,
/// for most testing purposes, `gtk_test_widget_click()` is the right
/// function to call which will generate a button press event followed
/// by its accompanying button release event.
@inlinable public func testSimulateButton<WindowT: WindowProtocol>(window: WindowT, x: Int, y: Int, button: Int, modifiers: ModifierType, buttonPressrelease: GdkEventType) -> Bool {
    let rv = ((gdk_test_simulate_button(window.window_ptr, gint(x), gint(y), guint(button), modifiers.value, buttonPressrelease)) != 0)
    return rv
}




/// This function is intended to be used in GTK+ test programs.
/// If (`x`,`y`) are &gt; (-1,-1), it will warp the mouse pointer to
/// the given (`x`,`y`) coordinates within `window` and simulate a
/// key press or release event.
/// 
/// When the mouse pointer is warped to the target location, use
/// of this function outside of test programs that run in their
/// own virtual windowing system (e.g. Xvfb) is not recommended.
/// If (`x`,`y`) are passed as (-1,-1), the mouse pointer will not
/// be warped and `window` origin will be used as mouse pointer
/// location for the event.
/// 
/// Also, `gdk_test_simulate_key()` is a fairly low level function,
/// for most testing purposes, `gtk_test_widget_send_key()` is the
/// right function to call which will generate a key press event
/// followed by its accompanying key release event.
@inlinable public func testSimulateKey<WindowT: WindowProtocol>(window: WindowT, x: Int, y: Int, keyval: Int, modifiers: ModifierType, keyPressrelease: GdkEventType) -> Bool {
    let rv = ((gdk_test_simulate_key(window.window_ptr, gint(x), gint(y), guint(keyval), modifiers.value, keyPressrelease)) != 0)
    return rv
}




/// Converts a text property in the given encoding to
/// a list of UTF-8 strings.
@inlinable public func textPropertyToUtf8ListFor<DisplayT: DisplayProtocol>(display: DisplayT, encoding: GdkAtom!, format: Int, text: UnsafePointer<guchar>!, length: Int, list: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) -> Int {
    let rv = Int(gdk_text_property_to_utf8_list_for_display(display.display_ptr, encoding, gint(format), text, gint(length), list))
    return rv
}




/// A wrapper for the common usage of `gdk_threads_add_idle_full()`
/// assigning the default priority, `G_PRIORITY_DEFAULT_IDLE`.
/// 
/// See `gdk_threads_add_idle_full()`.
@inlinable public func threadsAddIdle(function: GSourceFunc?, data: gpointer! = nil) -> Int {
    let rv = Int(gdk_threads_add_idle(function, data))
    return rv
}




/// Adds a function to be called whenever there are no higher priority
/// events pending.  If the function returns `false` it is automatically
/// removed from the list of event sources and will not be called again.
/// 
/// This variant of `g_idle_add_full()` calls `function` with the GDK lock
/// held. It can be thought of a MT-safe version for GTK+ widgets for the
/// following use case, where you have to worry about `idle_callback()`
/// running in thread A and accessing `self` after it has been finalized
/// in thread B:
/// 
/// (C Language Example):
/// ```C
/// static gboolean
/// idle_callback (gpointer data)
/// {
///    // gdk_threads_enter(); would be needed for g_idle_add()
/// 
///    SomeWidget *self = data;
///    // do stuff with self
/// 
///    self->idle_id = 0;
/// 
///    // gdk_threads_leave(); would be needed for g_idle_add()
///    return FALSE;
/// }
/// 
/// static void
/// some_widget_do_stuff_later (SomeWidget *self)
/// {
///    self->idle_id = gdk_threads_add_idle (idle_callback, self)
///    // using g_idle_add() here would require thread protection in the callback
/// }
/// 
/// static void
/// some_widget_finalize (GObject *object)
/// {
///    SomeWidget *self = SOME_WIDGET (object);
///    if (self->idle_id)
///      g_source_remove (self->idle_id);
///    G_OBJECT_CLASS (parent_class)->finalize (object);
/// }
/// ```
/// 
@inlinable public func threadsAddIdleFull(priority: Int, function: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) -> Int {
    let rv = Int(gdk_threads_add_idle_full(gint(priority), function, data, notify))
    return rv
}




/// A wrapper for the common usage of `gdk_threads_add_timeout_full()`
/// assigning the default priority, `G_PRIORITY_DEFAULT`.
/// 
/// See `gdk_threads_add_timeout_full()`.
@inlinable public func threadsAddTimeout(interval: Int, function: GSourceFunc?, data: gpointer! = nil) -> Int {
    let rv = Int(gdk_threads_add_timeout(guint(interval), function, data))
    return rv
}




/// Sets a function to be called at regular intervals holding the GDK lock,
/// with the given priority.  The function is called repeatedly until it
/// returns `false`, at which point the timeout is automatically destroyed
/// and the function will not be called again.  The `notify` function is
/// called when the timeout is destroyed.  The first call to the
/// function will be at the end of the first `interval`.
/// 
/// Note that timeout functions may be delayed, due to the processing of other
/// event sources. Thus they should not be relied on for precise timing.
/// After each call to the timeout function, the time of the next
/// timeout is recalculated based on the current time and the given interval
/// (it does not try to “catch up” time lost in delays).
/// 
/// This variant of `g_timeout_add_full()` can be thought of a MT-safe version
/// for GTK+ widgets for the following use case:
/// 
/// (C Language Example):
/// ```C
/// static gboolean timeout_callback (gpointer data)
/// {
///    SomeWidget *self = data;
///    
///    // do stuff with self
///    
///    self->timeout_id = 0;
///    
///    return G_SOURCE_REMOVE;
/// }
///  
/// static void some_widget_do_stuff_later (SomeWidget *self)
/// {
///    self->timeout_id = g_timeout_add (timeout_callback, self)
/// }
///  
/// static void some_widget_finalize (GObject *object)
/// {
///    SomeWidget *self = SOME_WIDGET (object);
///    
///    if (self->timeout_id)
///      g_source_remove (self->timeout_id);
///    
///    G_OBJECT_CLASS (parent_class)->finalize (object);
/// }
/// ```
/// 
@inlinable public func threadsAddTimeoutFull(priority: Int, interval: Int, function: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) -> Int {
    let rv = Int(gdk_threads_add_timeout_full(gint(priority), guint(interval), function, data, notify))
    return rv
}




/// A wrapper for the common usage of `gdk_threads_add_timeout_seconds_full()`
/// assigning the default priority, `G_PRIORITY_DEFAULT`.
/// 
/// For details, see `gdk_threads_add_timeout_full()`.
@inlinable public func threadsAddTimeoutSeconds(interval: Int, function: GSourceFunc?, data: gpointer! = nil) -> Int {
    let rv = Int(gdk_threads_add_timeout_seconds(guint(interval), function, data))
    return rv
}




/// A variant of `gdk_threads_add_timeout_full()` with second-granularity.
/// See `g_timeout_add_seconds_full()` for a discussion of why it is
/// a good idea to use this function if you don’t need finer granularity.
@inlinable public func threadsAddTimeoutSecondsFull(priority: Int, interval: Int, function: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) -> Int {
    let rv = Int(gdk_threads_add_timeout_seconds_full(gint(priority), guint(interval), function, data, notify))
    return rv
}




/// This function marks the beginning of a critical section in which
/// GDK and GTK+ functions can be called safely and without causing race
/// conditions. Only one thread at a time can be in such a critial
/// section.
///
/// **threads_enter is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) @inlinable public func threadsEnter() {
    gdk_threads_enter()

}




/// Initializes GDK so that it can be used from multiple threads
/// in conjunction with `gdk_threads_enter()` and `gdk_threads_leave()`.
/// 
/// This call must be made before any use of the main loop from
/// GTK+; to be safe, call it before `gtk_init()`.
///
/// **threads_init is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) @inlinable public func threadsInit() {
    gdk_threads_init()

}




/// Leaves a critical region begun with `gdk_threads_enter()`.
///
/// **threads_leave is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) @inlinable public func threadsLeave() {
    gdk_threads_leave()

}




/// Allows the application to replace the standard method that
/// GDK uses to protect its data structures. Normally, GDK
/// creates a single `GMutex` that is locked by `gdk_threads_enter()`,
/// and released by `gdk_threads_leave()`; using this function an
/// application provides, instead, a function `enter_fn` that is
/// called by `gdk_threads_enter()` and a function `leave_fn` that is
/// called by `gdk_threads_leave()`.
/// 
/// The functions must provide at least same locking functionality
/// as the default implementation, but can also do extra application
/// specific processing.
/// 
/// As an example, consider an application that has its own recursive
/// lock that when held, holds the GTK+ lock as well. When GTK+ unlocks
/// the GTK+ lock when entering a recursive main loop, the application
/// must temporarily release its lock as well.
/// 
/// Most threaded GTK+ apps won’t need to use this method.
/// 
/// This method must be called before `gdk_threads_init()`, and cannot
/// be called multiple times.
///
/// **threads_set_lock_functions is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) @inlinable public func threadsSetLockFunctions(enterFn: GCallback?, leaveFn: GCallback?) {
    gdk_threads_set_lock_functions(enterFn, leaveFn)

}




/// Convert from a ISO10646 character to a key symbol.
@inlinable public func unicodeToKeyval(wc: guint32) -> Int {
    let rv = Int(gdk_unicode_to_keyval(wc))
    return rv
}




/// Converts an UTF-8 string into the best possible representation
/// as a STRING. The representation of characters not in STRING
/// is not specified; it may be as pseudo-escape sequences
/// \x{ABCD}, or it may be in some other form of approximation.
@inlinable public func utf8ToStringTarget(str: UnsafePointer<gchar>!) -> String! {
    guard let rv = gdk_utf8_to_string_target(str).map({ String(cString: $0) }) else { return nil }
    return rv
}


