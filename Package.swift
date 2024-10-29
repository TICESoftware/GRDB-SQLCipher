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
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.0.7/GRDB.xcframework.zip",
            checksum: "5a32b07a382a70bb7b06b3acb4abc566911981ebae75d66f6e829e3759742b9f"
        ),
        .target(name: "_GRDBDummy")
    ]
)
