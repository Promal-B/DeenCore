// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DeenCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "DesignSystem", targets: ["DesignSystem"]),
        .library(name: "DomainModels", targets: ["DomainModels"]),
        .library(name: "Networking", targets: ["Networking"]),
        .library(name: "UIComponents", targets: ["UIComponents"])
    ],
    targets: [
        // Wrapper targets that expose the binary targets
        .target(
            name: "DesignSystem",
            dependencies: ["DesignSystemBinary"]
        ),
        .target(
            name: "DomainModels",
            dependencies: ["DomainModelsBinary"]
        ),
        .target(
            name: "Networking",
            dependencies: [
                "NetworkingBinary",
                "DomainModels"  // Declare the dependency here
            ]
        ),
        .target(
            name: "UIComponents",
            dependencies: ["UIComponentsBinary"]
        ),
        
        // Binary targets
        .binaryTarget(
            name: "DesignSystemBinary",
            path: "Source/DesignSystem.xcframework"
        ),
        .binaryTarget(
            name: "DomainModelsBinary",
            path: "Source/DomainModels.xcframework"
        ),
        .binaryTarget(
            name: "NetworkingBinary",
            path: "Source/Networking.xcframework"
        ),
        .binaryTarget(
            name: "UIComponentsBinary",
            path: "Source/UIComponents.xcframework"
        )
    ]
)
