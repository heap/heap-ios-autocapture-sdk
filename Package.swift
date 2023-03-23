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
        .package(url: "git@github.com:heap/heap-swift-core.git", revision: "154ff532a19b016aa3812372d4fbcb9a0e26f9fd")
    ],
    targets: [
        .target(
            name: "HeapIOSAutocapture",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core"),
                "HeapIOSAutocaptureImplementation",
            ]),
        .binaryTarget(
            name: "HeapIOSAutocaptureImplementation",
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.1.2-alpha.2.zip",
            checksum: "786d2f28fe64d3181ace3c78c5e4b6f68f0b65243733257eaf30afa3de3c7252"
        ),
    ]
)
