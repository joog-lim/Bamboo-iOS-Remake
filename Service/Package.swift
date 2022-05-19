// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Service",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "Service",
            targets: ["Service"]),
        .library(
            name: "Domain",
            targets: ["Domain"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject", branch: "master"),
        .package(url: "https://github.com/Moya/Moya", branch: "master"),
    ],
    targets: [
        .target(
            name: "Service",
            dependencies: [
                "Swinject",
                "Moya",
                "Domain"
            ]),
        .target(
            name: "Domain",
            dependencies: [
                
            ]),
    ]
)
