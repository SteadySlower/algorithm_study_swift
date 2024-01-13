//
//  20240101.swift
//  algorithm_study
//
//  Created by JW Moon on 1/1/24.
//

//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        // [num:index]를 저장하는 dictionary
//        var dict = [Int:Int]()
//
//        for (i, v) in nums.enumerated() {
//            // 현재 v와 더해서 target을 만들 수 있는 수가 등장하면?
//            if let index = dict[target - v] {
//                return [index, i] // index 2개를 리턴 (index가 i보다 항상 작으므로 이 순서로 리턴)
//            }
//            // 없으면 dictionary에 기록
//            dict[v] = i
//        }
//        return []
//    }
//}
//
//print(Solution().twoSum([2,7,11,15], 9))
//print(Solution().twoSum([3,2,4], 6))
