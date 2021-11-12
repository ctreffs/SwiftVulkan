// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Vulkan",
    products: [
        .library(name: "Vulkan", targets: ["Vulkan"])
    ],
    targets: [
        .systemLibrary(name: "Vulkan",
                       pkgConfig: "vulkan",
                       providers: [
                        .brew(["vulkan-sdk"]),
                        .apt(["libvulkan-dev", "libvulkan1", "vulkan-utils"])
        ]),
        .testTarget(name: "VulkanTests",
                    dependencies: ["Vulkan"])
    ]
)
