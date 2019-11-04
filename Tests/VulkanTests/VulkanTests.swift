import XCTest
@testable import Vulkan

final class VulkanTests: XCTestCase {
    func testVulkanAPIAvailablility() {
        XCTAssertNotNil(VkApplicationInfo.self)
        XCTAssertNotNil(VkPhysicalDeviceFeatures.self)
    }
}
