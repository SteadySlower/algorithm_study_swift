//
//  20240116.swift
//  algorithm_study
//
//  Created by JW Moon on 1/16/24.
//

//class Solution {
//    func trap(_ height: [Int]) -> Int {
//        // 벽이 없는 경우 예외처리 (right가 -1인 경우를 방지)
//        if height.isEmpty { return 0 }
//
//        // 물의 양
//        var water = 0
//        // 투포인터
//        var left = 0, right = height.count - 1
//        // 왼쪽에서 가장 높은 벽, 오른쪽에서 가장 높은 벽
//        var leftMax = height[left], rightMax = height[right]
//
//        // 투포인터가 가운데(= 가장 높은 벽)에서 만날 때까지
//        while left < right {
//            // 왼쪽 벽이 더 낮으면 왼쪽에서 더 높은 벽을 찾아서 이동
//            if height[left] <= height[right] {
//                // 현재 칸에 고일 수 있는 물의 양
//                water += leftMax - height[left]
//                // 포인터 + 1 (오른쪽으로 이동)
//                left += 1
//                // 왼쪽에서 가장 높은 벽 갱신
//                leftMax = max(height[left], leftMax)
//            // 오른쪽 벽이 더 낮으면 오른쪽에서 더 높은 벽을 찾아서 이동
//            } else {
//                // 현재 칸에 고일 수 있는 물의 양
//                water += rightMax - height[right]
//                // 포인터 -1 (왼쪽으로 이동)
//                right -= 1
//                // 오른쪽에서 가장 높은 벽 갱신
//                rightMax = max(height[right], rightMax)
//            }
//        }
//
//        return water
//    }
//}
//
//print(Solution().trap([0,1,0,2,1,0,1,3,2,1,2,1]))
