// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [
        .library(name: "Gdk", targets: ["Gdk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/CGdk.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftGdkPixbuf.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftPangoCairo.git", .branch("master")),
    ],
    targets: [
        .target(name: "Gdk", dependencies: ["GdkPixbuf", "PangoCairo"]),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
    ]
)
