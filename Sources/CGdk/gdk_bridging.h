struct _GdkAppLaunchContext {};
struct _GdkAtom {};
struct _GdkAxisUse {};
struct _GdkButtonEvent {};
struct _GdkByteOrder {};
struct _GdkCairoContext {};
struct _GdkClipboard {};
struct _GdkContentDeserializer {};
struct _GdkContentFormats {};
struct _GdkContentFormatsBuilder {};
struct _GdkContentSerializer {};
struct _GdkCrossingEvent {};
struct _GdkCrossingMode {};
struct _GdkCursor {};
struct _GdkCursorType {};
struct _GdkDNDEvent {};
struct _GdkDeleteEvent {};
struct _GdkDevice {};
struct _GdkDeviceManager {};
struct _GdkDeviceType {};
struct _GdkDisplay {};
struct _GdkDisplayManager {};
struct _GdkDmabufFormats {};
struct _GdkDmabufTexture {};
struct _GdkDmabufTextureBuilder {};
typedef struct _GdkDmabufTextureBuilder GdkDmabufTextureBuilder;
struct _GdkDmabufTextureBuilderClass {};
typedef struct _GdkDmabufTextureBuilderClass GdkDmabufTextureBuilderClass;
struct _GdkDmabufTextureClass {};
typedef struct _GdkDmabufTextureClass GdkDmabufTextureClass;
struct _GdkDrag {};
struct _GdkDragAction {};
struct _GdkDragContext {};
struct _GdkDragProtocol {};
struct _GdkDragSurface {};
struct _GdkDragSurfaceInterface {};
struct _GdkDragSurfaceSize {};
struct _GdkDrawContext {};
struct _GdkDrop {};
struct _GdkEvent {};
struct _GdkEventFunc {};
struct _GdkEventMask {};
struct _GdkEventSequence {};
struct _GdkFileList {};
struct _GdkFilterFunc {};
struct _GdkFilterReturn {};
struct _GdkFocusEvent {};
struct _GdkFrameClock {};
struct _GdkFrameClockClass {};
struct _GdkFrameClockPhase {};
struct _GdkFrameClockPrivate {};
struct _GdkFrameTimings {};
struct _GdkFullscreenMode {};
struct _GdkGLContext {};
struct _GdkGLError {};
struct _GdkGLTexture {};
struct _GdkGLTextureBuilder {};
struct _GdkGLTextureBuilderClass {};
struct _GdkGLTextureClass {};
struct _GdkGrabBrokenEvent {};
struct _GdkGrabOwnership {};
struct _GdkGrabStatus {};
struct _GdkGravity {};
struct _GdkInputMode {};
struct _GdkInputSource {};
struct _GdkKeyEvent {};
struct _GdkKeymap {};
struct _GdkMemoryTexture {};
struct _GdkMemoryTextureClass {};
struct _GdkModifierIntent {};
struct _GdkModifierType {};
struct _GdkMotionEvent {};
struct _GdkNotifyType {};
struct _GdkOwnerChange {};
struct _GdkPadEvent {};
struct _GdkPaintable {};
struct _GdkPixbuf {};
struct _GdkPopup {};
struct _GdkPopupInterface {};
struct _GdkPopupLayout {};
struct _GdkPropMode {};
struct _GdkPropertyState {};
struct _GdkProximityEvent {};
struct _GdkRectangle {};
struct _GdkScreen {};
struct _GdkScrollDirection {};
struct _GdkScrollEvent {};
struct _GdkSettingAction {};
struct _GdkSnapshot {};
struct _GdkSnapshotClass {};
struct _GdkStatus {};
struct _GdkSurface {};
struct _GdkSurfaceClass {};
struct _GdkTexture {};
struct _GdkTextureClass {};
struct _GdkTextureDownloader {};
struct _GdkToplevel {};
struct _GdkToplevelInterface {};
struct _GdkToplevelLayout {};
struct _GdkToplevelSize {};
struct _GdkTouchEvent {};
struct _GdkTouchpadEvent {};
struct _GdkTouchpadGesturePhase {};
struct _GdkVisibilityState {};
struct _GdkVisual {};
struct _GdkVisualType {};
struct _GdkVulkanContext {};
struct _GdkWMDecoration {};
struct _GdkWMFunction {};
struct _GdkWindow {};
struct _GdkWindowAttributesType {};
struct _GdkWindowChildFunc {};
struct _GdkWindowEdge {};
struct _GdkWindowHints {};
struct _GdkWindowInvalidateHandlerFunc {};
struct _GdkWindowRedirect {};
struct _GdkWindowState {};
struct _GdkWindowType {};
struct _GdkWindowTypeHint {};
struct _GdkWindowWindowClass {};
struct _GdkXEvent {};

// gdk+3.22.x
struct _GdkDevicePad {};
struct _GdkDevicePadClass {};
struct _GdkDevicePadInterface {};
struct _GdkDeviceTool {};
struct _GdkDeviceToolClass {};
struct _GdkDeviceToolInterface {};
struct _GdkDrawingContext {};
struct _GdkDrawingContextClass {};
struct _GdkDrawingContextInterface {};
struct _GdkMonitor {};
struct _GdkMonitorClass {};
struct _GdkMonitorInterface {};

#define GLIB_DISABLE_DEPRECATION_WARNINGS
#include <sys/types.h>
#include <unistd.h>
#include <termios.h>
#include <gdk/gdk.h>

#undef GDK_ACTION_ALL
#define GDK_ACTION_ALL 7

#undef GDK_MODIFIER_MASK
#define GDK_MODIFIER_MASK 0x1C001F0F
