# FluxStream

iOS network monitoring framework for debugging and development.

**Requirements:** iOS 15.0+ | Xcode 14.0+ | Swift 5.7+

## Installation

### Swift Package Manager
```swift
dependencies: [
    .package(url: "https://github.com/your-org/FluxStream.git", from: "1.0.0")
]
```

### CocoaPods
```ruby
pod 'FluxStream', '~> 1.0'
pod 'FluxStreamUI', '~> 1.0'
```

## Public API

### Initialization

```swift
import FluxStream
import FluxStreamUI

// Basic
FluxStreamSDK.initialize(appID: "your-app-id")
FluxStreamSDK.start()

// With sanitizers
FluxStreamSDK.initialize(
    appID: "your-app-id",
    requestSanitizer: MySanitizer(),
    responseSanitizer: MySanitizer()
)
```

### Configuration

```swift
// Use presets: .lowMemory, .default, .highTraffic, .development
FluxStreamSDK.configuration = .development

// Or custom
var config = FluxStreamConfiguration.default
config.maxStoredEntries = 2000
config.maxRequestBodySize = 2_000_000
FluxStreamSDK.configuration = config
```

### Control Methods

```swift
FluxStreamSDK.start()                   // Start logging
FluxStreamSDK.stop()                    // Stop logging
FluxStreamSDK.clearNetworkDataLogs()    // Clear all logs
```

### Sanitizers

```swift
struct MySanitizer: RequestSanitizer {
    var sanitizedHeaders: Set<String> = ["Authorization", "X-Custom-Token"]
    var sanitizedJSONBodyKeys: Set<String> = ["password", "email"]
    var ignoredDomains: Set<String> = ["internal.company.com"]
}

// Default sanitization (if no custom sanitizer provided):
// Headers: Authorization, Cookie, X-API-Key
// Query params: token, apiKey, password
```

### UI Display

```swift
// UIKit
FluxUI.show(.present())
FluxUI.show(.push(from: navigationController))

// SwiftUI
FluxStreamView()
```

### Export Formats

- **HAR** - HTTP Archive for browser DevTools
- **Postman** - API testing collection
- **cURL** - Command line requests
- **JSON/CSV** - Raw data export

## License

Proprietary - All Rights Reserved

Copyright © 2025 FluxStream
