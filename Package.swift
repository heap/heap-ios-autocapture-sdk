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
    targets: [
        .binaryTarget(
            name: "HeapIOSAutocapture",
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.1.1.zip",
            checksum: "a43b0dc9caabcb3d980e33efce1695f87001b8f41d33c60beefc3d6e3d65fb42"
        ),
    ]
)
