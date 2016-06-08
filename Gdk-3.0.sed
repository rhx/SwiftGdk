s/EVENT_STOP: Bool = 5/EVENT_STOP: gboolean = 1/
s/gdk_cursor_ref/g_object_ref/g
s/gdk_cursor_unref/g_object_unref/g
s/cr: ContextProtocol/cr: cairo.ContextProtocol/
s/create_similar_image_surface(format: CInt/create_similar_image_surface(format: cairo_format_t/
s/-> GdkAtom {/-> GdkAtom! {/g
