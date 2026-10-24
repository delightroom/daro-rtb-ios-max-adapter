// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidMaxAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidMaxAdapter", targets: ["DaroBidMaxAdapter", "DaroBidMaxDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.2400-rc.4"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidMaxAdapter", url: "https://github.com/delightroom/daro-rtb-ios-max-adapter/releases/download/2.0.6-rc.4/DaroBidMaxAdapter-2.0.6-rc.4.zip", checksum: "93eb2d46cb42dfd18d90cda72d023305a11297ccec371b7e7b23f8a4f23e6ef0"),
        .target(name: "DaroBidMaxDependencies", dependencies: [
            "DaroBidMaxAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
        ])
    ]
)
