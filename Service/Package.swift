// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Service",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
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
