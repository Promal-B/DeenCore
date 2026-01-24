// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DeenCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DeenCore",
            targets: ["DeenCore"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "DeenCore",
            path: "Source/DeenCore.xcframework"
        )
    ]
)
