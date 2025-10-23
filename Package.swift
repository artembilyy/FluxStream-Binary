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
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.4/FluxStream.xcframework.zip",
            checksum: "42c5c47a62367008a2f0eccb116ff193a4b535bf74ca55cc43f3a55974ba99b7"
        ),
        .binaryTarget(
            name: "FluxStreamUI",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.4/FluxStreamUI.xcframework.zip",
            checksum: "2d87af1256499d46b82e6acb052e317654e7833ea110c8ddafa2f246df5f4b2f"
        ),
    ]
)
