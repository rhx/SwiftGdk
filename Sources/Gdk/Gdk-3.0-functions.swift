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

/// Checks all open displays for a `GdkEvent` to process,to be processed
/// on, fetching events from the windowing system if necessary.
/// See gdk_display_get_event().
public func get() -> UnsafeMutablePointer<GdkEvent>! {
    let rv = gdk_event_get()
    return cast(rv)
}




/// Sets the function to call to handle all events from GDK.
/// 
/// Note that GTK+ uses this to install its own event handler, so it is
/// usually not useful for GTK+ applications. (Although an application
/// can call this function then call gtk_main_do_event() to pass
/// events to GTK+.)
public func handlerSet(func_: @escaping EventFunc, data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) {
    gdk_event_handler_set(func_, cast(data), notify)

}




/// If there is an event waiting in the event queue of some open
/// display, returns a copy of it. See gdk_display_peek_event().
public func peek() -> UnsafeMutablePointer<GdkEvent>! {
    let rv = gdk_event_peek()
    return cast(rv)
}




/// Request more motion notifies if `event` is a motion notify hint event.
/// 
/// This function should be used instead of gdk_window_get_pointer() to
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
public func requestMotions(event: EventMotionProtocol) {
    gdk_event_request_motions(cast(event.ptr))

}




/// Appends gdk option entries to the passed in option group. This is
/// not public API and must not be used by applications.
///
/// **add_option_entries_libgtk_only is deprecated:**
/// This symbol was never meant to be used outside
///   of GTK+
@available(*, deprecated) public func addOptionEntriesLibgtkOnly(group: OptionGroupProtocol) {
    gdk_add_option_entries_libgtk_only(cast(group.ptr))

}




/// Finds or creates an atom corresponding to a given string.
public func atomIntern(atomName atom_name: UnsafePointer<gchar>, onlyIfExists only_if_exists: Bool) -> GdkAtom! {
    let rv = gdk_atom_intern(atom_name, gboolean(only_if_exists ? 1 : 0))
    return rv
}




/// Finds or creates an atom corresponding to a given string.
/// 
/// Note that this function is identical to gdk_atom_intern() except
/// that if a new `GdkAtom` is created the string itself is used rather
/// than a copy. This saves memory, but can only be used if the string
/// will always exist. It can be used with statically
/// allocated strings in the main program, but not with statically
/// allocated memory in dynamically loaded modules, if you expect to
/// ever unload the module again (e.g. do not use this function in
/// GTK+ theme engines).
public func atomInternStaticString(atomName atom_name: UnsafePointer<gchar>) -> GdkAtom! {
    let rv = gdk_atom_intern_static_string(atom_name)
    return rv
}




/// Emits a short beep on the default display.
@available(*, deprecated) public func beep() {
    gdk_beep()

}




/// Creates a Cairo context for drawing to `window`.
/// 
/// Note that calling cairo_reset_clip() on the resulting `cairo_t` will
/// produce undefined results, so avoid it at all costs.
/// 
/// Typically, this function is used to draw on a `GdkWindow` out of the paint
/// cycle of the toolkit; this should be avoided, as it breaks various assumptions
/// and optimizations.
/// 
/// If you are drawing on a native `GdkWindow` in response to a `GDK_EXPOSE` event
/// you should use gdk_window_begin_draw_frame() and gdk_drawing_context_get_cairo_context()
/// instead. GTK will automatically do this for you when drawing a widget.
///
/// **cairo_create is deprecated:**
/// Use gdk_window_begin_draw_frame() and
///   gdk_drawing_context_get_cairo_context() instead
@available(*, deprecated) public func cairoCreate(window: WindowProtocol) -> UnsafeMutablePointer<cairo_t>! {
    let rv = gdk_cairo_create(cast(window.ptr))
    return cast(rv)
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
public func cairoDrawFromGl(cr: cairo.ContextProtocol, window: WindowProtocol, source: CInt, sourceType source_type: CInt, bufferScale buffer_scale: CInt, x: CInt, y: CInt, width: CInt, height: CInt) {
    gdk_cairo_draw_from_gl(cast(cr.ptr), cast(window.ptr), source, source_type, buffer_scale, x, y, width, height)

}




/// This is a convenience function around cairo_clip_extents().
/// It rounds the clip extents to integer coordinates and returns
/// a boolean indicating if a clip area exists.
public func cairoGetClipRectangle(cr: cairo.ContextProtocol, rect: RectangleProtocol) -> Bool {
    let rv = gdk_cairo_get_clip_rectangle(cast(cr.ptr), cast(rect.ptr))
    return Bool(rv != 0)
}




/// Retrieves the `GdkDrawingContext` that created the Cairo
/// context `cr`.
public func cairoGetDrawingContext(cr: cairo.ContextProtocol) -> UnsafeMutablePointer<GdkDrawingContext>! {
    let rv = gdk_cairo_get_drawing_context(cast(cr.ptr))
    return cast(rv)
}




/// Adds the given rectangle to the current path of `cr`.
public func cairoRectangle(cr: cairo.ContextProtocol, rectangle: RectangleProtocol) {
    gdk_cairo_rectangle(cast(cr.ptr), cast(rectangle.ptr))

}




/// Adds the given region to the current path of `cr`.
public func cairoRegion(cr: cairo.ContextProtocol, region: RegionProtocol) {
    gdk_cairo_region(cast(cr.ptr), cast(region.ptr))

}




/// Creates region that describes covers the area where the given
/// `surface` is more than 50`` opaque.
/// 
/// This function takes into account device offsets that might be
/// set with cairo_surface_set_device_offset().
public func cairoRegionCreateFrom(surface: SurfaceProtocol) -> UnsafeMutablePointer<cairo_region_t>! {
    let rv = gdk_cairo_region_create_from_surface(cast(surface.ptr))
    return cast(rv)
}




/// Sets the specified `GdkColor` as the source color of `cr`.
///
/// **cairo_set_source_color is deprecated:**
/// Use gdk_cairo_set_source_rgba() instead
@available(*, deprecated) public func cairoSetSourceColor(cr: cairo.ContextProtocol, color: ColorProtocol) {
    gdk_cairo_set_source_color(cast(cr.ptr), cast(color.ptr))

}




/// Sets the given pixbuf as the source pattern for `cr`.
/// 
/// The pattern has an extend mode of `CAIRO_EXTEND_NONE` and is aligned
/// so that the origin of `pixbuf` is `pixbuf_x`, `pixbuf_y`.
public func cairoSetSourcePixbuf(cr: cairo.ContextProtocol, pixbuf: PixbufProtocol, pixbufX pixbuf_x: gdouble, pixbufY pixbuf_y: gdouble) {
    gdk_cairo_set_source_pixbuf(cast(cr.ptr), cast(pixbuf.ptr), pixbuf_x, pixbuf_y)

}




/// Sets the specified `GdkRGBA` as the source color of `cr`.
public func cairoSetSourceRgba(cr: cairo.ContextProtocol, rgba: RGBAProtocol) {
    gdk_cairo_set_source_rgba(cast(cr.ptr), cast(rgba.ptr))

}




/// Sets the given window as the source pattern for `cr`.
/// 
/// The pattern has an extend mode of `CAIRO_EXTEND_NONE` and is aligned
/// so that the origin of `window` is `x`, `y`. The window contains all its
/// subwindows when rendering.
/// 
/// Note that the contents of `window` are undefined outside of the
/// visible part of `window`, so use this function with care.
public func cairoSetSourceWindow(cr: cairo.ContextProtocol, window: WindowProtocol, x: gdouble, y: gdouble) {
    gdk_cairo_set_source_window(cast(cr.ptr), cast(window.ptr), x, y)

}




/// Creates an image surface with the same contents as
/// the pixbuf.
public func cairoSurfaceCreateFrom(pixbuf: PixbufProtocol, scale: CInt, forWindow for_window: WindowProtocol) -> UnsafeMutablePointer<cairo_surface_t>! {
    let rv = gdk_cairo_surface_create_from_pixbuf(cast(pixbuf.ptr), scale, cast(for_window.ptr))
    return cast(rv)
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
@available(*, deprecated) public func colorParse(spec: UnsafePointer<gchar>, color: ColorProtocol) -> Bool {
    let rv = gdk_color_parse(spec, cast(color.ptr))
    return Bool(rv != 0)
}




/// Disables multidevice support in GDK. This call must happen prior
/// to gdk_display_open(), gtk_init(), gtk_init_with_args() or
/// gtk_init_check() in order to take effect.
/// 
/// Most common GTK+ applications won’t ever need to call this. Only
/// applications that do mixed GDK/Xlib calls could want to disable
/// multidevice support if such Xlib code deals with input devices in
/// any way and doesn’t observe the presence of XInput 2.
public func disableMultidevice() {
    gdk_disable_multidevice()

}




/// Aborts a drag without dropping.
/// 
/// This function is called by the drag source.
/// 
/// This function does not need to be called in managed drag and drop
/// operations. See gdk_drag_context_manage_dnd() for more information.
public func dragAbort(context: DragContextProtocol, time_: UInt32) {
    gdk_drag_abort(cast(context.ptr), guint32(time_))

}




/// Starts a drag and creates a new drag context for it.
/// This function assumes that the drag is controlled by the
/// client pointer device, use gdk_drag_begin_for_device() to
/// begin a drag with a different device.
/// 
/// This function is called by the drag source.
public func dragBegin(window: WindowProtocol, targets: ListProtocol) -> UnsafeMutablePointer<GdkDragContext>! {
    let rv = gdk_drag_begin(cast(window.ptr), cast(targets.ptr))
    return cast(rv)
}




/// Starts a drag and creates a new drag context for it.
/// 
/// This function is called by the drag source.
public func dragBeginForDevice(window: WindowProtocol, device: DeviceProtocol, targets: ListProtocol) -> UnsafeMutablePointer<GdkDragContext>! {
    let rv = gdk_drag_begin_for_device(cast(window.ptr), cast(device.ptr), cast(targets.ptr))
    return cast(rv)
}




/// Starts a drag and creates a new drag context for it.
/// 
/// This function is called by the drag source.
public func dragBeginFromPoint(window: WindowProtocol, device: DeviceProtocol, targets: ListProtocol, xRoot x_root: CInt, yRoot y_root: CInt) -> UnsafeMutablePointer<GdkDragContext>! {
    let rv = gdk_drag_begin_from_point(cast(window.ptr), cast(device.ptr), cast(targets.ptr), gint(x_root), gint(y_root))
    return cast(rv)
}




/// Drops on the current destination.
/// 
/// This function is called by the drag source.
/// 
/// This function does not need to be called in managed drag and drop
/// operations. See gdk_drag_context_manage_dnd() for more information.
public func dragDrop(context: DragContextProtocol, time_: UInt32) {
    gdk_drag_drop(cast(context.ptr), guint32(time_))

}




/// Inform GDK if the drop ended successfully. Passing `false`
/// for `success` may trigger a drag cancellation animation.
/// 
/// This function is called by the drag source, and should
/// be the last call before dropping the reference to the
/// `context`.
/// 
/// The `GdkDragContext` will only take the first gdk_drag_drop_done()
/// call as effective, if this function is called multiple times,
/// all subsequent calls will be ignored.
public func dragDropDone(context: DragContextProtocol, success: Bool) {
    gdk_drag_drop_done(cast(context.ptr), gboolean(success ? 1 : 0))

}




/// Returns whether the dropped data has been successfully
/// transferred. This function is intended to be used while
/// handling a `GDK_DROP_FINISHED` event, its return value is
/// meaningless at other times.
public func dragDropSucceeded(context: DragContextProtocol) -> Bool {
    let rv = gdk_drag_drop_succeeded(cast(context.ptr))
    return Bool(rv != 0)
}




/// Finds the destination window and DND protocol to use at the
/// given pointer position.
/// 
/// This function is called by the drag source to obtain the
/// `dest_window` and `protocol` parameters for gdk_drag_motion().
public func dragFindWindowForScreen(context: DragContextProtocol, dragWindow drag_window: WindowProtocol, screen: ScreenProtocol, xRoot x_root: CInt, yRoot y_root: CInt, destWindow dest_window: WindowProtocol, protocol_: UnsafeMutablePointer<GdkDragProtocol>) {
    gdk_drag_find_window_for_screen(cast(context.ptr), cast(drag_window.ptr), cast(screen.ptr), gint(x_root), gint(y_root), cast(dest_window.ptr), cast(protocol_))

}




/// Returns the selection atom for the current source window.
public func dragGetSelection(context: DragContextProtocol) -> GdkAtom! {
    let rv = gdk_drag_get_selection(cast(context.ptr))
    return rv
}




/// Updates the drag context when the pointer moves or the
/// set of actions changes.
/// 
/// This function is called by the drag source.
/// 
/// This function does not need to be called in managed drag and drop
/// operations. See gdk_drag_context_manage_dnd() for more information.
public func dragMotion(context: DragContextProtocol, destWindow dest_window: WindowProtocol, protocol_: Drag_Protocol, xRoot x_root: CInt, yRoot y_root: CInt, suggestedAction suggested_action: DragAction, possibleActions possible_actions: DragAction, time_: UInt32) -> Bool {
    let rv = gdk_drag_motion(cast(context.ptr), cast(dest_window.ptr), protocol_, gint(x_root), gint(y_root), suggested_action, possible_actions, guint32(time_))
    return Bool(rv != 0)
}




/// Selects one of the actions offered by the drag source.
/// 
/// This function is called by the drag destination in response to
/// gdk_drag_motion() called by the drag source.
public func dragStatus(context: DragContextProtocol, action: DragAction, time_: UInt32) {
    gdk_drag_status(cast(context.ptr), action, guint32(time_))

}




/// Ends the drag operation after a drop.
/// 
/// This function is called by the drag destination.
public func dropFinish(context: DragContextProtocol, success: Bool, time_: UInt32) {
    gdk_drop_finish(cast(context.ptr), gboolean(success ? 1 : 0), guint32(time_))

}




/// Accepts or rejects a drop.
/// 
/// This function is called by the drag destination in response
/// to a drop initiated by the drag source.
public func dropReply(context: DragContextProtocol, accepted: Bool, time_: UInt32) {
    gdk_drop_reply(cast(context.ptr), gboolean(accepted ? 1 : 0), guint32(time_))

}




/// Removes an error trap pushed with gdk_error_trap_push().
/// May block until an error has been definitively received
/// or not received from the X server. gdk_error_trap_pop_ignored()
/// is preferred if you don’t need to know whether an error
/// occurred, because it never has to block. If you don't
/// need the return value of gdk_error_trap_pop(), use
/// gdk_error_trap_pop_ignored().
/// 
/// Prior to GDK 3.0, this function would not automatically
/// sync for you, so you had to gdk_flush() if your last
/// call to Xlib was not a blocking round trip.
@available(*, deprecated) public func errorTrapPop() -> CInt {
    let rv = gdk_error_trap_pop()
    return CInt(rv)
}




/// Removes an error trap pushed with gdk_error_trap_push(), but
/// without bothering to wait and see whether an error occurred.  If an
/// error arrives later asynchronously that was triggered while the
/// trap was pushed, that error will be ignored.
@available(*, deprecated) public func errorTrapPopIgnored() {
    gdk_error_trap_pop_ignored()

}




/// This function allows X errors to be trapped instead of the normal
/// behavior of exiting the application. It should only be used if it
/// is not possible to avoid the X error in any other way. Errors are
/// ignored on all `GdkDisplay` currently known to the
/// `GdkDisplayManager`. If you don’t care which error happens and just
/// want to ignore everything, pop with gdk_error_trap_pop_ignored().
/// If you need the error code, use gdk_error_trap_pop() which may have
/// to block and wait for the error to arrive from the X server.
/// 
/// This API exists on all platforms but only does anything on X.
/// 
/// You can use gdk_x11_display_error_trap_push() to ignore errors
/// on only a single display.
/// 
/// ``` Trapping an X error
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
@available(*, deprecated) public func errorTrapPush() {
    gdk_error_trap_push()

}




/// Checks all open displays for a `GdkEvent` to process,to be processed
/// on, fetching events from the windowing system if necessary.
/// See gdk_display_get_event().
public func eventGet() -> UnsafeMutablePointer<GdkEvent>! {
    let rv = gdk_event_get()
    return cast(rv)
}




/// Sets the function to call to handle all events from GDK.
/// 
/// Note that GTK+ uses this to install its own event handler, so it is
/// usually not useful for GTK+ applications. (Although an application
/// can call this function then call gtk_main_do_event() to pass
/// events to GTK+.)
public func eventHandlerSet(func_: @escaping EventFunc, data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) {
    gdk_event_handler_set(func_, cast(data), notify)

}




/// If there is an event waiting in the event queue of some open
/// display, returns a copy of it. See gdk_display_peek_event().
public func eventPeek() -> UnsafeMutablePointer<GdkEvent>! {
    let rv = gdk_event_peek()
    return cast(rv)
}




/// Request more motion notifies if `event` is a motion notify hint event.
/// 
/// This function should be used instead of gdk_window_get_pointer() to
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
public func eventRequestMotions(event: EventMotionProtocol) {
    gdk_event_request_motions(cast(event.ptr))

}




/// If both events contain X/Y information, this function will return `true`
/// and return in `angle` the relative angle from `event1` to `event2`. The rotation
/// direction for positive angles is from the positive X axis towards the positive
/// Y axis.
public func eventsGetAngle(event1: UnsafeMutablePointer<GdkEvent>, event2: UnsafeMutablePointer<GdkEvent>, angle: UnsafeMutablePointer<gdouble>) -> Bool {
    let rv = gdk_events_get_angle(cast(event1), cast(event2), cast(angle))
    return Bool(rv != 0)
}




/// If both events contain X/Y information, the center of both coordinates
/// will be returned in `x` and `y`.
public func eventsGetCenter(event1: UnsafeMutablePointer<GdkEvent>, event2: UnsafeMutablePointer<GdkEvent>, x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) -> Bool {
    let rv = gdk_events_get_center(cast(event1), cast(event2), cast(x), cast(y))
    return Bool(rv != 0)
}




/// If both events have X/Y information, the distance between both coordinates
/// (as in a straight line going from `event1` to `event2`) will be returned.
public func eventsGetDistance(event1: UnsafeMutablePointer<GdkEvent>, event2: UnsafeMutablePointer<GdkEvent>, distance: UnsafeMutablePointer<gdouble>) -> Bool {
    let rv = gdk_events_get_distance(cast(event1), cast(event2), cast(distance))
    return Bool(rv != 0)
}




/// Checks if any events are ready to be processed for any display.
public func eventsPending() -> Bool {
    let rv = gdk_events_pending()
    return Bool(rv != 0)
}




/// Flushes the output buffers of all display connections and waits
/// until all requests have been processed.
/// This is rarely needed by applications.
@available(*, deprecated) public func flush() {
    gdk_flush()

}




/// Obtains the root window (parent all other windows are inside)
/// for the default display and screen.
public func getDefaultRootWindow() -> UnsafeMutablePointer<GdkWindow>! {
    let rv = gdk_get_default_root_window()
    return cast(rv)
}




/// Gets the name of the display, which usually comes from the
/// `DISPLAY` environment variable or the
/// `--display` command line option.
///
/// **get_display is deprecated:**
/// Call gdk_display_get_name (gdk_display_get_default ()))
///    instead.
@available(*, deprecated) public func getDisplay() -> String! {
    let rv = gdk_get_display()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Gets the display name specified in the command line arguments passed
/// to gdk_init() or gdk_parse_args(), if any.
public func getDisplayArgName() -> String! {
    let rv = gdk_get_display_arg_name()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Gets the program class. Unless the program class has explicitly
/// been set with gdk_set_program_class() or with the `--class`
/// commandline option, the default value is the program name (determined
/// with g_get_prgname()) with the first character converted to uppercase.
public func getProgramClass() -> String! {
    let rv = gdk_get_program_class()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Gets whether event debugging output is enabled.
public func getShowEvents() -> Bool {
    let rv = gdk_get_show_events()
    return Bool(rv != 0)
}




public func glErrorQuark() -> GQuark {
    let rv = gdk_gl_error_quark()
    return rv
}




/// Initializes the GDK library and connects to the windowing system.
/// If initialization fails, a warning message is output and the application
/// terminates with a call to `exit(1)`.
/// 
/// Any arguments used by GDK are removed from the array and `argc` and `argv`
/// are updated accordingly.
/// 
/// GTK+ initializes GDK in gtk_init() and so this function is not usually
/// needed by GTK+ applications.
public func init_(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) {
    gdk_init(cast(argc), cast(argv))

}




/// Initializes the GDK library and connects to the windowing system,
/// returning `true` on success.
/// 
/// Any arguments used by GDK are removed from the array and `argc` and `argv`
/// are updated accordingly.
/// 
/// GTK+ initializes GDK in gtk_init() and so this function is not usually
/// needed by GTK+ applications.
public func initCheck(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) -> Bool {
    let rv = gdk_init_check(cast(argc), cast(argv))
    return Bool(rv != 0)
}




/// Grabs the keyboard so that all events are passed to this
/// application until the keyboard is ungrabbed with gdk_keyboard_ungrab().
/// This overrides any previous keyboard grab by this client.
/// 
/// If you set up anything at the time you take the grab that needs to be cleaned
/// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
/// are emitted when the grab ends unvoluntarily.
///
/// **keyboard_grab is deprecated:**
/// Use gdk_device_grab() instead.
@available(*, deprecated) public func keyboardGrab(window: WindowProtocol, ownerEvents owner_events: Bool, time_: UInt32) -> GdkGrabStatus {
    let rv = gdk_keyboard_grab(cast(window.ptr), gboolean(owner_events ? 1 : 0), guint32(time_))
    return rv
}




/// Ungrabs the keyboard on the default display, if it is grabbed by this
/// application.
///
/// **keyboard_ungrab is deprecated:**
/// Use gdk_device_ungrab(), together with gdk_device_grab()
///             instead.
@available(*, deprecated) public func keyboardUngrab(time_: UInt32) {
    gdk_keyboard_ungrab(guint32(time_))

}




/// Obtains the upper- and lower-case versions of the keyval `symbol`.
/// Examples of keyvals are `GDK_KEY_a`, `GDK_KEY_Enter`, `GDK_KEY_F1`, etc.
public func keyvalConvertCase(symbol: CUnsignedInt, lower: UnsafeMutablePointer<CUnsignedInt>, upper: UnsafeMutablePointer<CUnsignedInt>) {
    gdk_keyval_convert_case(guint(symbol), cast(lower), cast(upper))

}




/// Converts a key name to a key value.
/// 
/// The names are the same as those in the
/// `gdk/gdkkeysyms.h` header file
/// but without the leading “GDK_KEY_”.
public func keyvalFromName(keyvalName keyval_name: UnsafePointer<gchar>) -> CUnsignedInt {
    let rv = gdk_keyval_from_name(keyval_name)
    return CUnsignedInt(rv)
}




/// Returns `true` if the given key value is in lower case.
public func keyvalIsLower(keyval: CUnsignedInt) -> Bool {
    let rv = gdk_keyval_is_lower(guint(keyval))
    return Bool(rv != 0)
}




/// Returns `true` if the given key value is in upper case.
public func keyvalIsUpper(keyval: CUnsignedInt) -> Bool {
    let rv = gdk_keyval_is_upper(guint(keyval))
    return Bool(rv != 0)
}




/// Converts a key value into a symbolic name.
/// 
/// The names are the same as those in the
/// `gdk/gdkkeysyms.h` header file
/// but without the leading “GDK_KEY_”.
public func keyvalName(keyval: CUnsignedInt) -> String! {
    let rv = gdk_keyval_name(guint(keyval))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Converts a key value to lower case, if applicable.
public func keyvalToLower(keyval: CUnsignedInt) -> CUnsignedInt {
    let rv = gdk_keyval_to_lower(guint(keyval))
    return CUnsignedInt(rv)
}




/// Convert from a GDK key symbol to the corresponding ISO10646 (Unicode)
/// character.
public func keyvalToUnicode(keyval: CUnsignedInt) -> UInt32 {
    let rv = gdk_keyval_to_unicode(guint(keyval))
    return UInt32(rv)
}




/// Converts a key value to upper case, if applicable.
public func keyvalToUpper(keyval: CUnsignedInt) -> CUnsignedInt {
    let rv = gdk_keyval_to_upper(guint(keyval))
    return CUnsignedInt(rv)
}




/// Lists the available visuals for the default screen.
/// (See gdk_screen_list_visuals())
/// A visual describes a hardware image data format.
/// For example, a visual might support 24-bit color, or 8-bit color,
/// and might expect pixels to be in a certain format.
/// 
/// Call g_list_free() on the return value when you’re finished with it.
///
/// **list_visuals is deprecated:**
/// Use gdk_screen_list_visuals (gdk_screen_get_default ()).
@available(*, deprecated) public func listVisuals() -> UnsafeMutablePointer<GList>! {
    let rv = gdk_list_visuals()
    return cast(rv)
}




/// Indicates to the GUI environment that the application has finished
/// loading. If the applications opens windows, this function is
/// normally called after opening the application’s initial set of
/// windows.
/// 
/// GTK+ will call this function automatically after opening the first
/// `GtkWindow` unless gtk_window_set_auto_startup_notification() is called
/// to disable that feature.
public func notifyStartupComplete() {
    gdk_notify_startup_complete()

}




/// Indicates to the GUI environment that the application has
/// finished loading, using a given identifier.
/// 
/// GTK+ will call this function automatically for `GtkWindow`
/// with custom startup-notification identifier unless
/// gtk_window_set_auto_startup_notification() is called to
/// disable that feature.
public func notifyStartupCompleteWithId(startupId startup_id: UnsafePointer<gchar>) {
    gdk_notify_startup_complete_with_id(startup_id)

}




/// Gets the window that `window` is embedded in.
public func offscreenWindowGetEmbedder(window: WindowProtocol) -> UnsafeMutablePointer<GdkWindow>! {
    let rv = gdk_offscreen_window_get_embedder(cast(window.ptr))
    return cast(rv)
}




/// Gets the offscreen surface that an offscreen window renders into.
/// If you need to keep this around over window resizes, you need to
/// add a reference to it.
public func offscreenWindowGetSurface(window: WindowProtocol) -> UnsafeMutablePointer<cairo_surface_t>! {
    let rv = gdk_offscreen_window_get_surface(cast(window.ptr))
    return cast(rv)
}




/// Sets `window` to be embedded in `embedder`.
/// 
/// To fully embed an offscreen window, in addition to calling this
/// function, it is also necessary to handle the `GdkWindow`::pick-embedded-child
/// signal on the `embedder` and the `GdkWindow`::to-embedder and
/// `GdkWindow`::from-embedder signals on `window`.
public func offscreenWindowSetEmbedder(window: WindowProtocol, embedder: WindowProtocol) {
    gdk_offscreen_window_set_embedder(cast(window.ptr), cast(embedder.ptr))

}




/// Creates a `PangoContext` for the default GDK screen.
/// 
/// The context must be freed when you’re finished with it.
/// 
/// When using GTK+, normally you should use gtk_widget_get_pango_context()
/// instead of this function, to get the appropriate context for
/// the widget you intend to render text onto.
/// 
/// The newly created context will have the default font options (see
/// `cairo_font_options_t`) for the default screen; if these options
/// change it will not be updated. Using gtk_widget_get_pango_context()
/// is more convenient if you want to keep a context around and track
/// changes to the screen’s font rendering settings.
public func pangoContextGet() -> UnsafeMutablePointer<PangoContext>! {
    let rv = gdk_pango_context_get()
    return cast(rv)
}




/// Creates a `PangoContext` for `display`.
/// 
/// The context must be freed when you’re finished with it.
/// 
/// When using GTK+, normally you should use gtk_widget_get_pango_context()
/// instead of this function, to get the appropriate context for
/// the widget you intend to render text onto.
/// 
/// The newly created context will have the default font options
/// (see `cairo_font_options_t`) for the display; if these options
/// change it will not be updated. Using gtk_widget_get_pango_context()
/// is more convenient if you want to keep a context around and track
/// changes to the font rendering settings.
public func pangoContextGetFor(display: DisplayProtocol) -> UnsafeMutablePointer<PangoContext>! {
    let rv = gdk_pango_context_get_for_display(cast(display.ptr))
    return cast(rv)
}




/// Creates a `PangoContext` for `screen`.
/// 
/// The context must be freed when you’re finished with it.
/// 
/// When using GTK+, normally you should use gtk_widget_get_pango_context()
/// instead of this function, to get the appropriate context for
/// the widget you intend to render text onto.
/// 
/// The newly created context will have the default font options
/// (see `cairo_font_options_t`) for the screen; if these options
/// change it will not be updated. Using gtk_widget_get_pango_context()
/// is more convenient if you want to keep a context around and track
/// changes to the screen’s font rendering settings.
public func pangoContextGetFor(screen: ScreenProtocol) -> UnsafeMutablePointer<PangoContext>! {
    let rv = gdk_pango_context_get_for_screen(cast(screen.ptr))
    return cast(rv)
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
public func pangoLayoutGetClipRegion(layout: LayoutProtocol, xOrigin x_origin: CInt, yOrigin y_origin: CInt, indexRanges index_ranges: UnsafePointer<CInt>, nRanges n_ranges: CInt) -> UnsafeMutablePointer<cairo_region_t>! {
    let rv = gdk_pango_layout_get_clip_region(cast(layout.ptr), gint(x_origin), gint(y_origin), cast(index_ranges), gint(n_ranges))
    return cast(rv)
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
public func pangoLayoutLineGetClipRegion(line: LayoutLineProtocol, xOrigin x_origin: CInt, yOrigin y_origin: CInt, indexRanges index_ranges: UnsafePointer<CInt>, nRanges n_ranges: CInt) -> UnsafeMutablePointer<cairo_region_t>! {
    let rv = gdk_pango_layout_line_get_clip_region(cast(line.ptr), gint(x_origin), gint(y_origin), cast(index_ranges), gint(n_ranges))
    return cast(rv)
}




/// Parse command line arguments, and store for future
/// use by calls to gdk_display_open().
/// 
/// Any arguments used by GDK are removed from the array and `argc` and `argv` are
/// updated accordingly.
/// 
/// You shouldn’t call this function explicitly if you are using
/// gtk_init(), gtk_init_check(), gdk_init(), or gdk_init_check().
public func parseArgs(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) {
    gdk_parse_args(cast(argc), cast(argv))

}




/// Transfers image data from a `cairo_surface_t` and converts it to an RGB(A)
/// representation inside a `GdkPixbuf`. This allows you to efficiently read
/// individual pixels from cairo surfaces. For `GdkWindows`, use
/// gdk_pixbuf_get_from_window() instead.
/// 
/// This function will create an RGB pixbuf with 8 bits per channel.
/// The pixbuf will contain an alpha channel if the `surface` contains one.
public func pixbufGetFrom(surface: SurfaceProtocol, srcX src_x: CInt, srcY src_y: CInt, width: CInt, height: CInt) -> UnsafeMutablePointer<GdkPixbuf>! {
    let rv = gdk_pixbuf_get_from_surface(cast(surface.ptr), gint(src_x), gint(src_y), gint(width), gint(height))
    return cast(rv)
}




/// Transfers image data from a `GdkWindow` and converts it to an RGB(A)
/// representation inside a `GdkPixbuf`. In other words, copies
/// image data from a server-side drawable to a client-side RGB(A) buffer.
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
public func pixbufGetFrom(window: WindowProtocol, srcX src_x: CInt, srcY src_y: CInt, width: CInt, height: CInt) -> UnsafeMutablePointer<GdkPixbuf>! {
    let rv = gdk_pixbuf_get_from_window(cast(window.ptr), gint(src_x), gint(src_y), gint(width), gint(height))
    return cast(rv)
}




/// Grabs the pointer (usually a mouse) so that all events are passed to this
/// application until the pointer is ungrabbed with gdk_pointer_ungrab(), or
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
@available(*, deprecated) public func pointerGrab(window: WindowProtocol, ownerEvents owner_events: Bool, eventMask event_mask: EventMask, confineTo confine_to: WindowProtocol, cursor: CursorProtocol, time_: UInt32) -> GdkGrabStatus {
    let rv = gdk_pointer_grab(cast(window.ptr), gboolean(owner_events ? 1 : 0), event_mask, cast(confine_to.ptr), cast(cursor.ptr), guint32(time_))
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
@available(*, deprecated) public func pointerIsGrabbed() -> Bool {
    let rv = gdk_pointer_is_grabbed()
    return Bool(rv != 0)
}




/// Ungrabs the pointer on the default display, if it is grabbed by this
/// application.
///
/// **pointer_ungrab is deprecated:**
/// Use gdk_device_ungrab(), together with gdk_device_grab()
///             instead.
@available(*, deprecated) public func pointerUngrab(time_: UInt32) {
    gdk_pointer_ungrab(guint32(time_))

}




/// Prepare for parsing command line arguments for GDK. This is not
/// public API and should not be used in application code.
///
/// **pre_parse_libgtk_only is deprecated:**
/// This symbol was never meant to be used outside
///   of GTK+
@available(*, deprecated) public func preParseLibgtkOnly() {
    gdk_pre_parse_libgtk_only()

}




/// Changes the contents of a property on a window.
public func propertyChange(window: WindowProtocol, property: Atom, type: Atom, format: CInt, mode: PropMode, data: UnsafePointer<guchar>, nelements: CInt) {
    gdk_property_change(cast(window.ptr), cast(property.ptr), cast(type.ptr), gint(format), mode, cast(data), gint(nelements))

}




/// Deletes a property from a window.
public func propertyDelete(window: WindowProtocol, property: Atom) {
    gdk_property_delete(cast(window.ptr), cast(property.ptr))

}




/// Retrieves a portion of the contents of a property. If the
/// property does not exist, then the function returns `false`,
/// and `GDK_NONE` will be stored in `actual_property_type`.
/// 
/// The XGetWindowProperty() function that gdk_property_get()
/// uses has a very confusing and complicated set of semantics.
/// Unfortunately, gdk_property_get() makes the situation
/// worse instead of better (the semantics should be considered
/// undefined), and also prints warnings to stderr in cases where it
/// should return a useful error to the program. You are advised to use
/// XGetWindowProperty() directly until a replacement function for
/// gdk_property_get() is provided.
public func propertyGet(window: WindowProtocol, property: Atom, type: Atom, offset: CUnsignedLong, length: CUnsignedLong, pdelete: CInt, actualPropertyType actual_property_type: AtomProtocol, actualFormat actual_format: UnsafeMutablePointer<CInt>, actualLength actual_length: UnsafeMutablePointer<CInt>, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>>) -> Bool {
    let rv = gdk_property_get(cast(window.ptr), cast(property.ptr), cast(type.ptr), gulong(offset), gulong(length), gint(pdelete), cast(actual_property_type.ptr), cast(actual_format), cast(actual_length), cast(data))
    return Bool(rv != 0)
}




/// This function returns the available bit depths for the default
/// screen. It’s equivalent to listing the visuals
/// (gdk_list_visuals()) and then looking at the depth field in each
/// visual, removing duplicates.
/// 
/// The array returned by this function should not be freed.
///
/// **query_depths is deprecated:**
/// Visual selection should be done using
///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
@available(*, deprecated) public func query(depths: UnsafeMutablePointer<UnsafeMutablePointer<CInt>>, count: UnsafeMutablePointer<CInt>) {
    gdk_query_depths(cast(depths), cast(count))

}




/// This function returns the available visual types for the default
/// screen. It’s equivalent to listing the visuals
/// (gdk_list_visuals()) and then looking at the type field in each
/// visual, removing duplicates.
/// 
/// The array returned by this function should not be freed.
///
/// **query_visual_types is deprecated:**
/// Visual selection should be done using
///     gdk_screen_get_system_visual() and gdk_screen_get_rgba_visual()
@available(*, deprecated) public func query(visualTypes visual_types: UnsafeMutablePointer<UnsafeMutablePointer<GdkVisualType>>, count: UnsafeMutablePointer<CInt>) {
    gdk_query_visual_types(cast(visual_types), cast(count))

}




/// Retrieves the contents of a selection in a given
/// form.
public func selectionConvert(requestor: WindowProtocol, selection: Atom, target: Atom, time_: UInt32) {
    gdk_selection_convert(cast(requestor.ptr), cast(selection.ptr), cast(target.ptr), guint32(time_))

}




/// Determines the owner of the given selection.
public func selectionOwnerGet(selection: Atom) -> UnsafeMutablePointer<GdkWindow>! {
    let rv = gdk_selection_owner_get(cast(selection.ptr))
    return cast(rv)
}




/// Determine the owner of the given selection.
/// 
/// Note that the return value may be owned by a different
/// process if a foreign window was previously created for that
/// window, but a new foreign window will never be created by this call.
public func selectionOwnerGetFor(display: DisplayProtocol, selection: Atom) -> UnsafeMutablePointer<GdkWindow>! {
    let rv = gdk_selection_owner_get_for_display(cast(display.ptr), cast(selection.ptr))
    return cast(rv)
}




/// Sets the owner of the given selection.
public func selectionOwnerSet(owner: WindowProtocol, selection: Atom, time_: UInt32, sendEvent send_event: Bool) -> Bool {
    let rv = gdk_selection_owner_set(cast(owner.ptr), cast(selection.ptr), guint32(time_), gboolean(send_event ? 1 : 0))
    return Bool(rv != 0)
}




/// Sets the `GdkWindow` `owner` as the current owner of the selection `selection`.
public func selectionOwnerSetFor(display: DisplayProtocol, owner: WindowProtocol, selection: Atom, time_: UInt32, sendEvent send_event: Bool) -> Bool {
    let rv = gdk_selection_owner_set_for_display(cast(display.ptr), cast(owner.ptr), cast(selection.ptr), guint32(time_), gboolean(send_event ? 1 : 0))
    return Bool(rv != 0)
}




/// Retrieves selection data that was stored by the selection
/// data in response to a call to gdk_selection_convert(). This function
/// will not be used by applications, who should use the `GtkClipboard`
/// API instead.
public func selectionPropertyGet(requestor: WindowProtocol, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>>, propType prop_type: AtomProtocol, propFormat prop_format: UnsafeMutablePointer<CInt>) -> CInt {
    let rv = gdk_selection_property_get(cast(requestor.ptr), cast(data), cast(prop_type.ptr), cast(prop_format))
    return CInt(rv)
}




/// Sends a response to SelectionRequest event.
public func selectionSendNotify(requestor: WindowProtocol, selection: Atom, target: Atom, property: Atom, time_: UInt32) {
    gdk_selection_send_notify(cast(requestor.ptr), cast(selection.ptr), cast(target.ptr), cast(property.ptr), guint32(time_))

}




/// Send a response to SelectionRequest event.
public func selectionSendNotifyFor(display: DisplayProtocol, requestor: WindowProtocol, selection: Atom, target: Atom, property: Atom, time_: UInt32) {
    gdk_selection_send_notify_for_display(cast(display.ptr), cast(requestor.ptr), cast(selection.ptr), cast(target.ptr), cast(property.ptr), guint32(time_))

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
/// 
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
/// This call must happen prior to gdk_display_open(),
/// gtk_init(), gtk_init_with_args() or gtk_init_check()
/// in order to take effect.
public func setAllowed(backends: UnsafePointer<gchar>) {
    gdk_set_allowed_backends(backends)

}




/// Set the double click time for the default display. See
/// gdk_display_set_double_click_time().
/// See also gdk_display_set_double_click_distance().
/// Applications should not set this, it is a
/// global user-configured setting.
@available(*, deprecated) public func setDoubleClickTime(msec: CUnsignedInt) {
    gdk_set_double_click_time(guint(msec))

}




/// Sets the program class. The X11 backend uses the program class to set
/// the class name part of the `WM_CLASS` property on
/// toplevel windows; see the ICCCM.
/// 
/// The program class can still be overridden with the --class command
/// line option.
public func set(programClass program_class: UnsafePointer<gchar>) {
    gdk_set_program_class(program_class)

}




/// Sets whether a trace of received events is output.
/// Note that GTK+ must be compiled with debugging (that is,
/// configured using the `--enable-debug` option)
/// to use this option.
public func set(showEvents show_events: Bool) {
    gdk_set_show_events(gboolean(show_events ? 1 : 0))

}




/// Obtains a desktop-wide setting, such as the double-click time,
/// for the default screen. See gdk_screen_get_setting().
public func settingGet(name: UnsafePointer<gchar>, value: ValueProtocol) -> Bool {
    let rv = gdk_setting_get(name, cast(value.ptr))
    return Bool(rv != 0)
}




public func synthesizeWindowState(window: WindowProtocol, unsetFlags unset_flags: WindowState, setFlags set_flags: WindowState) {
    gdk_synthesize_window_state(cast(window.ptr), unset_flags, set_flags)

}




/// Retrieves a pixel from `window` to force the windowing
/// system to carry out any pending rendering commands.
/// 
/// This function is intended to be used to synchronize with rendering
/// pipelines, to benchmark windowing system rendering operations.
public func testRenderSync(window: WindowProtocol) {
    gdk_test_render_sync(cast(window.ptr))

}




/// This function is intended to be used in GTK+ test programs.
/// It will warp the mouse pointer to the given (`x`,`y`) coordinates
/// within `window` and simulate a button press or release event.
/// Because the mouse pointer needs to be warped to the target
/// location, use of this function outside of test programs that
/// run in their own virtual windowing system (e.g. Xvfb) is not
/// recommended.
/// 
/// Also, gdk_test_simulate_button() is a fairly low level function,
/// for most testing purposes, gtk_test_widget_click() is the right
/// function to call which will generate a button press event followed
/// by its accompanying button release event.
public func testSimulateButton(window: WindowProtocol, x: CInt, y: CInt, button: CUnsignedInt, modifiers: ModifierType, buttonPressrelease button_pressrelease: EventType) -> Bool {
    let rv = gdk_test_simulate_button(cast(window.ptr), gint(x), gint(y), guint(button), modifiers, button_pressrelease)
    return Bool(rv != 0)
}




/// This function is intended to be used in GTK+ test programs.
/// If (`x`,`y`) are > (-1,-1), it will warp the mouse pointer to
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
/// Also, gdk_test_simulate_key() is a fairly low level function,
/// for most testing purposes, gtk_test_widget_send_key() is the
/// right function to call which will generate a key press event
/// followed by its accompanying key release event.
public func testSimulateKey(window: WindowProtocol, x: CInt, y: CInt, keyval: CUnsignedInt, modifiers: ModifierType, keyPressrelease key_pressrelease: EventType) -> Bool {
    let rv = gdk_test_simulate_key(cast(window.ptr), gint(x), gint(y), guint(keyval), modifiers, key_pressrelease)
    return Bool(rv != 0)
}




/// Converts a text property in the given encoding to
/// a list of UTF-8 strings.
public func textPropertyToUtf8ListFor(display: DisplayProtocol, encoding: Atom, format: CInt, text: UnsafePointer<guchar>, length: CInt, list: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) -> CInt {
    let rv = gdk_text_property_to_utf8_list_for_display(cast(display.ptr), cast(encoding.ptr), gint(format), cast(text), gint(length), cast(list))
    return CInt(rv)
}




/// A wrapper for the common usage of gdk_threads_add_idle_full()
/// assigning the default priority, `G_PRIORITY_DEFAULT_IDLE`.
/// 
/// See gdk_threads_add_idle_full().
public func threadsAddIdle(function: @escaping GLib.SourceFunc, data: UnsafeMutableRawPointer) -> CUnsignedInt {
    let rv = gdk_threads_add_idle(function, cast(data))
    return CUnsignedInt(rv)
}




/// Adds a function to be called whenever there are no higher priority
/// events pending.  If the function returns `false` it is automatically
/// removed from the list of event sources and will not be called again.
/// 
/// This variant of g_idle_add_full() calls `function` with the GDK lock
/// held. It can be thought of a MT-safe version for GTK+ widgets for the
/// following use case, where you have to worry about idle_callback()
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
public func threadsAddIdleFull(priority: CInt, function: @escaping GLib.SourceFunc, data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) -> CUnsignedInt {
    let rv = gdk_threads_add_idle_full(gint(priority), function, cast(data), notify)
    return CUnsignedInt(rv)
}




/// A wrapper for the common usage of gdk_threads_add_timeout_full()
/// assigning the default priority, `G_PRIORITY_DEFAULT`.
/// 
/// See gdk_threads_add_timeout_full().
public func threadsAddTimeout(interval: CUnsignedInt, function: @escaping GLib.SourceFunc, data: UnsafeMutableRawPointer) -> CUnsignedInt {
    let rv = gdk_threads_add_timeout(guint(interval), function, cast(data))
    return CUnsignedInt(rv)
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
/// This variant of g_timeout_add_full() can be thought of a MT-safe version
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
public func threadsAddTimeoutFull(priority: CInt, interval: CUnsignedInt, function: @escaping GLib.SourceFunc, data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) -> CUnsignedInt {
    let rv = gdk_threads_add_timeout_full(gint(priority), guint(interval), function, cast(data), notify)
    return CUnsignedInt(rv)
}




/// A wrapper for the common usage of gdk_threads_add_timeout_seconds_full()
/// assigning the default priority, `G_PRIORITY_DEFAULT`.
/// 
/// For details, see gdk_threads_add_timeout_full().
public func threadsAddTimeoutSeconds(interval: CUnsignedInt, function: @escaping GLib.SourceFunc, data: UnsafeMutableRawPointer) -> CUnsignedInt {
    let rv = gdk_threads_add_timeout_seconds(guint(interval), function, cast(data))
    return CUnsignedInt(rv)
}




/// A variant of gdk_threads_add_timeout_full() with second-granularity.
/// See g_timeout_add_seconds_full() for a discussion of why it is
/// a good idea to use this function if you don’t need finer granularity.
public func threadsAddTimeoutSecondsFull(priority: CInt, interval: CUnsignedInt, function: @escaping GLib.SourceFunc, data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) -> CUnsignedInt {
    let rv = gdk_threads_add_timeout_seconds_full(gint(priority), guint(interval), function, cast(data), notify)
    return CUnsignedInt(rv)
}




/// This function marks the beginning of a critical section in which
/// GDK and GTK+ functions can be called safely and without causing race
/// conditions. Only one thread at a time can be in such a critial
/// section.
///
/// **threads_enter is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) public func threadsEnter() {
    gdk_threads_enter()

}




/// Initializes GDK so that it can be used from multiple threads
/// in conjunction with gdk_threads_enter() and gdk_threads_leave().
/// 
/// This call must be made before any use of the main loop from
/// GTK+; to be safe, call it before gtk_init().
///
/// **threads_init is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) public func threadsInit() {
    gdk_threads_init()

}




/// Leaves a critical region begun with gdk_threads_enter().
///
/// **threads_leave is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) public func threadsLeave() {
    gdk_threads_leave()

}




/// Allows the application to replace the standard method that
/// GDK uses to protect its data structures. Normally, GDK
/// creates a single `GMutex` that is locked by gdk_threads_enter(),
/// and released by gdk_threads_leave(); using this function an
/// application provides, instead, a function `enter_fn` that is
/// called by gdk_threads_enter() and a function `leave_fn` that is
/// called by gdk_threads_leave().
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
/// This method must be called before gdk_threads_init(), and cannot
/// be called multiple times.
///
/// **threads_set_lock_functions is deprecated:**
/// All GDK and GTK+ calls should be made from the main
///     thread
@available(*, deprecated) public func threadsSetLockFunctions(enterFn enter_fn: @escaping GLibObject.Callback, leaveFn leave_fn: @escaping GLibObject.Callback) {
    gdk_threads_set_lock_functions(enter_fn, leave_fn)

}




/// Convert from a ISO10646 character to a key symbol.
public func unicodeToKeyval(wc: UInt32) -> CUnsignedInt {
    let rv = gdk_unicode_to_keyval(guint32(wc))
    return CUnsignedInt(rv)
}




/// Converts an UTF-8 string into the best possible representation
/// as a STRING. The representation of characters not in STRING
/// is not specified; it may be as pseudo-escape sequences
/// \x{ABCD}, or it may be in some other form of approximation.
public func utf8ToStringTarget(str: UnsafePointer<gchar>) -> String! {
    let rv = gdk_utf8_to_string_target(str)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}


