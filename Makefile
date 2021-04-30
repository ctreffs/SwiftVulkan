lint:
	swiftlint autocorrect --format
	swiftlint lint --quiet

lintErrorOnly:
	@swiftlint autocorrect --format --quiet
	@swiftlint lint --quiet | grep error

copyVulkanPkgConfig:
	cp vulkan.pc /usr/local/lib/pkgconfig/vulkan.pc
	pkg-config --libs --cflags vulkan

genLinuxTests:
	swift test --generate-linuxmain
	swiftlint autocorrect --format --path Tests/

.PHONE: test
test:
	swift test --skip-update --parallel --verbose

.PHONE: build-release
build-release:
	swift build -c release

clean:
	swift package reset
	rm -rdf .swiftpm/xcode
	rm -rdf .build/
	rm Package.resolved
	rm .DS_Store

cleanArtifacts:
	swift package clean

genXcode:
	swift package generate-xcodeproj --enable-code-coverage --skip-extra-files

latest:
	swift package update

resolve:
	swift package resolve

genXcodeOpen: genXcode
	open *.xcodeproj

precommit: lint genLinuxTests

testReadme:
	markdown-link-check -p -v ./README.md
