// swift-tools-version: 5.9
// Binary distribution Package.swift for FluxStream

import PackageDescription

let package = Package(
    name: "FluxStream",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FluxStream",
            targets: ["FluxStream"]
        ),
        .library(
            name: "FluxStreamUI",
            targets: ["FluxStreamUI", "FluxStream"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "FluxStream",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.0/FluxStream.xcframework.zip",
            checksum: "901f593818c6796054d46d9a3639ba92badc2b2e0eed13882740424473a79997"
        ),
        .binaryTarget(
            name: "FluxStreamUI",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.0/FluxStreamUI.xcframework.zip",
            checksum: "2b197ec5fa491c83670fede58cc6e8743de2eecdfbd879d29b6dd55c7dc4fdd6"
        ),
    ]
)
