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
            url: "https://github.com/heap/heap-ios-autocapture-sdk/releases/download/0.11.1/package.zip",
            checksum: "d791c9df3cee1bb00a7dfbdb690c1fc5d3a49206c15079cae746cb6df41a937d"
    )
    ],
    swiftLanguageVersions: [.v5]
)
