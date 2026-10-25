// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "DaroBidMaxAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "DaroBidMaxAdapter", targets: ["DaroBidMaxAdapter", "DaroBidMaxDependencies"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-rtb-ios-sdk.git", exact: "26.10.2500-rc.2"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.0")
    ],
    targets: [
        .binaryTarget(name: "DaroBidMaxAdapter", url: "https://github.com/delightroom/daro-rtb-ios-max-adapter/releases/download/2.0.6-rc.7/DaroBidMaxAdapter-2.0.6-rc.7.zip", checksum: "2ae2acb24e2b9660c12e65f823b2fae97a3960aba0419ab67468e7fc3c865b6e"),
        .target(name: "DaroBidMaxDependencies", dependencies: [
            "DaroBidMaxAdapter",
            .product(name: "DaroBid", package: "daro-rtb-ios-sdk"),
            .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
        ])
    ]
)
