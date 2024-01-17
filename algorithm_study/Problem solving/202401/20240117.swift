//
//  20240117.swift
//  algorithm_study
//
//  Created by JW Moon on 1/17/24.
//

//class Solution {
//    func threeSum(_ nums: [Int]) -> [[Int]] {
//        // 중복을 거르기 위해서 Set에 저장
//        var ans = Set<[Int]>()
//
//        // dict에 값을 key로 index를 value로 저장
//        var dict = [Int:Int]()
//        for (i, v) in nums.enumerated() {
//            dict[v] = i
//        }
//
//        // 이중반복문으로 일단 숫자 2개를 매칭
//        for i in 0..<(nums.count - 1) {
//            for j in (i + 1)..<nums.count {
//                // 두 수와 더해서 0이 될 수 있는 값(=target)이 dict에 있는지 확인한다.
//                // i, j, k는 서로 달라야 하므로 k > j인지 확인한다.
//                let target = 0 - nums[i] - nums[j]
//                if let k = dict[target], k > j {
//                    // 중복 확인을 위해서 정렬한다.
//                    ans.insert([nums[i], nums[j], nums[k]].sorted())
//                }
//            }
//        }
//
//        // Array로 변환해서 리턴한다.
//        return Array(ans)
//    }
//}
//
