#!/usr/bin/env swift -F /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks

//  0217-contains-duplicate.swift
//
//  Created by Tanveer Bashir on 10/3/20.
//

// 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate

// MARK: - Solution
// ================
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        guard nums.count > 0 else { return false }
        var values = Set<Int>()
        
        for num in nums {
            if values.contains(num) {
                return true
            } else {
                values.insert(num)
            }
        }
        return false
    }
}

// MARK: - Time and Space Complexity
// =================================
//
// Time Complexity: O(n)
// Explanation: It depends on the size of input
//
// Space Complexity: O(1)
// Explanation: It's a constant look up

// MARK: - Tests
// =============
import XCTest
class Tests: XCTestCase {
    let s = Solution()
    
    // LeetCode Examples
    func testLeetCodeExamples() {
        XCTAssertTrue(s.containsDuplicate([1,2.3.1]))
    }
    
    // Additional Examples
    func testAdditionalExamples() {
        XCTAssertTrue(s.containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
    }
}

Tests.defaultTestSuite.run()
