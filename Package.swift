// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Segment_Amplitude",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Segment_Amplitude",
            targets: ["Segment_Amplitude"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Amplitude", url: "https://github.com/amplitude/Amplitude-iOS", .upToNextMajor(from: "8.0.0")),
        .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios", .upToNextMajor(from: "4.1.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Segment_Amplitude",
            dependencies: ["Amplitude", "Segment"])
    ]
)
