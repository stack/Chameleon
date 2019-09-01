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
            targets: ["Chameleon", "ChameleonSwift"]
        ),
    ],
    targets: [
        .target(
            name: "Chameleon",
            path: ".",
            sources: ["Pod/Classes/Objective-C"],
            publicHeadersPath: "Pod/Classes/Objective-C",
            cxxSettings: [
                .headerSearchPath("Pod/Classes/Objective-C"),
                .headerSearchPath("."),
                .headerSearchPath("include")
            ]
        ),
        .target(
            name: "ChameleonSwift"
            path: ".",
            sources: ["Pod/Classes/Swift"]
        )
    ]
)
