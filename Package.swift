// swift-tools-version: 6.0
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
            url: "https://github.com/TICESoftware/GRDB-SQLCipher/releases/download/3.1.0/GRDB.xcframework.zip",
            checksum: "d9a0e3ff70c17be2a3054bba085db53ab4660da12bbf68e40aa9b53ac10b01ac"
        ),
        .target(name: "_GRDBDummy")
    ]
)
