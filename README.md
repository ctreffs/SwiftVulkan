# SwiftVulkan

A description of this package.

### macOS: Install vulkan + setup 

There is no official homebrew vulkan package yet.
But there is a cask, that works great.

Install vulkan cask

```bash
brew cask install apenngrace/vulkan/vulkan-sdk
brew cask info vulkan-sdk
which -a vulkaninfo
```

then copy vulkan.pc to pkg-config dir (since it does not have one yet).

```bash
make copyVulkanPkgConfig
```


### Others

- <https://github.com/troughton/SwiftFrameGraph>
- <https://github.com/ewconnell/swiftrt>
- <https://github.com/swift-graphics/vkk>
- <https://github.com/Novum/vkQuake>
- <https://github.com/Reonarudo/VKSwift>
- <https://github.com/alexanderuv/vulkanSwift>

