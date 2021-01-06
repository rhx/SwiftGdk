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

// MARK: - ContentFormats Record

/// The `ContentFormatsProtocol` protocol exposes the methods and properties of an underlying `GdkContentFormats` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContentFormats`.
/// Alternatively, use `ContentFormatsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This section describes the `GdkContentFormats` structure that is used to
/// advertise and negotiate the format of content passed between different
/// widgets, windows or applications using for example the clipboard or
/// drag'n'drop.
/// 
/// GDK supports content in 2 forms: `GType` and mime type.
/// Using `GTypes` is meant only for in-process content transfers. Mime types
/// are meant to be used for data passing both in-process and out-of-process.
/// The details of how data is passed is described in the documentation of
/// the actual implementations.
/// 
/// A `GdkContentFormats` describes a set of possible formats content can be
/// exchanged in. It is assumed that this set is ordered. `GTypes` are more
/// important than mime types. Order between different `GTypes` or mime types
/// is the order they were added in, most important first. Functions that
/// care about order, such as `gdk_content_formats_union()` will describe in
/// their documentation how they interpret that order, though in general the
/// order of the first argument is considered the primary order of the result,
/// followed by the order of further arguments.
/// 
/// For debugging purposes, the function `gdk_content_formats_to_string()` exists.
/// It will print a comma-seperated formats of formats from most important to least
/// important.
/// 
/// `GdkContentFormats` is an immutable struct. After creation, you cannot change
/// the types it represents. Instead, new `GdkContentFormats` have to be created.
/// The `GdkContentFormatsBuilder` structure is meant to help in this endeavor.
public protocol ContentFormatsProtocol {
        /// Untyped pointer to the underlying `GdkContentFormats` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkContentFormats` instance.
    var content_formats_ptr: UnsafeMutablePointer<GdkContentFormats>! { get }

}

/// The `ContentFormatsRef` type acts as a lightweight Swift reference to an underlying `GdkContentFormats` instance.
/// It exposes methods that can operate on this data type through `ContentFormatsProtocol` conformance.
/// Use `ContentFormatsRef` only as an `unowned` reference to an existing `GdkContentFormats` instance.
///
/// This section describes the `GdkContentFormats` structure that is used to
/// advertise and negotiate the format of content passed between different
/// widgets, windows or applications using for example the clipboard or
/// drag'n'drop.
/// 
/// GDK supports content in 2 forms: `GType` and mime type.
/// Using `GTypes` is meant only for in-process content transfers. Mime types
/// are meant to be used for data passing both in-process and out-of-process.
/// The details of how data is passed is described in the documentation of
/// the actual implementations.
/// 
/// A `GdkContentFormats` describes a set of possible formats content can be
/// exchanged in. It is assumed that this set is ordered. `GTypes` are more
/// important than mime types. Order between different `GTypes` or mime types
/// is the order they were added in, most important first. Functions that
/// care about order, such as `gdk_content_formats_union()` will describe in
/// their documentation how they interpret that order, though in general the
/// order of the first argument is considered the primary order of the result,
/// followed by the order of further arguments.
/// 
/// For debugging purposes, the function `gdk_content_formats_to_string()` exists.
/// It will print a comma-seperated formats of formats from most important to least
/// important.
/// 
/// `GdkContentFormats` is an immutable struct. After creation, you cannot change
/// the types it represents. Instead, new `GdkContentFormats` have to be created.
/// The `GdkContentFormatsBuilder` structure is meant to help in this endeavor.
public struct ContentFormatsRef: ContentFormatsProtocol {
        /// Untyped pointer to the underlying `GdkContentFormats` instance.
    /// For type-safe access, use the generated, typed pointer `content_formats_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContentFormatsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkContentFormats>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkContentFormats>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkContentFormats>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkContentFormats>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `ContentFormatsProtocol`
    @inlinable init<T: ContentFormatsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GdkContentFormats` from an array of mime types.
    /// 
    /// The mime types must be valid and different from each other or the
    /// behavior of the return value is undefined. If you cannot guarantee
    /// this, use `GdkContentFormatsBuilder` instead.
    @inlinable init( mimeTypes: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil, nMimeTypes: Int) {
        let rv = gdk_content_formats_new(mimeTypes, guint(nMimeTypes))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GdkContentFormats` for a given `GType`.
    @inlinable init(gtype type: GType) {
        let rv = gdk_content_formats_new_for_gtype(type)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GdkContentFormats` for a given `GType`.
    @inlinable static func newForG(gtype type: GType) -> ContentFormatsRef! {
        guard let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_new_for_gtype(type))) else { return nil }
        return rv
    }
}

/// The `ContentFormats` type acts as a reference-counted owner of an underlying `GdkContentFormats` instance.
/// It provides the methods that can operate on this data type through `ContentFormatsProtocol` conformance.
/// Use `ContentFormats` as a strong reference or owner of a `GdkContentFormats` instance.
///
/// This section describes the `GdkContentFormats` structure that is used to
/// advertise and negotiate the format of content passed between different
/// widgets, windows or applications using for example the clipboard or
/// drag'n'drop.
/// 
/// GDK supports content in 2 forms: `GType` and mime type.
/// Using `GTypes` is meant only for in-process content transfers. Mime types
/// are meant to be used for data passing both in-process and out-of-process.
/// The details of how data is passed is described in the documentation of
/// the actual implementations.
/// 
/// A `GdkContentFormats` describes a set of possible formats content can be
/// exchanged in. It is assumed that this set is ordered. `GTypes` are more
/// important than mime types. Order between different `GTypes` or mime types
/// is the order they were added in, most important first. Functions that
/// care about order, such as `gdk_content_formats_union()` will describe in
/// their documentation how they interpret that order, though in general the
/// order of the first argument is considered the primary order of the result,
/// followed by the order of further arguments.
/// 
/// For debugging purposes, the function `gdk_content_formats_to_string()` exists.
/// It will print a comma-seperated formats of formats from most important to least
/// important.
/// 
/// `GdkContentFormats` is an immutable struct. After creation, you cannot change
/// the types it represents. Instead, new `GdkContentFormats` have to be created.
/// The `GdkContentFormatsBuilder` structure is meant to help in this endeavor.
open class ContentFormats: ContentFormatsProtocol {
        /// Untyped pointer to the underlying `GdkContentFormats` instance.
    /// For type-safe access, use the generated, typed pointer `content_formats_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormats` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkContentFormats>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormats` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkContentFormats>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormats` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormats` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormats` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkContentFormats>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormats` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkContentFormats>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkContentFormats`.
    /// i.e., ownership is transferred to the `ContentFormats` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkContentFormats>) {
        ptr = UnsafeMutableRawPointer(op)
        gdk_content_formats_ref(ptr.assumingMemoryBound(to: GdkContentFormats.self))
    }

    /// Reference intialiser for a related type that implements `ContentFormatsProtocol`
    /// Will retain `GdkContentFormats`.
    /// - Parameter other: an instance of a related type that implements `ContentFormatsProtocol`
    @inlinable public init<T: ContentFormatsProtocol>(_ other: T) {
        ptr = other.ptr
        gdk_content_formats_ref(ptr.assumingMemoryBound(to: GdkContentFormats.self))
    }

    /// Releases the underlying `GdkContentFormats` instance using `gdk_content_formats_unref`.
    deinit {
        gdk_content_formats_unref(ptr.assumingMemoryBound(to: GdkContentFormats.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gdk_content_formats_ref(ptr.assumingMemoryBound(to: GdkContentFormats.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gdk_content_formats_ref(ptr.assumingMemoryBound(to: GdkContentFormats.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gdk_content_formats_ref(ptr.assumingMemoryBound(to: GdkContentFormats.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gdk_content_formats_ref(ptr.assumingMemoryBound(to: GdkContentFormats.self))
    }

    /// Creates a new `GdkContentFormats` from an array of mime types.
    /// 
    /// The mime types must be valid and different from each other or the
    /// behavior of the return value is undefined. If you cannot guarantee
    /// this, use `GdkContentFormatsBuilder` instead.
    @inlinable public init( mimeTypes: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil, nMimeTypes: Int) {
        let rv = gdk_content_formats_new(mimeTypes, guint(nMimeTypes))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GdkContentFormats` for a given `GType`.
    @inlinable public init(gtype type: GType) {
        let rv = gdk_content_formats_new_for_gtype(type)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GdkContentFormats` for a given `GType`.
    @inlinable public static func newForG(gtype type: GType) -> ContentFormats! {
        guard let rv = ContentFormats(gconstpointer: gconstpointer(gdk_content_formats_new_for_gtype(type))) else { return nil }
        return rv
    }

}

// MARK: no ContentFormats properties

// MARK: no ContentFormats signals


// MARK: ContentFormats Record: ContentFormatsProtocol extension (methods and fields)
public extension ContentFormatsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkContentFormats` instance.
    @inlinable var content_formats_ptr: UnsafeMutablePointer<GdkContentFormats>! { return ptr?.assumingMemoryBound(to: GdkContentFormats.self) }

    /// Checks if a given `GType` is part of the given `formats`.
    @inlinable func containGtype(type: GType) -> Bool {
        let rv = ((gdk_content_formats_contain_gtype(content_formats_ptr, type)) != 0)
        return rv
    }

    /// Checks if a given mime type is part of the given `formats`.
    @inlinable func contain(mimeType: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gdk_content_formats_contain_mime_type(content_formats_ptr, mimeType)) != 0)
        return rv
    }

    /// Gets the `GTypes` included in `formats`. Note that `formats` may not
    /// contain any `GTypes`, in particular when they are empty. In that
    /// case `nil` will be returned.
    @inlinable func getGtypes(nGtypes: UnsafeMutablePointer<gsize>! = nil) -> UnsafePointer<GType>! {
        let rv = gdk_content_formats_get_gtypes(content_formats_ptr, nGtypes)
        return rv
    }

    /// Gets the mime types included in `formats`. Note that `formats` may not
    /// contain any mime types, in particular when they are empty. In that
    /// case `nil` will be returned.
    @inlinable func getMimeTypes(nMimeTypes: UnsafeMutablePointer<gsize>! = nil) -> UnsafePointer<UnsafePointer<CChar>?>! {
        let rv = gdk_content_formats_get_mime_types(content_formats_ptr, nMimeTypes)
        return rv
    }

    /// Checks if `first` and `second` have any matching formats.
    @inlinable func match<ContentFormatsT: ContentFormatsProtocol>(second: ContentFormatsT) -> Bool {
        let rv = ((gdk_content_formats_match(content_formats_ptr, second.content_formats_ptr)) != 0)
        return rv
    }

    /// Finds the first `GType` from `first` that is also contained
    /// in `second`. If no matching `GType` is found, `G_TYPE_INVALID`
    /// is returned.
    @inlinable func matchGtype<ContentFormatsT: ContentFormatsProtocol>(second: ContentFormatsT) -> GType {
        let rv = gdk_content_formats_match_gtype(content_formats_ptr, second.content_formats_ptr)
        return rv
    }

    /// Finds the first mime type from `first` that is also contained
    /// in `second`. If no matching mime type is found, `nil` is
    /// returned.
    @inlinable func matchMimeType<ContentFormatsT: ContentFormatsProtocol>(second: ContentFormatsT) -> String! {
        let rv = gdk_content_formats_match_mime_type(content_formats_ptr, second.content_formats_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Prints the given `formats` into a string for human consumption.
    /// This is meant for debugging and logging.
    /// 
    /// The form of the representation may change at any time and is
    /// not guaranteed to stay identical.
    @inlinable func print<StringTypeT: StringProtocol>(string: StringTypeT) {
        gdk_content_formats_print(content_formats_ptr, string.gstring_ptr)
    
    }

    /// Increases the reference count of a `GdkContentFormats` by one.
    @discardableResult @inlinable func ref() -> ContentFormatsRef! {
        guard let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_ref(content_formats_ptr))) else { return nil }
        return rv
    }

    /// Prints the given `formats` into a human-readable string.
    /// This is a small wrapper around `gdk_content_formats_print()` to help
    /// when debugging.
    @inlinable func toString() -> String! {
        let rv = gdk_content_formats_to_string(content_formats_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Append all missing types from `second` to `first`, in the order
    /// they had in `second`.
    @inlinable func union<ContentFormatsT: ContentFormatsProtocol>(second: ContentFormatsT) -> ContentFormatsRef! {
        guard let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_union(content_formats_ptr, second.content_formats_ptr))) else { return nil }
        return rv
    }

    /// Add GTypes for mime types in `formats` for which deserializers are
    /// registered.
    @inlinable func unionDeserializeGtypes() -> ContentFormatsRef! {
        guard let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_union_deserialize_gtypes(content_formats_ptr))) else { return nil }
        return rv
    }

    /// Add mime types for GTypes in `formats` for which deserializers are
    /// registered.
    @inlinable func unionDeserializeMimeTypes() -> ContentFormatsRef! {
        guard let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_union_deserialize_mime_types(content_formats_ptr))) else { return nil }
        return rv
    }

    /// Add GTypes for the mime types in `formats` for which serializers are
    /// registered.
    @inlinable func unionSerializeGtypes() -> ContentFormatsRef! {
        guard let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_union_serialize_gtypes(content_formats_ptr))) else { return nil }
        return rv
    }

    /// Add mime types for GTypes in `formats` for which serializers are
    /// registered.
    @inlinable func unionSerializeMimeTypes() -> ContentFormatsRef! {
        guard let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_union_serialize_mime_types(content_formats_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count of a `GdkContentFormats` by one.
    /// If the resulting reference count is zero, frees the formats.
    @inlinable func unref() {
        gdk_content_formats_unref(content_formats_ptr)
    
    }


}



// MARK: - ContentFormatsBuilder Record

/// The `ContentFormatsBuilderProtocol` protocol exposes the methods and properties of an underlying `GdkContentFormatsBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContentFormatsBuilder`.
/// Alternatively, use `ContentFormatsBuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkContentFormatsBuilder` struct is an opaque struct. It is meant to
/// not be kept around and only be used to create new `GdkContentFormats`
/// objects.
public protocol ContentFormatsBuilderProtocol {
        /// Untyped pointer to the underlying `GdkContentFormatsBuilder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkContentFormatsBuilder` instance.
    var content_formats_builder_ptr: UnsafeMutablePointer<GdkContentFormatsBuilder>! { get }

}

/// The `ContentFormatsBuilderRef` type acts as a lightweight Swift reference to an underlying `GdkContentFormatsBuilder` instance.
/// It exposes methods that can operate on this data type through `ContentFormatsBuilderProtocol` conformance.
/// Use `ContentFormatsBuilderRef` only as an `unowned` reference to an existing `GdkContentFormatsBuilder` instance.
///
/// A `GdkContentFormatsBuilder` struct is an opaque struct. It is meant to
/// not be kept around and only be used to create new `GdkContentFormats`
/// objects.
public struct ContentFormatsBuilderRef: ContentFormatsBuilderProtocol {
        /// Untyped pointer to the underlying `GdkContentFormatsBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `content_formats_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContentFormatsBuilderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkContentFormatsBuilder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkContentFormatsBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkContentFormatsBuilder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkContentFormatsBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `ContentFormatsBuilderProtocol`
    @inlinable init<T: ContentFormatsBuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GdkContentFormatsBuilder` object. The resulting builder
    /// would create an empty `GdkContentFormats`. Use addition functions to add
    /// types to it.
    @inlinable init() {
        let rv = gdk_content_formats_builder_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ContentFormatsBuilder` type acts as a reference-counted owner of an underlying `GdkContentFormatsBuilder` instance.
/// It provides the methods that can operate on this data type through `ContentFormatsBuilderProtocol` conformance.
/// Use `ContentFormatsBuilder` as a strong reference or owner of a `GdkContentFormatsBuilder` instance.
///
/// A `GdkContentFormatsBuilder` struct is an opaque struct. It is meant to
/// not be kept around and only be used to create new `GdkContentFormats`
/// objects.
open class ContentFormatsBuilder: ContentFormatsBuilderProtocol {
        /// Untyped pointer to the underlying `GdkContentFormatsBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `content_formats_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormatsBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkContentFormatsBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormatsBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkContentFormatsBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormatsBuilder` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormatsBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormatsBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkContentFormatsBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentFormatsBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkContentFormatsBuilder>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkContentFormatsBuilder`.
    /// i.e., ownership is transferred to the `ContentFormatsBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkContentFormatsBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
        gdk_content_formats_builder_ref(ptr.assumingMemoryBound(to: GdkContentFormatsBuilder.self))
    }

    /// Reference intialiser for a related type that implements `ContentFormatsBuilderProtocol`
    /// Will retain `GdkContentFormatsBuilder`.
    /// - Parameter other: an instance of a related type that implements `ContentFormatsBuilderProtocol`
    @inlinable public init<T: ContentFormatsBuilderProtocol>(_ other: T) {
        ptr = other.ptr
        gdk_content_formats_builder_ref(ptr.assumingMemoryBound(to: GdkContentFormatsBuilder.self))
    }

    /// Releases the underlying `GdkContentFormatsBuilder` instance using `gdk_content_formats_builder_unref`.
    deinit {
        gdk_content_formats_builder_unref(ptr.assumingMemoryBound(to: GdkContentFormatsBuilder.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gdk_content_formats_builder_ref(ptr.assumingMemoryBound(to: GdkContentFormatsBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gdk_content_formats_builder_ref(ptr.assumingMemoryBound(to: GdkContentFormatsBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gdk_content_formats_builder_ref(ptr.assumingMemoryBound(to: GdkContentFormatsBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentFormatsBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gdk_content_formats_builder_ref(ptr.assumingMemoryBound(to: GdkContentFormatsBuilder.self))
    }

    /// Create a new `GdkContentFormatsBuilder` object. The resulting builder
    /// would create an empty `GdkContentFormats`. Use addition functions to add
    /// types to it.
    @inlinable public init() {
        let rv = gdk_content_formats_builder_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no ContentFormatsBuilder properties

// MARK: no ContentFormatsBuilder signals


// MARK: ContentFormatsBuilder Record: ContentFormatsBuilderProtocol extension (methods and fields)
public extension ContentFormatsBuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkContentFormatsBuilder` instance.
    @inlinable var content_formats_builder_ptr: UnsafeMutablePointer<GdkContentFormatsBuilder>! { return ptr?.assumingMemoryBound(to: GdkContentFormatsBuilder.self) }

    /// Appends all formats from `formats` to `builder`, skipping those that
    /// already exist.
    @inlinable func add<ContentFormatsT: ContentFormatsProtocol>(formats: ContentFormatsT) {
        gdk_content_formats_builder_add_formats(content_formats_builder_ptr, formats.content_formats_ptr)
    
    }

    /// Appends `gtype` to `builder` if it has not already been added.
    @inlinable func addGtype(type: GType) {
        gdk_content_formats_builder_add_gtype(content_formats_builder_ptr, type)
    
    }

    /// Appends `mime_type` to `builder` if it has not already been added.
    @inlinable func add(mimeType: UnsafePointer<CChar>!) {
        gdk_content_formats_builder_add_mime_type(content_formats_builder_ptr, mimeType)
    
    }

    /// Creates a new `GdkContentFormats` from the current state of the
    /// given `builder`, and frees the `builder` instance.
    @inlinable func freeToFormats() -> ContentFormatsRef! {
        let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_builder_free_to_formats(content_formats_builder_ptr)))
        return rv
    }

    /// Acquires a reference on the given `builder`.
    /// 
    /// This function is intended primarily for bindings. `GdkContentFormatsBuilder` objects
    /// should not be kept around.
    @discardableResult @inlinable func ref() -> ContentFormatsBuilderRef! {
        guard let rv = ContentFormatsBuilderRef(gconstpointer: gconstpointer(gdk_content_formats_builder_ref(content_formats_builder_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GdkContentFormats` from the given `builder`.
    /// 
    /// The given `GdkContentFormatsBuilder` is reset once this function returns;
    /// you cannot call this function multiple times on the same `builder` instance.
    /// 
    /// This function is intended primarily for bindings. C code should use
    /// `gdk_content_formats_builder_free_to_formats()`.
    @inlinable func toFormats() -> ContentFormatsRef! {
        let rv = ContentFormatsRef(gconstpointer: gconstpointer(gdk_content_formats_builder_to_formats(content_formats_builder_ptr)))
        return rv
    }

    /// Releases a reference on the given `builder`.
    @inlinable func unref() {
        gdk_content_formats_builder_unref(content_formats_builder_ptr)
    
    }


}



// MARK: - ContentProviderClass Record

/// The `ContentProviderClassProtocol` protocol exposes the methods and properties of an underlying `GdkContentProviderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContentProviderClass`.
/// Alternatively, use `ContentProviderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GdkContentProvider`.
public protocol ContentProviderClassProtocol {
        /// Untyped pointer to the underlying `GdkContentProviderClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkContentProviderClass` instance.
    var _ptr: UnsafeMutablePointer<GdkContentProviderClass>! { get }

}

/// The `ContentProviderClassRef` type acts as a lightweight Swift reference to an underlying `GdkContentProviderClass` instance.
/// It exposes methods that can operate on this data type through `ContentProviderClassProtocol` conformance.
/// Use `ContentProviderClassRef` only as an `unowned` reference to an existing `GdkContentProviderClass` instance.
///
/// Class structure for `GdkContentProvider`.
public struct ContentProviderClassRef: ContentProviderClassProtocol {
        /// Untyped pointer to the underlying `GdkContentProviderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContentProviderClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkContentProviderClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkContentProviderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkContentProviderClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkContentProviderClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `ContentProviderClassProtocol`
    @inlinable init<T: ContentProviderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ContentProviderClass` type acts as an owner of an underlying `GdkContentProviderClass` instance.
/// It provides the methods that can operate on this data type through `ContentProviderClassProtocol` conformance.
/// Use `ContentProviderClass` as a strong reference or owner of a `GdkContentProviderClass` instance.
///
/// Class structure for `GdkContentProvider`.
open class ContentProviderClass: ContentProviderClassProtocol {
        /// Untyped pointer to the underlying `GdkContentProviderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProviderClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkContentProviderClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProviderClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkContentProviderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProviderClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProviderClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProviderClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkContentProviderClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ContentProviderClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkContentProviderClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkContentProviderClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ContentProviderClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkContentProviderClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkContentProviderClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ContentProviderClassProtocol`
    /// `GdkContentProviderClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ContentProviderClassProtocol`
    @inlinable public init<T: ContentProviderClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkContentProviderClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkContentProviderClass`.
    deinit {
        // no reference counting for GdkContentProviderClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkContentProviderClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkContentProviderClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkContentProviderClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContentProviderClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkContentProviderClass, cannot ref(_ptr)
    }



}

// MARK: no ContentProviderClass properties

// MARK: no ContentProviderClass signals


// MARK: ContentProviderClass Record: ContentProviderClassProtocol extension (methods and fields)
public extension ContentProviderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkContentProviderClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkContentProviderClass>! { return ptr?.assumingMemoryBound(to: GdkContentProviderClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var contentChanged is unavailable because content_changed is void

    // var attachClipboard is unavailable because attach_clipboard is void

    // var detachClipboard is unavailable because detach_clipboard is void

    // var refFormats is unavailable because ref_formats is void

    // var refStorableFormats is unavailable because ref_storable_formats is void

    // var writeMimeTypeAsync is unavailable because write_mime_type_async is void

    // var writeMimeTypeFinish is unavailable because write_mime_type_finish is void

    // var getValue is unavailable because get_value is void

    // var padding is unavailable because padding is private

}



// MARK: - DevicePadInterface Record

/// The `DevicePadInterfaceProtocol` protocol exposes the methods and properties of an underlying `GdkDevicePadInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DevicePadInterface`.
/// Alternatively, use `DevicePadInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DevicePadInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkDevicePadInterface` instance.
    var _ptr: UnsafeMutablePointer<GdkDevicePadInterface>! { get }

}

/// The `DevicePadInterfaceRef` type acts as a lightweight Swift reference to an underlying `GdkDevicePadInterface` instance.
/// It exposes methods that can operate on this data type through `DevicePadInterfaceProtocol` conformance.
/// Use `DevicePadInterfaceRef` only as an `unowned` reference to an existing `GdkDevicePadInterface` instance.
///

public struct DevicePadInterfaceRef: DevicePadInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DevicePadInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkDevicePadInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkDevicePadInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `DevicePadInterfaceProtocol`
    @inlinable init<T: DevicePadInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DevicePadInterface` type acts as an owner of an underlying `GdkDevicePadInterface` instance.
/// It provides the methods that can operate on this data type through `DevicePadInterfaceProtocol` conformance.
/// Use `DevicePadInterface` as a strong reference or owner of a `GdkDevicePadInterface` instance.
///

open class DevicePadInterface: DevicePadInterfaceProtocol {
        /// Untyped pointer to the underlying `GdkDevicePadInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkDevicePadInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkDevicePadInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkDevicePadInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DevicePadInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkDevicePadInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DevicePadInterfaceProtocol`
    /// `GdkDevicePadInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DevicePadInterfaceProtocol`
    @inlinable public init<T: DevicePadInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkDevicePadInterface`.
    deinit {
        // no reference counting for GdkDevicePadInterface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DevicePadInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkDevicePadInterface, cannot ref(_ptr)
    }



}

// MARK: no DevicePadInterface properties

// MARK: no DevicePadInterface signals


// MARK: DevicePadInterface Record: DevicePadInterfaceProtocol extension (methods and fields)
public extension DevicePadInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkDevicePadInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkDevicePadInterface>! { return ptr?.assumingMemoryBound(to: GdkDevicePadInterface.self) }



}



