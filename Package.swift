// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Frontmatter",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "Frontmatter",
            targets: ["Frontmatter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/inseven/licensable", from: "0.0.13"),
        /* .package(url: "https://github.com/saramah/HashRainbow", branch: "main"), */
    ],
    targets: [
        .target(
            name: "Frontmatter",
            dependencies: [
                /* .product(name: "HashRainbow", package: "HashRainbow"), */
                .product(name: "Licensable", package: "licensable"),
            ],
            resources: [
                .process("Resources"),
            ]),
        .testTarget(
            name: "FrontmatterTests",
            dependencies: ["Frontmatter"]),
    ]
)
