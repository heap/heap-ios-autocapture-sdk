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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.3.0"),
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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.3.0.zip",
            checksum: "a7101ee9da63080bf611fd611d4eeb7cfba9ad8deda703e8a0520e3a8efc00fe"
        ),
    ]
)
