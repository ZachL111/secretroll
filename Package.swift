// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "secretroll",
    products: [.executable(name: "secretroll", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
