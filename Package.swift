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
            url: "https://github.com/muzlive-info/muzlive-kit-player-sdk-ios/releases/download/v1.0.0/KiTPlayerSDK.xcframework.zip",
            checksum: "0c226f64e0dcaac51fcfa92cd8d40f6a365d3dd795ef1917d23758cc3a0ed0ca"
        ),
    ]
)
