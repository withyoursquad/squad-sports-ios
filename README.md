# Squad SDK for iOS

The Squad SDK for iOS enables you to integrate the complete Squad experience into your iOS applications. This includes Squad's social features, voice calling, and interactive elements all through a seamless WebView integration.

## Requirements

- iOS 13.0 or later
- Xcode 13.0 or later
- Swift 5.3 or later

## Installation

### Swift Package Manager

The Squad SDK for iOS can be installed via Swift Package Manager. Add the following dependency to your Package.swift file:

```swift
dependencies: [
    .package(url: "https://github.com/withyoursquad/squad-sports-ios.git", from: "1.0.0")
]
```

Or in Xcode:

1. File > Add Packages
2. Enter "https://github.com/withyoursquad/squad-sports-ios.git"
3. Select "Up to Next Major Version" with "1.0.0"

### CocoaPods

Add the following line to your Podfile:

```ruby
pod 'SquadSDK', '~> 1.0.0'
```

Then run:

```bash
pod install
```

## Quick Start

1. Initialize the SDK with your organization credentials:

```swift
import SquadSDK

let squadSDK = SquadSDK(
    organizationId: "YOUR_ORG_ID",
    apiKey: "YOUR_API_KEY"
)

// Initialize the SDK
try await squadSDK.initialize()
```

2. Initialize the user session:

```swift
// Using email
try await squadSDK.initializeUser(email: "user@example.com")

// Or using a token
try await squadSDK.initializeUser(token: "USER_TOKEN")
```

3. Present the Squad experience:

```swift
try await squadSDK.openSquadWebView()
```

## Features

The Squad SDK provides access to the complete Squad platform experience:

- Squad Management

  - Create and manage squads
  - Friend connections
  - Squad member interactions

- Communication

  - Squad Line voice calling
  - Voice messages
  - Real-time interactions

- Interactive Features

  - Freestyles
  - Polls
  - Custom emojis and reactions

- Integration
  - Native WebView integration
  - Background voice call support
  - CallKit integration for voice features

## Documentation

For detailed documentation, please visit [Squad Documentation](https://docs.withyoursquad.com).

## Support

If you need help or have questions:

- Visit our [Support Center](https://support.withyoursquad.com)
- Contact us at support@withyoursquad.com

## License

The Squad SDK is distributed under a commercial license. See LICENSE for details.

## Version History

See the [changelogs](https://github.com/withyoursquad/squad-sports-ios/tree/main/changelogs) directory for detailed release notes.
