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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.9.2"),
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
            url: "https://github.com/heap/heap-ios-autocapture-sdk/releases/download/0.10.3/package.zip",
            checksum: "9b72a277d17460bcc86f4648c0de8f1b6eb23470bc3a4a1df2b535c1ab70c8e2"
    )
    ],
    swiftLanguageVersions: [.v5]
)
