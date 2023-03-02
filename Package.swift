// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "HeapIOSAutocapture",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v13),
        .watchOS(.v5),
        .tvOS(.v13),
    ],
    products: [
        .library(
            name: "HeapIOSAutocapture",
            type: .static,
            targets: ["HeapIOSAutocaptureWrapper"])
    ],
    dependencies: [
        .package(url: "git@github.com:heap/heap-swift-core-sdk.git", branch: "main"),
    ],
    targets: [
        .binaryTarget(
            name: "HeapIOSAutocapture",
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.0.8.zip",
            checksum: "1d248a3c5017fd8b3e0f290c8a72cc1aa421dfcf2da2d07efe48e3be12a83d45"
        ),
    .target(
        name: "HeapIOSAutocaptureWrapper",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapIOSAutocapture"
            ]),
    ]
)
