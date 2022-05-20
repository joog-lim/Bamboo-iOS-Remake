// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Platform",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "Base",
            targets: ["Base"]),
        .library(
            name: "InjectUtil",
            targets: ["InjectUtil"]),
        .library(
            name: "UIUtil",
            targets: ["UIUtil"]),
        .library(
            name: "RxUtil",
            targets: ["RxUtil"]),
        .library(
            name: "LogUtil",
            targets: ["LogUtil"]),
        .library(
            name: "BamBooSetting",
            targets: ["BamBooSetting"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", branch: "main"),
        .package(url: "https://github.com/ReactorKit/ReactorKit", branch: "master"),
        .package(url: "https://github.com/RxSwiftCommunity/RxFlow", branch: "main"),
        .package(url: "https://github.com/SnapKit/SnapKit", branch: "develop"),
        .package(url: "https://github.com/devxoul/Then", branch: "master"),
        .package(url: "https://github.com/krzysztofzablocki/Inject", branch: "main"),
        .package(url: "https://github.com/AssistoLab/DropDown", branch: "master")
    ],
    targets: [
        .target(
            name: "Base",
            dependencies: [
                "RxSwift",
                "ReactorKit"
            ]),
        .target(
            name: "UIUtil",
            dependencies: [

            ]),
        .target(
            name: "InjectUtil",
            dependencies: [
                "Inject"
            ]),
        .target(
            name: "LogUtil",
            dependencies: [
                
            ]),
        .target(
            name: "RxUtil",
            dependencies: [
                "RxSwift",
                "RxFlow",
                "DropDown"
            ]),
        .target(
            name: "BamBooSetting",
            dependencies: [
                "UIUtil",
                "SnapKit",
                "Then",
                "DropDown"
            ]),
    ]
)
