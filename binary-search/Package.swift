// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "BinarySearch",
    products: [
        .library(
            name: "BinarySearch",
            targets: ["BinarySearch"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BinarySearch",
            dependencies: []),
        .testTarget(
            name: "BinarySearchTests",
            dependencies: ["BinarySearch"]),
    ]
)
