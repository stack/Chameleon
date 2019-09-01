// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Chameleon",
    platforms: [
        .iOS(.v12), .tvOS(.v12), .watchOS(.v5)
    ],
    products: [
        .library(
            name: "Chameleon",
            targets: ["Chameleon"]
        ),
    ],
    targets: [
        .target(
            name: "Chameleon",
            path: ".",
            sources: ["Pod/Classes/Objective-C"],
            publicHeadersPath: "",
            cxxSettings: [
                .headerSearchPath("."),
                .headerSearchPath("include"),
                .headerSearchPath("Pod/Classes/Objective-C")
            ]
        )
    ]
)
