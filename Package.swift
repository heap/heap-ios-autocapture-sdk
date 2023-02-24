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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.0.4.zip",
            checksum: "6f689e9b09941d4a5fc1b2cf89ab875872df952805f1a7f3329b47c77a2f16a7"
        ),
    .target(
        name: "HeapIOSAutocaptureWrapper",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core"),
                "HeapIOSAutocapture"
            ]),
    ]
)
