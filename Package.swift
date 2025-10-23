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
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.2/FluxStream.xcframework.zip",
            checksum: "0b14b3978f49898c4ac93345a75d95fde5bb9934798c5b99160e5a7baea7ca8b"
        ),
        .binaryTarget(
            name: "FluxStreamUI",
            url: "https://github.com/artembilyy/FluxStream/releases/download/0.1.2/FluxStreamUI.xcframework.zip",
            checksum: "35345403748abd8565633eb6fcbdcdeda3a7975e0682843a56dadce4604235b7"
        ),
    ]
)
