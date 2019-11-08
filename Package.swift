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
            exclude: ["lottie-ios/Classes/PublicHeaders/LOTAnimationTransitionController.h",
                      "lottie-ios/Classes/Private/LOTAnimationTransitionController.m",
                      "lottie-ios/Classes/PublicHeaders/LOTCacheProvider.h",
                      "lottie-ios/Classes/Private/LOTCacheProvider.m",
                      "lottie-ios/Classes/PublicHeaders/LOTAnimatedSwitch.h",
                      "lottie-ios/Classes/Private/LOTAnimatedSwitch.m",
                      "lottie-ios/Classes/PublicHeaders/LOTAnimatedControl.h",
                      "lottie-ios/Classes/Private/LOTAnimatedControl.m"],
            publicHeadersPath: "lottie-ios/Classes/PublicHeaders/",
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
