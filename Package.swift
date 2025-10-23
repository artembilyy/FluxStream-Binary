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
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.5/FluxStream.xcframework.zip",
            checksum: "6b21d06027cb443d59da5658f92918ce3c8ea08e0683f662cb9847b757c28f25"
        ),
        .binaryTarget(
            name: "FluxStreamUI",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.5/FluxStreamUI.xcframework.zip",
            checksum: "d7169b426d73b8e3f01542f3b85c70b23cffaeee0ff0d5c3c88f761f6b497794"
        ),
    ]
)
