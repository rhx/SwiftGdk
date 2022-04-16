# SwiftGdk

A Swift wrapper around gdk-3.x and gdk-4.x that is largely auto-generated from gobject-introspection.
For up to date (auto-generated) reference documentation, see https://rhx.github.io/SwiftGdk/

![macOS 11 build](https://github.com/rhx/SwiftGdk/workflows/macOS%2011/badge.svg)
![macOS 10.15 build](https://github.com/rhx/SwiftGdk/workflows/macOS%2010.15/badge.svg)
![macOS gtk4 build](https://github.com/rhx/SwiftGdk/workflows/macOS%20gtk4/badge.svg)
![Ubuntu 20.04 build](https://github.com/rhx/SwiftGdk/workflows/Ubuntu%2020.04/badge.svg)
![Ubuntu 18.04 build](https://github.com/rhx/SwiftGdk/workflows/Ubuntu%2018.04/badge.svg)

## What is new?

Support for gtk 4 was added via the `gtk4` branch.

Version 15 of gir2swift provides a Package Manager Plugin.  This requires Swift 5.6 or higher.

## Prerequisites

### Swift 5.6 or higher

To build, download Swift from https://swift.org/download/ -- if you are using macOS, make sure you have the command line tools installed as well).  Test that your compiler works using `swift --version`, which should give you something like

	$ swift --version
	swift-driver version: 1.45.2 Apple Swift version 5.6 (swiftlang-5.6.0.323.62 clang-1316.0.20.8)
    Target: x86_64-apple-darwin20.3.0

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 5.6.1 (swift-5.6.1-RELEASE)
	Target: x86_64-unknown-linux-gnu

### Gtk 3.22 or higher

The Swift wrappers have been tested with glib-2.56, 2.58, 2.60, 2.62, 2.64, 2.66, 2.68, 2.70 and 2.72, and gdk/gtk 3.22 and 3.24 as well as 4.0, 4.2, 4.4, and 4.6 on the gtk4 branch.  They should work with higher versions, but YMMV.  Also make sure you have `gobject-introspection` and its `.gir` files installed.

#### Linux

##### Ubuntu

On Ubuntu you can use the gtk that comes with the distribution.  Just install with the `apt` package manager:

	sudo apt update
	sudo apt install libgtk-3-dev gir1.2-gtk-3.0 gir1.2-gtksource-3.0 libgirepository1.0-dev libxml2-dev

##### Fedora

On Fedora, you can use the gtk that comes with the distribution.  Just install with the `dnf` package manager:

	sudo dnf install gtk3-devel pango-devel cairo-devel cairo-gobject-devel glib2-devel gobject-introspection-devel libxml2-devel

#### macOS

On macOS, you can install gdk and gtk using HomeBrew (for setup instructions, see http://brew.sh).  Once you have a running HomeBrew installation, you can use it to install a native version of gtk:

	brew update
	brew install gtk4 glib glib-networking gobject-introspection pkg-config

## Usage

Normally, you don't build this package directly (but for testing you can - see 'Building' below). Instead you need to embed SwiftGdk into your own project using the [Swift Package Manager](https://swift.org/package-manager/).  After installing the prerequisites (see 'Prerequisites' below), add `SwiftGdk` as a dependency to your `Package.swift` file, e.g.:

```Swift
// swift-tools-version:5.6

import PackageDescription

let package = Package(name: "MyPackage",
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGdk.git",  branch: "gtk4"),
    ],
    targets: [
        .target(name: "MyPackage",
                dependencies: [
                    .product(name: "Gdk", package: "SwiftGdk")
                ]
        )
    ]
)
```

For gtk3 replace `.branch("gtk4")` with `.branch("gtk3")`.

## Building

Normally, you don't build this package directly, but you embed it into your own project (see 'Usage' above).  However, you can build and test this module separately to ensure that everything works.  Make sure you have all the prerequisites installed (see above).  After that, you can simply clone this repository and build the command line executable (be patient, this will download all the required dependencies and take a while to compile) using

	git clone https://github.com/rhx/SwiftGdk.git
	cd SwiftGdk
    swift build
    swift test

### Xcode

On macOS, you can build the project using Xcode instead.  To do this, you need to create an Xcode project first, then open the project in the Xcode IDE:


	./xcodegen.sh
	open Gdk.xcodeproj

After that, use the (usual) Build and Test buttons to build/test this package.


## Documentation

You can find reference documentation inside the [docs](https://rhx.github.io/SwiftGdk/) folder.
This was generated using the [jazzy](https://github.com/realm/jazzy) tool.
If you want to generate your own documentation, matching your local installation,
you can use the `generate-documentation.sh` script in the repository.
Unfortunately, at this stage [jazzy](https://github.com/realm/jazzy) only works on macOS (and crashes under Linux), so this will currently only work on a Mac.

	brew install sourcekitten
	sudo gem install jazzy
	./generate-documentation.sh

## Troubleshooting

Here are some common errors you might encounter and how to fix them.

### Missing `.gir` Files
If you get an error such as

	Girs located at
	Cannot open '/GLib-2.0.gir': No such file or directory

Make sure that you have the relevant `gobject-introspection` packages installed (as per the Pre-requisites section), including their `.gir` and `.pc` files.

### Old Swift toolchain or Xcode
If, when you run `swift build`, you get a `Segmentation fault (core dumped)` or circular dependency error such as

	warning: circular dependency detected while parsing pangocairo: harfbuzz -> freetype2 -> harfbuzz
	
this probably means that your Swift toolchain is too old, particularly on Linux (at the time of this writing, some Linux distributions require at least Swift 5.5).  Make sure the latest toolchain is the one that is found when you run the Swift compiler (see above).

  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Xcode.app
	xcode-select --install
