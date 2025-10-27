// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "HeapIOSAutocapture",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "HeapIOSAutocapture", targets: [
            "__HeapIOSAutocapture",
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "__HeapIOSAutocapture",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapIOSAutocapture",
            ]
        ),
        .binaryTarget(
            name: "HeapIOSAutocapture",
            url: "https://github.com/heap/heap-ios-autocapture-sdk/releases/download/0.9.1/package.zip",
            checksum: "a39d81fb536f003295bf5409918abe6172b4d3d053f65578949f28c4dbcb63d7"
    )
    ],
    swiftLanguageVersions: [.v5]
)
