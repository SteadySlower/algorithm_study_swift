//
//  20240122.swift
//  algorithm_study
//
//  Created by JW Moon on 1/22/24.
//

//class Solution {
//    func productExceptSelf(_ nums: [Int]) -> [Int] {
//
//        var left = Array(repeating: 1, count: nums.count)
//        var right = Array(repeating: 1, count: nums.count)
//
//        // left의 i는 nums[0] ~ nums[i - 1]까지 곱한 값
//        for i in 1..<nums.count {
//            left[i] = left[i - 1] * nums[i - 1]
//        }
//
//        // right의 i는 nums[nums.count - 1] ~ nums[i + 1]까지 곱한 값
//        for i in (0..<(nums.count - 1)).reversed() {
//            right[i] = right[i + 1] * nums[i + 1]
//        }
//
//        var ans = [Int]()
//
//        // ans의 i는 결과적으로 nums[i]빼고 모두 곱한 값이 된다.
//        for i in 0..<nums.count {
//            ans.append(left[i] * right[i])
//        }
//
//        return ans
//    }
//}
//
//print(Solution().productExceptSelf([1,2,3,4]))
//print(Solution().productExceptSelf([-1,1,0,-3,3]))
