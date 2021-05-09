// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [ .library(name: "Gdk", targets: ["Gdk"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("development")),
        .package(name: "GdkPixbuf", url: "https://github.com/rhx/SwiftGdkPixbuf.git", .branch("development")),
        .package(name: "PangoCairo", url: "https://github.com/rhx/SwiftPangoCairo.git", .branch("development")),
    ],
    targets: [
	.systemLibrary(name: "CGdk", pkgConfig: "gdk-3.0",
	    providers: [
		.brew(["gtk+3", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-3-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Gdk", 
            dependencies: ["CGdk", "GdkPixbuf", "PangoCairo"],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug))]
        ),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
    ]
)
