// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftVulkan",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftVulkan",
            targets: ["SwiftVulkan"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .systemLibrary(name: "CVulkan",
                       pkgConfig: "vulkan",
                       providers: [
                        .apt(["libvulkan-dev", "libvulkan1", "vulkan-utils"]) // https://packages.ubuntu.com/source/vulkan
        ]),
        .target(
            name: "SwiftVulkan",
            dependencies: ["CVulkan"]),
        .testTarget(
            name: "SwiftVulkanTests",
            dependencies: ["SwiftVulkan"])
    ]
)
