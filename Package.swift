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
            url: "https://github.com/heap/heap-ios-autocapture-sdk/releases/download/0.10.2/package.zip",
            checksum: "ada1cc187622f4271b10f8a5e6f6d4dbc929779e74d55e0ff50c4a0b5657273b"
    )
    ],
    swiftLanguageVersions: [.v5]
)
