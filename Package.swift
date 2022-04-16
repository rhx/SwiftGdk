// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [ .library(name: "Gdk", targets: ["Gdk"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("swif52")),
        .package(name: "GdkPixbuf", url: "https://github.com/rhx/SwiftGdkPixbuf.git", .branch("swif52")),
        .package(name: "PangoCairo", url: "https://github.com/rhx/SwiftPangoCairo.git", .branch("swif52")),
    ],
    targets: [
	.systemLibrary(name: "CGdk", pkgConfig: "gtk4",
	    providers: [
		.brew(["gtk4", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-4-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Gdk", 
            dependencies: ["CGdk", "GdkPixbuf", "PangoCairo"],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))]
        ),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
    ]
)
