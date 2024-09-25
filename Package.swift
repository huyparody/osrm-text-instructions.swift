// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "OSRMTextInstructions",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "OSRMTextInstructions",
            targets: ["OSRMTextInstructions"]
        )
    ],
    targets: [
        .target(
            name: "OSRMTextInstructions",
            path: "OSRMTextInstructions"
        )
    ]
)
