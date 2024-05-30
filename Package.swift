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
        .package(url: "https://github.com/jpsim/Yams.git", from: "5.0.6"),
    ],
    targets: [
        .target(
            name: "FrontmatterSwift",
            dependencies: [
                .product(name: "Licensable", package: "licensable"),
                .product(name: "Yams", package: "Yams"),
            ],
            resources: [
                .process("Resources"),
            ]),
        .testTarget(
            name: "FrontmatterSwiftTests",
            dependencies: ["FrontmatterSwift"]),
    ]
)

// Enable regex literals.

let swiftSettings: [SwiftSetting] = [
    .enableUpcomingFeature("BareSlashRegexLiterals"),
]

for target in package.targets {
    target.swiftSettings = target.swiftSettings ?? []
    target.swiftSettings?.append(contentsOf: swiftSettings)
}
