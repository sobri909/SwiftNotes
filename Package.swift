// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftNotes",
    products: [
        .library(name: "SwiftNotes", targets: ["SwiftNotes"])
    ],
    dependencies: [],
    targets: [
        .target(name: "SwiftNotes",
                dependencies: [],
                path: "SwiftNotes"
        )
    ]
)
