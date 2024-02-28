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
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.6/KiTPlayerSDK.xcframework.zip",
            checksum: "eaaf2b8a333cc79ee5e88bb5c3c712d2265da9b398434f3db6d40e693b3f5c50"
        ),
    ]
)
