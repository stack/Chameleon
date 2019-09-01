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
        .target(name: "Chameleon"),
        .target(name: "ChameleonSwift", dependencies: ["Chameleon"])
    ]
)
