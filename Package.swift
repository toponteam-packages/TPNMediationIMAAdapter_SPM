// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationIMAAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationIMAAdapter",
            targets: ["TPNMediationIMAAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios.git", exact: "3.27.4")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkIMAAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkIMAAdapter/3.27.4.2.9/AnyThinkIMAAdapter-3.27.4.2.9.zip",
            checksum: "7a6648e37eb776e612f84f1f49b8cb3c5ba9ccdc7abba87b8a3fab357c62846f"
        ),
        .target(
            name: "TPNMediationIMAAdapterTarget",
            dependencies: [
                "AnyThinkIMAAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ],
            path: "Sources/TPNMediationIMAAdapterTarget"
        )
    ]
)
