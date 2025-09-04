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
            url: "https://github.com/heap/heap-ios-autocapture-sdk/releases/download/0.9.0/package.zip",
            checksum: "15d7219c8fefbd98d7d14d71c583fddb74f9fc03d8f2019056921a2a7de1c8f5"
    )
    ],
    swiftLanguageVersions: [.v5]
)
