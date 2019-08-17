// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [
        .library(name: "Gdk", targets: ["Gdk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/SwiftGdkPixbuf.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftPangoCairo.git", .branch("master")),
    ],
    targets: [
	.systemLibrary(name: "CGdk", pkgConfig: "gdk-3.0 pangocairo pangoft2 pango gio-unix-2.0 glib-2.",
	    providers: [
		.brew(["gtk+3", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-3-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "Gdk", dependencies: ["CGdk", "GdkPixbuf", "PangoCairo"]),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
    ]
)
