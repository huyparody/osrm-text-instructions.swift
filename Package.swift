// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "OSRMTextInstructions",
    defaultLocalization: "vi", 
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "OSRMTextInstructions",
            targets: ["OSRMTextInstructions"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mapbox/mapbox-directions-swift", from: "2.5.0")
    ],
    targets: [
        .target(
            name: "OSRMTextInstructions",
            dependencies: [
                .product(name: "MapboxDirections", package: "mapbox-directions-swift")
            ],
            path: "OSRMTextInstructions"
        )
    ]
)
