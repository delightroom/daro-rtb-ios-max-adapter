// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidMaxAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidMaxAdapter", targets: ["DaroBidMaxAdapter", "DaroBidMaxDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.2500-rc.3"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidMaxAdapter", url: "https://github.com/delightroom/daro-rtb-ios-max-adapter/releases/download/2.0.6-rc.8/DaroBidMaxAdapter-2.0.6-rc.8.zip", checksum: "6e4c27d084380c3a4aed8d90d4ca17e90234e12dbf99772f3e8ae6d8ff77d49f"),
        .target(name: "DaroBidMaxDependencies", dependencies: [
            "DaroBidMaxAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
        ])
    ]
)
