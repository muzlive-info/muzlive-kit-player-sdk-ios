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
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.35/KiTplayerSDK.xcframework.zip",
            checksum: "6c3efa22ccbe66dd858018bfd73a06936e65d308ea2110ad657f8991fe4b435b"
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
