// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KiTPlayerSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "KiTPlayerSDK",
            targets: ["KiTPlayerSDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bitmovin/player-ios.git", from: "3.27.0"),
//        .package(url: "https://github.com/youtube/youtube-ios-player-helper.git", from: "1.0.4") ,
//        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.1"),
    ],
    targets: [
        .binaryTarget(
            name: "KiTPlayerSDK",
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.14/KiTPlayerSDK.xcframework.zip",
            checksum: "55394e9e1e0753188cebd1d0d9e60f03a880332898a88b8a613c28e126a36e16"
        ),
        .target(
            name: "KiTPlayerSDKTarget",
            dependencies: [
                "KiTPlayerSDK",
                .product(name: "BitmovinPlayer", package: "player-ios"),
//                .product(name: "YouTubeiOSPlayerHelper", package: "youtube-ios-player-helper"),
//                .product(name: "Lottie", package: "lottie-spm"),
            ]
        ),
    ]
)
