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

/// The type of a function that can be registered with `gdk_content_register_deserializer()`.
/// When the function gets called to operate on content, it can call functions on the
/// `deserializer` object to obtain the mime type, input stream, user data, etc. for its
/// operation.
public typealias ContentDeserializeFunc = GdkContentDeserializeFunc

/// The type of a function that can be registered with `gdk_content_register_serializer()`.
/// When the function gets called to operate on content, it can call functions on the
/// `serializer` object to obtain the mime type, output stream, user data, etc. for its
/// operation.
public typealias ContentSerializeFunc = GdkContentSerializeFunc
