// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let unsafeFlags: [String] = [
    "-enable-library-evolution",
    "-enable-experimental-feature",
    "AccessLevelOnImport",
    "-emit-module",
    "-emit-module-interface"
]

let package = Package(
    name: "Child",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Child",
            targets: ["Child"]
        )
    ],
    targets: [
        .target(
            name: "Child",
            swiftSettings: [
                .unsafeFlags(unsafeFlags, .when(configuration: .debug)),
                .unsafeFlags(unsafeFlags, .when(configuration: .release))
            ]
        )
    ]
)

