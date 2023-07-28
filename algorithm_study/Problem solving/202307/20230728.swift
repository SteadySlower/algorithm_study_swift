//
//  20230728.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/28.
//

//func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
//
//    var deliveries = deliveries
//    var pickups = pickups
//
//    // 배달이 0인 마지막 집은 제거
//    while let last = deliveries.last, last == 0 {
//        _ = deliveries.popLast()
//    }
//
//    // 픽업이 0인 마지막 집은 제거
//    while let last = pickups.last, last == 0 {
//        _ = pickups.popLast()
//    }
//
//    var ans = 0
//
//    // 배달과 픽업이 모두 끝나면 종료
//    while !(deliveries.isEmpty && pickups.isEmpty) {
//
//        // 이번 배달에서 나갈 거리 (= 배달 or 픽업 거리가 있는 가장 먼 집의 거리)
//            // 왕복이므로 * 2
//        ans += max(deliveries.count, pickups.count) * 2
//
//        var d = 0
//        var p = 0
//
//        // 최대한 멀리 & 많이 배달 -> 마지막 집에 배달할 물건부터 계산
//        while !deliveries.isEmpty {
//            // 현재 갈 집에 배달할 물건을 모두 싣을 수 있는 경우
//            if d + deliveries.last! <= cap {
//                d += deliveries.popLast()!
//            } else { // 다 싣을 수 없는 경우
//                deliveries[deliveries.count - 1] -= cap - d //싣을 수 있는 만큼만 싣는다
//                break
//            }
//        }
//
//        // 최대한 멀리 & 많이 픽업 -> 마지막 집에 픽업할 물건부터 계산
//        while !pickups.isEmpty {
//            // 현재 갈 집에 픽업할 물건을 모두 가지고 돌아올 수 있는 경우
//            if p + pickups.last! <= cap {
//                p += pickups.popLast()!
//            } else { // 다 가지고 돌아올 수 없는 경우
//                pickups[pickups.count - 1] -= cap - p // 가져올 수 있는 만큼만 싣는다
//                break
//            }
//        }
//    }
//
//    return Int64(ans)
//}
//
//print(solution(4, 5, [1, 0, 3, 1, 2], [0, 3, 0, 4, 0]))
