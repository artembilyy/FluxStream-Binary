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
            checksum: "5db1f23deabcfa7f9ebb98f994c639b652814e30c37badb03d5260eee1dca32d"
        ),
        .binaryTarget(
            name: "FluxStreamUI",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.0/FluxStreamUI.xcframework.zip",
            checksum: "9dfc83ccf7dad1d39eb929ad6574ace5a3d4271ab6801b7a0b391eac92c2bf52"
        ),
    ]
)
