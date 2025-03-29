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
            url: "https://github.com/TICESoftware/GRDB-SQLCipher/releases/download/3.2.0/GRDB.xcframework.zip",
            checksum: "453c965787242325a0614886e8495b7e4da126e50d7cdf5752a40a47043db559"
        ),
        .target(name: "_GRDBDummy")
    ]
)
