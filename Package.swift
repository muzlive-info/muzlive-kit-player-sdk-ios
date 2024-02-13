// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KiTPlayerSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "KiTPlayerSDK",
            targets: ["KiTPlayerSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "KiTPlayerSDK",
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.3/KiTPlayerSDK.xcframework.zip",
            checksum: "d4235ded4d8ac6b3aa4e83969dd4a0b0ecc1d726b91c10c70e75412c18ec3ad9"
        ),
    ]
)
