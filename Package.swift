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
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.0.2/GRDB.xcframework.zip",
            checksum: "60cde550fb002c41e996a09505aea93a5b78efbf1eff1d1313757181ed547b31"
        ),
        .target(name: "_GRDBDummy")
    ]
)
