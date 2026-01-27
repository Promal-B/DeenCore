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
            targets: ["DesignSystem", "DomainModels", "Networking", "UIComponents"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "DesignSystem",
            path: "Source/DesignSystem.xcframework"
        ),
        .binaryTarget(
            name: "DomainModels",
            path: "Source/DomainModels.xcframework"
        ),
        .binaryTarget(
            name: "Networking",
            path: "Source/Networking.xcframework"
        ),
        .binaryTarget(
            name: "UIComponents",
            path: "Source/UIComponents.xcframework"
        )
    ]
)
