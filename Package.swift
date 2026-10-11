// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidMaxAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidMaxAdapter", targets: ["DaroBidMaxAdapter", "DaroBidMaxDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.1200-rc.2"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidMaxAdapter", url: "https://github.com/delightroom/daro-rtb-ios-max-adapter/releases/download/2.0.4-rc.2/DaroBidMaxAdapter-2.0.4-rc.2.zip", checksum: "af183f75867faa4cc342fe54aae9d1776bdf7525e7929d4a25a64ce30427576c"),
        .target(name: "DaroBidMaxDependencies", dependencies: [
            "DaroBidMaxAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
        ])
    ]
)
