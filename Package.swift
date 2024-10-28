// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.0.6/GRDB.xcframework.zip",
            checksum: "e8b85b64f120a0715eeac1e2b85776974316bb4c32602d9e789b64e00c90e8eb"
        ),
        .target(name: "_GRDBDummy")
    ]
)
