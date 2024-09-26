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
            path: "OSRMTextInstructions",
            resources: [
                .process("vi.lproj/Instructions.plist"),
                .process("Base.lproj/Instructions.plist"),
                .process("de.lproj/Instructions.plist"),
                .process("eo.lproj/Instructions.plist"),
                .process("es.lproj/Instructions.plist"),
                .process("fr.lproj/Instructions.plist"),
                .process("id.lproj/Instructions.plist"),
                .process("it.lproj/Instructions.plist"),
                .process("nl.lproj/Instructions.plist"),
                .process("pl.lproj/Instructions.plist"),
                .process("ro.lproj/Instructions.plist"),
                .process("ru.lproj/Instructions.plist"),
                .process("sv.lproj/Instructions.plist"),
                .process("tr.lproj/Instructions.plist"),
                .process("uk.lproj/Instructions.plist")
            ]
        )
    ]
)
