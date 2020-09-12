s/EVENT_STOP: Bool = 5/EVENT_STOP: gboolean = 1/
s/gdk_cursor_ref/g_object_ref/g
s/gdk_cursor_unref/g_object_unref/g
s/createSimilarImageSurface(format: CInt/createSimilarImageSurface(format: cairo_format_t/
s/\(@available(., deprecated) @inlinable\) \(public init() {\)/\1 override \2/
s/\(public init<T: AppLaunchContextProtocol>(\)appLaunchContext \(other: T)\)/\1_ \2/
s/-> GdkAtom {/-> GdkAtom! {/g
s/: GdkAtom/: GdkAtom!/g
s/UnsafeMutablePointer<GdkAtom>/GdkAtom/
s/targets: UnsafePointer<GdkAtom>/targets: UnsafePointer<GdkAtom?>/
s/GdkAtom!.self/_GdkAtom.self/
s/actual_property_type: AtomT/actual_property_type: UnsafeMutablePointer<GdkAtom?>/
s/property: GdkAtom!, type: GdkAtom!/property: AtomT!, type: AtomT!/
s/property, type/property._ptr, type._ptr/
s/propertyGet<WindowT: WindowProtocol>/propertyGet<WindowT: WindowProtocol, AtomT: AtomProtocol>/
s/propertyChange<WindowT: WindowProtocol>/propertyChange<WindowT: WindowProtocol, AtomT: AtomProtocol>/
s/func propertyChange(property: AtomT/func propertyChange<AtomT: AtomProtocol>(property: AtomT/
s/\(propertyGet.*\)window: WindowT, property: AtomT!, type: AtomT!/\1window: WindowT, property: UnsafeMutablePointer<GdkAtom?>, type: AtomT!/
s/(gdk_property_get(window.window_ptr, property._ptr, type._ptr, gulong(offset), gulong(length), gint(pdelete), _ptr, actual_format, actual_length, data)/(gdk_property_get(window.window_ptr, _ptr, type._ptr, gulong(offset), gulong(length), gint(pdelete), property, actual_format, actual_length, data)/
s/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propFormat/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, property _ptr: UnsafeMutablePointer<GdkAtom?>, propFormat/
s/selectionPropertyGet<AtomT: AtomProtocol>(data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propType prop_type: AtomT, propFormat prop_format: UnsafeMutablePointer<gint>!) -> Int/selectionPropertyGet(data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propertyType: UnsafeMutablePointer<GdkAtom?>, propFormat prop_format: UnsafeMutablePointer<gint>!) -> Int/
s/property._ptr, type._ptr, gulong(offset), gulong(length), gint(pdelete), actual_property_type._ptr/_ptr, type._ptr, gulong(offset), gulong(length), gint(pdelete), actual_property_type/
s/selectionPropertyGet<AtomT: AtomProtocol, WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>.>!, propType prop_type: AtomT/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propertyType: UnsafeMutablePointer<GdkAtom?>!/
s/rv = Int(gdk_selection_property_get(requestor.window_ptr, data, prop_type._ptr, prop_format))/rv = Int(gdk_selection_property_get(requestor.window_ptr, data, propertyType, prop_format))/
s/Int(gdk_selection_property_get(window_ptr, data, prop_type._ptr, prop_format))/Int(gdk_selection_property_get(window_ptr, data, propertyType, prop_format))/
s/gdk_gl_context_set_use_es(gl_context_ptr, gint(newValue))/gdk_gl_context_set_use_es(gl_context_ptr, newValue ? 1 : 0)/
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
s/_ptr.pointee.state = newValue.value/_ptr.pointee.state = newValue.rawValue/
s/targets: GdkAtom/targets: UnsafePointer<GdkAtom?>/
