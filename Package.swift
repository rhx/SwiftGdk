import PackageDescription

let package = Package(
    name: "Gdk",
    dependencies: [
        .Package(url: "https://github.com/rhx/SwiftPangoCairo.git", majorVersion: 2)
    ]
)
)
