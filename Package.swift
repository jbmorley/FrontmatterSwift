// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FrontmatterSwift",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "FrontmatterSwift",
            targets: ["FrontmatterSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/inseven/licensable", from: "0.0.13"),
    ],
    targets: [
        .target(
            name: "FrontmatterSwift",
            dependencies: [
                .product(name: "Licensable", package: "licensable"),
            ],
            resources: [
                .process("Resources"),
            ]),
        .testTarget(
            name: "FrontmatterSwiftTests",
            dependencies: ["FrontmatterSwift"]),
    ]
)
