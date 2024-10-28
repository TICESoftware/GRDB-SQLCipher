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
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.0.1/GRDB.xcframework.zip",
            checksum: "c7153feab9071ef66ffd674adf58648ceafc8b95c7182dde68d0dbc945f0f7f5"
        ),
        .target(name: "_GRDBDummy")
    ]
)
