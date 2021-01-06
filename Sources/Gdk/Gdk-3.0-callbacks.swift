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

/// Specifies the type of function passed to `gdk_event_handler_set()` to
/// handle all GDK events.
public typealias EventFunc = GdkEventFunc

/// Specifies the type of function used to filter native events before they are
/// converted to GDK events.
/// 
/// When a filter is called, `event` is unpopulated, except for
/// `event->window`. The filter may translate the native
/// event to a GDK event and store the result in `event`, or handle it without
/// translation. If the filter translates the event and processing should
/// continue, it should return `GDK_FILTER_TRANSLATE`.
public typealias FilterFunc = GdkFilterFunc

/// Type of the callback used to set up `window` so it can be
/// grabbed. A typical action would be ensuring the window is
/// visible, although there's room for other initialization
/// actions.
public typealias SeatGrabPrepareFunc = GdkSeatGrabPrepareFunc

/// A function of this type is passed to `gdk_window_invalidate_maybe_recurse()`.
/// It gets called for each child of the window to determine whether to
/// recursively invalidate it or now.
public typealias WindowChildFunc = GdkWindowChildFunc

/// Whenever some area of the window is invalidated (directly in the
/// window or in a child window) this gets called with `region` in
/// the coordinate space of `window`. You can use `region` to just
/// keep track of the dirty region, or you can actually change
/// `region` in case you are doing display tricks like showing
/// a child in multiple places.
public typealias WindowInvalidateHandlerFunc = GdkWindowInvalidateHandlerFunc
