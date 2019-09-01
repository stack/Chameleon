// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Chameleon",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "Chameleon",
            targets: ["Chameleon"]
        ),
        .library(
            name: "ChameleonSwift",
            targets: ["Chameleon", "ChameleonSwift"]
        )
    ],
    targets: [
        .target(
            name: "Chameleon",
            path: ".",
            sources: ["Pod/Classes/Objective-C"],
            publicHeadersPath: "Pod/Classes/Objective-C",
            cSettings: [
                .headerSearchPath("Pod/Classes/Objective-C"),
                .headerSearchPath("."),
                .headerSearchPath("include"),
                .define("UIKIT_DEFINE_AS_PROPERTIES")
            ]
        ),
        .target(
            name: "ChameleonSwift",
            dependencies: ["Chameleon"],
            path: "Pod/Classes/Swift",
            cSettings: [
                .define("UIKIT_DEFINE_AS_PROPERTIES")
            ]
        )
    ]
)
