// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Translation",
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "Translation",
            targets: ["Translation"]),
    ],
    targets: [
        .target(
            name: "Translation",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "TranslationTests",
            dependencies: ["Translation"],
            path: "Tests"),
    ]
)
