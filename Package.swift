// swift-tools-version:5.7
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
            targets: ["HeapIOSAutocapture"])
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.7.0"),
    ],
    targets: [
        .target(
            name: "HeapIOSAutocapture",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapIOSAutocaptureImplementation",
            ]),
        .binaryTarget(
            name: "HeapIOSAutocaptureImplementation",
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.7.0.zip",
            checksum: "67be8b5d189746711b44c379214cdc7aacb836a2afdf07f5d58742f18290e225"
        ),
    ]
)
