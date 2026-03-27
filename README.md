# Squad Sports SDK for iOS

[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-iOS%2016+-lightgrey.svg)](https://docs.squadforsports.com)
[![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager)
[![License: Proprietary](https://img.shields.io/badge/license-Proprietary-red.svg)](LICENSE)

Precompiled XCFramework for the Squad Sports SDK. Add fan engagement features to your sports app in minutes — messaging, polls, freestyles, voice calling, sponsorship inventory, and real-time updates.

## Installation

### Swift Package Manager

In Xcode, go to **File > Add Package Dependencies** and enter:

```
https://github.com/withyoursquad/squad-sports-ios.git
```

Or add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/withyoursquad/squad-sports-ios.git", from: "1.6.0"),
]
```

## Quick Start

```swift
import SquadSportsSDK

try await SquadSDK.setup(
    partnerId: "your-partner-id",
    apiKey: "your-api-key"
)

let vc = SquadSDK.shared.createExperienceViewController()
present(vc, animated: true)
```

### With Partner Auth (No Login Screen)

```swift
try await SquadSDK.setup(
    partnerId: "your-partner-id",
    apiKey: "your-api-key",
    userData: PartnerUserData(
        email: user.email,
        displayName: user.name,
        externalUserId: user.id
    )
)
```

### With Ticketmaster SSO

```swift
try await SquadSDK.setup(
    partnerId: "your-partner-id",
    apiKey: "your-api-key",
    ssoToken: ticketmasterAccessToken,
    ssoProvider: .ticketmaster
)
```

## Features

- **Messaging** — 1:1 with audio messages and reactions
- **Polls** — Interactive polls with live results and branded sponsor polls
- **Freestyles** — Audio posts with community-wide sharing
- **Squad Line** — Real-time voice calls via Twilio
- **Events** — Event attendance and check-ins
- **Wallet** — Rewards, coupons, and sponsor promotions
- **Sponsorship** — In-app sponsorship inventory with impression tracking
- **Analytics** — Pluggable event adapters (Mixpanel, Amplitude, Firebase)
- **SSO** — Ticketmaster, OAuth2, and custom providers
- **Security** — Keychain token storage, encrypted transport

## Documentation

**[docs.squadforsports.com](https://docs.squadforsports.com)**

## Requirements

- iOS 16.0+
- Swift 5.9+
- Xcode 15.0+

## Privacy

This SDK includes a `PrivacyInfo.xcprivacy` manifest bundled in the XCFramework.

## License

Proprietary. See [LICENSE](LICENSE).
