// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [ .library(name: "Gdk", targets: ["Gdk"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",       branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGdkPixbuf.git",  branch: "development"),
        .package(url: "https://github.com/rhx/SwiftPangoCairo.git", branch: "development"),
    ],
    targets: [
	.systemLibrary(name: "CGdk", pkgConfig: "gdk-3.0",
	    providers: [
		.brew(["gtk+3", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk-3-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "Gdk", 
            dependencies: [
                "CGdk",
                .product(name: "gir2swift",  package: "gir2swift"),
                .product(name: "GdkPixBuf",  package: "SwiftGdkPixbuf"),
                .product(name: "PangoCairo", package: "SwiftPangoCairo"),
            ],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
    ]
)
