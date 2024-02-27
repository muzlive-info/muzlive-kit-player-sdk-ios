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
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/1.0.5/KiTPlayerSDK.xcframework.zip",
            checksum: "772dbee750bd50f8c133609f0093807d33b74952c79b3dc4f31f41cb93dceaf4"
        ),
    ]
)
