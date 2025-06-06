// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name:"Versioning",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(
            name:"Versioning",
            targets: ["Versioning"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name:"Versioning",
            dependencies: []
        ),
        .testTarget(
            name:"VersioningTests",
            dependencies: ["Versioning"]
        )
    ]
)
