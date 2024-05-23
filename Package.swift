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
        .package(url: "https://github.com/youtube/youtube-ios-player-helper.git", from: "1.0.4") ,
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.3"),
    ],
    targets: [
        .binaryTarget(
            name: "KiTPlayerSDK",
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.22/KiTPlayerSDK.xcframework.zip",
            checksum: "2800912dc35a9392b0c0fc508c09ea7e72c2674fb0ef5b3184d58e132999d51b"
        ),
        .binaryTarget(
            name: "GoogleCast",
            path: "Sources/GoogleCast/GoogleCast.xcframework"
        ),
        .target(
            name: "KiTPlayerSDKTarget",
            dependencies: [
                "KiTPlayerSDK",
                "GoogleCast",
                .product(name: "BitmovinPlayer", package: "player-ios"),
                .product(name: "YouTubeiOSPlayerHelper", package: "youtube-ios-player-helper"),
                .product(name: "Lottie", package: "lottie-spm"),
            ]
        ),
    ]
)
