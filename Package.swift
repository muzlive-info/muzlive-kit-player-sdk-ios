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
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/1.0.47/KiTplayerSDK.xcframework.zip",
            checksum: "1582ee1c72836c695ccbddd381c223bbe1bc2b009bce0421865b901ce14fa214"
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
