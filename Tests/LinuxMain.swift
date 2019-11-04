import XCTest

import VulkanTests

var tests = [XCTestCaseEntry]()
tests += VulkanTests.__allTests()

XCTMain(tests)
