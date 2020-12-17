// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [ .library(name: "Gdk", targets: ["Gdk"]) ],
    dependencies: [
        .package(name: "GdkPixbuf", url: "https://github.com/rhx/SwiftGdkPixbuf.git", .branch("master")),
        .package(name: "PangoCairo", url: "https://github.com/rhx/SwiftPangoCairo.git", .branch("master")),
    ],
    targets: [
	.systemLibrary(name: "CGdk", pkgConfig: "gtk4",
	    providers: [
		.brew(["gtk+4", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-4-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "Gdk", dependencies: ["CGdk", "GdkPixbuf", "PangoCairo"]),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
    ]
)
