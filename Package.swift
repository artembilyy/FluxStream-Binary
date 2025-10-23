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
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.1/FluxStream.xcframework.zip",
            checksum: "dc1985ff05dcd053ec922acf00804e142b0026dbf135c2e0377f12a6ce7620cf"
        ),
        .binaryTarget(
            name: "FluxStreamUI",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.1/FluxStreamUI.xcframework.zip",
            checksum: "e8a6b32730bf361ea52207e8d59b014d84e05a4bb821278908fc582f1c2c17ed"
        ),
    ]
)
