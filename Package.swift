// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/DuckDuckGo/GRDB.swift/releases/download/3.0.0/GRDB.xcframework.zip",
            checksum: "eaf11803cd5af81a1abe8ecf1e652f40fdbd0ed1f87865d869e545feab5bcbd4"
        ),
        .target(name: "_GRDBDummy")
    ]
)
