//
//  20240119.swift
//  algorithm_study
//
//  Created by JW Moon on 1/19/24.
//

//class Solution {
//    func threeSum(_ nums: [Int]) -> [[Int]] {
//        // 투포인터를 활용하기 위한 정렬
//        let nums = nums.sorted()
//        var ans = [[Int]]()
//
//        for i in 0 ..< nums.count {
//            // 동일한 숫자 조합이 포함되면 안되니까 중복된 nums[i]가 없도록
//            if i > 0 && nums[i - 1] == nums[i] { continue }
//            var left = i + 1
//            var right = nums.count - 1
//            while left < right {
//                let sum = nums[i] + nums[left] + nums[right]
//                // 합이 0일 때
//                if sum == 0 {
//                    // ans에 추가
//                    ans.append([nums[i], nums[left], nums[right]])
//                    // 동일한 숫자 조합이 포함되면 안되니까 중복된 nums[left]가 없도록
//                        // nums[left]만 달라지면 right는 당연히 중복되지 않으므로 right는 이동할 필요 없다
//                    while left < right, nums[left + 1] == nums[left] {
//                        left += 1
//                    }
//                    left += 1
//                // 합이 0보다 작으면 합이 커지도록 left + 1
//                } else if sum < 0 {
//                    left += 1
//                // 합이 0보다 트면 합이 작아지도록 right - 1
//                } else {
//                    right -= 1
//                }
//            }
//        }
//        return ans
//    }
//}
//
//
//print(Solution().threeSum([-1,0,1,2,-1,-4]))
//// [[-1,-1,2],[-1,0,1]]

//class Solution {
//    func arrayPairSum(_ nums: [Int]) -> Int {
//        // 정렬하고
//        let nums = nums.sorted()
//        var ans = 0
//        // 짝수번째만 더한다.
//        for i in 0..<(nums.count / 2) {
//            ans += nums[i * 2]
//        }
//        return ans
//    }
//}

//class Solution {
//    func arrayPairSum(_ nums: [Int]) -> Int {
//        nums.sorted().enumerated().filter { $0.offset % 2 == 0 }.reduce(0) { $0 + $1.element }
//    }
//}
//
//print(Solution().arrayPairSum([6,2,6,5,1,2]))

// [6,2,6,5,1,2]
// [1, 2, 2, 5, 6, 6]
