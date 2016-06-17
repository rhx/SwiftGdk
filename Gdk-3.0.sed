s/EVENT_STOP: Bool = 5/EVENT_STOP: gboolean = 1/
s/gdk_cursor_ref/g_object_ref/g
s/gdk_cursor_unref/g_object_unref/g
s/cr: ContextProtocol/cr: cairo.ContextProtocol/
s/createSimilarImageSurface(format: CInt/createSimilarImageSurface(format: cairo_format_t/
s/-> GdkAtom {/-> GdkAtom! {/g
