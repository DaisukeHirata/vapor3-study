// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "vapor3Study",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0-rc"),
        .Package(url: "https://github.com/vapor/fluent.git", from: "3.0.0-rc"),
        .Package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0-rc"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)

