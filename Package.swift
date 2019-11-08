// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Lottie",
    products: [
        .library(name: "Lottie", targets: ["Lottie"])
    ],
    targets: [
        .target(
            name: "Lottie",
            dependencies: [],
            path: "lottie-ios/Classes/",
            exclude: ["PublicHeaders/LOTAnimationTransitionController.h",
                      "Private/LOTAnimationTransitionController.m",
                      "PublicHeaders/LOTCacheProvider.h",
                      "Private/LOTCacheProvider.m",
                      "PublicHeaders/LOTAnimatedSwitch.h",
                      "Private/LOTAnimatedSwitch.m",
                      "PublicHeaders/LOTAnimatedControl.h",
                      "Private/LOTAnimatedControl.m"],
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
