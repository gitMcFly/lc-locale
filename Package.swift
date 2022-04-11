// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lc-locale",
    products: [
        .library(
            name: "lc-locale",
            targets: ["lc-locale"]),
        
    ],
    targets: [
        .target(
            name: "lc-locale",
            dependencies: []),
        
        .testTarget(
            name: "lc-localeTests",
            dependencies: ["lc-locale"]),
        
    ]
)
