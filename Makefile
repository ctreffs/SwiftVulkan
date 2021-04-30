.PHONY: lint-fix
lint-fix:
	swiftlint --fix

.PHONY: copyVulkanPkgConfig
copyVulkanPkgConfig:
	cp vulkan.pc /usr/local/lib/pkgconfig/vulkan.pc
	-pkg-config --libs --cflags vulkan

.PHONY: genLinuxTests
genLinuxTests:
	swift test --generate-linuxmain
	swiftlint --fix --path Tests/

.PHONY: test
test:
	swift test --skip-update --parallel --verbose

.PHONY: build-release
build-release:
	swift build -c release

.PHONY: precommit
precommit: lint-fix genLinuxTests

.PHONY: testReadme
testReadme:
	markdown-link-check -p -v ./README.md
