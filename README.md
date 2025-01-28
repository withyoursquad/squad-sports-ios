# Squad SDK for iOS

The Squad SDK enables seamless integration of Squad's voice calling and social features into your iOS applications. Through our WebView-based integration, you can provide your users with a rich communication experience including voice calls with custom call titles and emojis.

## Requirements

- iOS 13.0+
- Xcode 13.0+
- Swift 5.3+

## Installation

### Swift Package Manager

Add the Squad SDK package in Xcode:

1. Go to File > Add Packages
2. Enter Package URL: `https://github.com/withyoursquad/squad-sports-ios`
3. Select "Up to Next Major Version" with "1.0.0"

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/withyoursquad/squad-sports-ios", from: "1.0.0")
]
```

### CocoaPods

Add this to your `Podfile`:

```ruby
pod 'SquadSDK', '~> 1.0.0'
```

Then run:

```bash
pod install
```

## Usage

### Initialize the SDK

First, configure and initialize the SDK with your organization credentials:

```swift
import SquadSDK

// Configure with your credentials
SquadClient.configure(
    apiKey: "YOUR_API_KEY",
    orgId: "YOUR_ORG_ID",
    environment: .production // or .staging for development
)

// Initialize the SDK
do {
    try await SquadClient.shared.initialize()
    // SDK is ready
} catch {
    // Handle initialization error
}
```

### Authenticate Users

You can authenticate users either with an email or an existing auth token:

```swift
// Using email
do {
    let sessionToken = try await SquadClient.shared.validateUser(email: userEmail)
    // User authenticated
} catch {
    // Handle authentication error
}

// Using existing auth token
do {
    let sessionToken = try await SquadClient.shared.validateUser(token: existingToken)
    // User authenticated
} catch {
    // Handle authentication error
}
```

### Present Squad Experience

After authentication, present the Squad WebView:

```swift
// Ensure you have a reference to your current UIViewController
guard let viewController = getCurrentViewController() else {
    return
}

// Present the Squad WebView
SquadClient.shared.presentWebView(
    sessionToken: sessionToken,
    from: viewController
)
```

## Features

The Squad SDK provides:

- Voice Calling

  - High-quality voice calls
  - Custom call titles
  - Interactive emoji reactions
  - CallKit integration

- WebView Integration
  - Squad social features
  - Friend management
  - Squad creation and management
  - Voice messages
  - Polls and interactive content

## Error Handling

The SDK uses structured error handling. Handle potential errors appropriately:

```swift
do {
    try await SquadClient.shared.initialize()
} catch {
    if let squadError = error as? SquadError {
        switch squadError {
        case .invalidApiKey:
            // Handle invalid API key
        case .networkError:
            // Handle network issues
        case .authenticationError:
            // Handle auth issues
        default:
            // Handle other errors
        }
    }
}
```

## Thread Safety

The SDK's public APIs are thread-safe. However, UI-related calls (like `presentWebView`) must be made on the main thread.

## Best Practices

1. Initialize the SDK early in your app's lifecycle
2. Cache the session token for reuse
3. Handle background/foreground transitions appropriately
4. Implement proper error handling
5. Test with both production and staging environments

## Support & Troubleshooting

- Visit [Squad Developer Portal](https://developers.squadforsports.com)
- Contact support: support@squadforsports.com
- View documentation: [Squad SDK Docs](https://docs.squadforsports.com)
- Report issues: [GitHub Issues](https://github.com/withyoursquad/squad-sports-ios/issues)

## License

The Squad SDK is proprietary software distributed under a commercial license. Contact sales@squadforsports.com for licensing information.

## Security

Report security vulnerabilities to security@squadforsports.com

## Release Notes

See [CHANGELOG.md](https://github.com/withyoursquad/squad-sports-ios/blob/main/CHANGELOG.md) for detailed version history.
