// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "FPTF",
    products: [
        .library(
            name: "FPTF",
            targets: ["FPTF"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FPTF",
            dependencies: []),
        .testTarget(
            name: "FPTFTests",
            dependencies: ["FPTF"]),
    ]
)
