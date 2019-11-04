import XCTest
#if canImport(Vulkan)
@testable import Vulkan
#endif

final class VulkanTests: XCTestCase {
    func testVulkanAPIAvailablility() {
        #if canImport(Vulkan)
        XCTAssertNotNil(VkApplicationInfo.self)
        XCTAssertNotNil(VkPhysicalDeviceFeatures.self)
        #endif
    }
}
