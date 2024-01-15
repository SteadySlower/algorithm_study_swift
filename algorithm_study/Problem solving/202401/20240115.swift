//
//  20240115.swift
//  algorithm_study
//
//  Created by JW Moon on 1/15/24.
//

//class Solution {
//    func trap(_ height: [Int]) -> Int {
//        if height.isEmpty { return 0 }
//
//        var water = 0
//        var left = 0, right = height.count - 1
//        var leftMax = height[left], rightMax = height[right]
//
//        while left < right {
//            if height[left] <= height[right] {
//                water += leftMax - height[left]
//                left += 1
//                leftMax = max(height[left], leftMax)
//            } else {
//                water += rightMax - height[right]
//                right -= 1
//                rightMax = max(height[right], rightMax)
//            }
//        }
//
//        return water
//    }
//}
//
//print(Solution().trap([0,1,0,2,1,0,1,3,2,1,2,1]))
