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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-0.0.5.zip",
            checksum: "284352ca81ee85f3972ec9786e8de35de5f0654b98113513e40bcca4455dfadd"
        ),
    .target(
        name: "HeapIOSAutocaptureWrapper",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                "HeapIOSAutocapture"
            ]),
    ]
)
