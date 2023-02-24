// swift-tools-version:5.5
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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.0.7.zip",
            checksum: "18ff3b181e01356e56025f8ff71d6e067cd080c91579c95f03b7a4330b98132a"
        ),
    .target(
        name: "HeapIOSAutocaptureWrapper",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapIOSAutocapture"
            ]),
    ]
)
