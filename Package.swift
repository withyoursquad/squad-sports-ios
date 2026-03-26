// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SquadSportsSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "SquadSportsSDK", targets: ["SquadSportsSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/twilio/twilio-voice-ios.git", from: "6.10.0"),
    ],
    targets: [
        .target(
  name: "SquadSportsSDK",
  dependencies: [
      "SquadSportsSDKCore",
      .product(name: "TwilioVoice", package: "twilio-voice-ios"),
  ],
  path: "Sources"
        ),
        .binaryTarget(
  name: "SquadSportsSDKCore",
  path: "SquadSportsSDKCore.xcframework"
        ),
    ]
)
