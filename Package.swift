// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RoutingHTTPServer",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RoutingHTTPServer",
            targets: ["RoutingHTTPServer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.0.0"),
        .package(url: "https://github.com/hudl/CocoaHTTPServer", branch: "spm")
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RoutingHTTPServer",
            dependencies: ["CocoaLumberjack", "CocoaHTTPServer"]),
        .testTarget(
            name: "RoutingHTTPServerTests",
            dependencies: ["RoutingHTTPServer"]),
    ]
)