.PHONY: lint-fix
lint-fix:
	swiftlint --fix

.PHONY: brew-install-vulkan
brew-install-vulkan:
	brew update
	# brew install vulkan-sdk
	brew install --cask apenngrace/vulkan/vulkan-sdk

.PHONY: setup-vulkan-macOS
setup-vulkan-macOS: brew-install-vulkan
	sed -i '' 's/Version:.*/Version: $(shell vulkaninfo --summary | tail -n +5 | head -n 1 | cut -c26-)/' vulkan.pc
	cp vulkan.pc $(shell brew --prefix)/lib/pkgconfig/vulkan.pc
	pkg-config --libs --cflags vulkan

.PHONY: setup-vulkan-linux
setup-vulkan-linux:
	apt-get update -qq 
	apt-get install -y libvulkan-dev
	apt-get install -y libvulkan1
	apt-get install -y vulkan-utils

.PHONY: subl-pkgfile
subl-pkgfile:
	subl $(shell brew --prefix)/lib/pkgconfig/vulkan.pc

.PHONY: genLinuxTests
genLinuxTests:
	swift test --generate-linuxmain
	swiftlint --fix --path Tests/

.PHONY: test
test:
	swift test --skip-update --parallel

.PHONY: build-release
build-release:
	swift build -c release

.PHONY: precommit
precommit: lint-fix genLinuxTests

.PHONY: testReadme
testReadme:
	markdown-link-check -p -v ./README.md
