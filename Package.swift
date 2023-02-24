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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.0.6.zip",
            checksum: "e2f30b22c9e2e951595bf880233d51a81e9a11b7946d6a1abe17d9ee9eeca03f"
        ),
    .target(
        name: "HeapIOSAutocaptureWrapper",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapIOSAutocapture"
            ]),
    ]
)
