// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SquadSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SquadSDK",
            targets: ["SquadSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "SquadSDK",
            url: "https://github.com/withyoursquad/squad-sports-ios/releases/download/1.0.0/SquadSDK.xcframework.zip",
            checksum: "YOUR_CHECKSUM_HERE"
        )
    ]
)