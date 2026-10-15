// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "HeapIOSAutocapture",
    platforms: [
        .iOS(.v13),
        .macCatalyst(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "HeapIOSAutocapture", targets: [
            "__HeapIOSAutocapture",
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.10.0"),
        .package(url: "https://github.com/ContentSquare/ios-ui-core-sdk.git", .upToNextMinor(from: "0.2.1")),
    ],
    targets: [
        .target(
            name: "__HeapIOSAutocapture",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                .product(name: "ContentsquareUICore", package: "ios-ui-core-sdk", condition: .when(platforms: [ .iOS, .macCatalyst ])),
                "HeapIOSAutocapture",
            ]
        ),
        .binaryTarget(
            name: "HeapIOSAutocapture",
            url: "https://github.com/heap/heap-ios-autocapture-sdk/releases/download/0.11.0/package.zip",
            checksum: "458407471208e6c2ab644d0e6a3383bdc568b4fd8d2e493f1b4f5ed1e39ac176"
    )
    ],
    swiftLanguageVersions: [.v5]
)
