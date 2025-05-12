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
            url: "https://github.com/TICESoftware/GRDB-SQLCipher/releases/download/3.3.0/GRDB.xcframework.zip",
            checksum: "f78552ae513d97e2a4cc0931e5b64454b7ff17309ad0c9fb0287dc1ba24c382d"
        ),
        .target(name: "_GRDBDummy")
    ]
)
