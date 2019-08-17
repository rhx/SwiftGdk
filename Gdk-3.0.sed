s/EVENT_STOP: Bool = 5/EVENT_STOP: gboolean = 1/
s/gdk_cursor_ref/g_object_ref/g
s/gdk_cursor_unref/g_object_unref/g
s/cr: ContextProtocol/cr: cairo.ContextProtocol/
s/createSimilarImageSurface(format: CInt/createSimilarImageSurface(format: cairo_format_t/
s/-> GdkAtom {/-> GdkAtom! {/g
s/gdk_gl_context_set_use_es(cast(gl_context_ptr), newValue)/gdk_gl_context_set_use_es(cast(gl_context_ptr), newValue ? 1 : 0)/
s/: \([A-Za-z.]*Notify[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Func[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshal[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshaller[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Callback[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Accumulator[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Handler[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transform[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer =\)/: @escaping \1/g
s/: \([A-Za-z.]*Hook[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Mapping[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Listener[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*ListenerInit[,)]\)/: @escaping \1/g
s/GObject.Callback/GLibObject.Callback/g
s/func endPaint/@available(*, deprecated) func endPaint/
s/public func beep/@available(*, deprecated) public func beep/
s/public func errorTrap/@available(*, deprecated) public func errorTrap/
s/public func flush/@available(*, deprecated) public func flush/
s/public func setDoubleClickTime/@available(*, deprecated) public func setDoubleClickTime/
