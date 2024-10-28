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
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.0.5/GRDB.xcframework.zip",
            checksum: "265a37cf6b77c5301d0c2c38823e18842c8833b386d0a502003096029a723525"
        ),
        .target(name: "_GRDBDummy")
    ]
)
