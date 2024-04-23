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
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.9/KiTPlayerSDK.xcframework.zip",
            checksum: "f284420993f39ff589700d91c7e9f7e6702ecb6e0f684a825370fb682e5faf68"
        ),
    ]
)
