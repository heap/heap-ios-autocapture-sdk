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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.1.2"),
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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.1.2.zip",
            checksum: "aab304a33872ef265f4c25fe50d670caa737458a809b683e93c21910ffb65b07"
        ),
    ]
)
