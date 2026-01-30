// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DeenCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "DesignSystem", targets: ["DesignSystemBinary"]),
        .library(name: "DomainModels", targets: ["DomainModelsBinary"]),
        .library(name: "Networking", targets: ["NetworkingBinary"]),
        .library(name: "UIComponents", targets: ["UIComponentsBinary"])
    ],
    targets: [
        // Binary targets pointing to XCFrameworks
        .binaryTarget(
            name: "DesignSystemBinary",
            path: "XCFrameworks/DesignSystem.xcframework"
        ),
        .binaryTarget(
            name: "DomainModelsBinary",
            path: "XCFrameworks/DomainModels.xcframework"
        ),
        .binaryTarget(
            name: "NetworkingBinary",
            path: "XCFrameworks/Networking.xcframework"
        ),
        .binaryTarget(
            name: "UIComponentsBinary",
            path: "XCFrameworks/UIComponents.xcframework"
        )
    ]
)
