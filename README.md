# SwiftVulkan

[![macOS](https://github.com/ctreffs/SwiftVulkan/actions/workflows/ci-macos.yml/badge.svg)](https://github.com/ctreffs/SwiftVulkan/actions/workflows/ci-macos.yml)
[![Linux](https://github.com/ctreffs/SwiftVulkan/actions/workflows/ci-linux.yml/badge.svg)](https://github.com/ctreffs/SwiftVulkan/actions/workflows/ci-linux.yml)


## Setup Vulkan SDK

For this package to work [Vulkan SDK](https://www.lunarg.com/vulkan-sdk/) must be installed as a system package.

### macOS - Homebrew

To setup Vulkan SDK via [Homebrew](https://brew.sh/index_de), 
create a pkg-config file and copy it to the right location just run:

```sh
make setup-vulkan-macOS
```

### Linux - APT

To setup Vulkan SDK via APT just run:

```sh
make setup-vulkan-linux
```

### Others

- <https://github.com/troughton/SwiftFrameGraph>
- <https://github.com/ewconnell/swiftrt>
- <https://github.com/swift-graphics/vkk>
- <https://github.com/Novum/vkQuake>
- <https://github.com/Reonarudo/VKSwift>
- <https://github.com/alexanderuv/vulkanSwift>

