// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidMaxAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidMaxAdapter", targets: ["DaroBidMaxAdapter", "DaroBidMaxDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.2500-rc.1"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidMaxAdapter", url: "https://github.com/delightroom/daro-rtb-ios-max-adapter/releases/download/2.0.6-rc.6/DaroBidMaxAdapter-2.0.6-rc.6.zip", checksum: "33662578cb284efbb67cbf43bd1a7fcf26c75a2861558ec74c63c6ca945e64b6"),
        .target(name: "DaroBidMaxDependencies", dependencies: [
            "DaroBidMaxAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
        ])
    ]
)
