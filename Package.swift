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
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.39/KiTplayerSDK.xcframework.zip",
            checksum: "2cf75b6f6195ea29787fc12b70571b01e9007bc7e622905e19acec341768022f"
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
