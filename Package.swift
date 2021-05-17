// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "DonkeyLockKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "DonkeyLockKit", targets: ["DonkeyLockKit"])
    ],
    targets: [
        .binaryTarget(name: "DonkeyLockKit", path: "DonkeyLockKit.xcframework")
    ]
)
