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
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.4.3"),
    ],
    targets: [
        .binaryTarget(
            name: "KiTPlayerSDK",
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.27/KiTPlayerSDK.xcframework.zip",
            checksum: "e2abc7000881c3b854bf426959f70ff42edfe7e9920b4a4c26727d17a725b35a"
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
                .product(name: "Lottie", package: "lottie-spm"),
            ]
        ),
    ]
)
