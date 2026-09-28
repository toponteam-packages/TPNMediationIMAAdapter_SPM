# TopOn - iOS Google Interactive Media Ads (IMA) Mediation Adapter

The TopOn Google Interactive Media Ads (IMA) mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/toponteam-packages/TPNMediationIMAAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `32704.2.2`).
4. Add the `TPNMediationIMAAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/toponteam-packages/TPNMediationIMAAdapter_SPM.git",
        exact: "32704.2.2"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/toponteam-packages/TPNiOS_SPM) (>= 6.5.0)
- [`GoogleInteractiveMediaAds`](https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios) (pinned to the version certified for this adapter release)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
