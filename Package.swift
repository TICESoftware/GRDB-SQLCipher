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
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.0.0/GRDB.xcframework.zip",
            checksum: "b872a487ca66a07da8f5f027803a4458c6d1658f79d2d0ab231360e4db4f3f19"
        ),
        .target(name: "_GRDBDummy")
    ]
)
