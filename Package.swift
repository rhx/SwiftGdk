import PackageDescription

let package = Package(
    name: "Gdk",
    dependencies: [
        .Package(url: "https://github.com/rhx/CGdk.git", majorVersion: 1),
        .Package(url: "https://github.com/rhx/SwiftGdkPixbuf.git", majorVersion: 2),
        .Package(url: "https://github.com/rhx/SwiftPangoCairo.git", majorVersion: 2)
    ],
    swiftLanguageVersions: [3, 4]
)
