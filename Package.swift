// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Lottie",
    products: [
        .library(name: "Lottie", type: .dynamic, targets: ["Lottie"])
    ],
    targets: [
        .target(
            name: "Lottie",
            dependencies: [],
            path: "lottie-ios/Classes/",
            publicHeadersPath: "include/",
            cxxSettings: [
                .headerSearchPath("RenderSystem"),
                .headerSearchPath("RenderSystem/ManipulatorNodes"),
                .headerSearchPath("RenderSystem/InterpolatorNodes"),
                .headerSearchPath("RenderSystem/AnimatorNodes"),
                .headerSearchPath("RenderSystem/RenderNodes"),
                .headerSearchPath("MacCompatibility"),
                .headerSearchPath("Models"),
                .headerSearchPath("Extensions"),
                .headerSearchPath("Private"),
                .headerSearchPath("AnimatableProperties"),
                .headerSearchPath("AnimatableLayers"),
                .headerSearchPath("PublicHeaders"),
            ]
        )
    ]
)
