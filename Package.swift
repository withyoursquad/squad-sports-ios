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
            checksum: "da97b7831f5cf3e2113c5b6e352d502fd0da732852a9ae25a7925235622e324a"
        )
    ]
)
