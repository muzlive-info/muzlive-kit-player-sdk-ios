// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KiTplayerSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "KiTplayerSDK",
            targets: ["KiTplayerSDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bitmovin/player-ios.git", from: "3.27.0"),
    ],
    targets: [
        .binaryTarget(
            name: "KiTplayerSDK",
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.36/KiTplayerSDK.xcframework.zip",
            checksum: "ee48c7c892d76f97e15695dca24bbc9afefa8d6a47a4414d9c5291ad101591a0"
        ),
        .binaryTarget(
            name: "GoogleCast",
            path: "Sources/GoogleCast/GoogleCast.xcframework"
        ),
        .target(
            name: "KiTplayerSDKTarget",
            dependencies: [
                "KiTplayerSDK",
                "GoogleCast",
                .product(name: "BitmovinPlayer", package: "player-ios"),
            ]
        ),
    ]
)
