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
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.3/FluxStream.xcframework.zip",
            checksum: "6e4189c442834741c3ce321e2eb268b95b15cbc269179be153a5f88330909c4e"
        ),
        .binaryTarget(
            name: "FluxStreamUI",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.3/FluxStreamUI.xcframework.zip",
            checksum: "2d29d48d483206786cfc6d7f61223e6556ae0bae1fa438eb435d003feed7875e"
        ),
    ]
)
