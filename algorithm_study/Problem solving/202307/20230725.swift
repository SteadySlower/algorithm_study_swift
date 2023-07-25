//
//  20230725.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/25.
//

//func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
//
//    // 이동거리가 먼 순서대로 정렬
//    let dist = dist.sorted(by: >)
//    // 중복을 방지하기 위해서 Set
//    var set = Set<[Int]>()
//    set.insert(weak)
//
//    // 모든 친구들 완전 탐색
//    for i in 0..<dist.count {
//        let d = dist[i]
//        // "깊이" 별로 탐색하기 위해서 별도 Set에 다음 경로 insert
//        var newSet = Set<[Int]>()
//        // "남은 취약 지점들" 완전 탐색
//        for weak in set {
//            // "각각 취약 지점에서 시계방향 탐색"
//            for w in weak {
//                let start = w
//                let end = (start + d) % n
//                // 탐색 된 지점은 제외
//                let newWeak = weak.filter { !(start < end ? (start...end) ~= $0 : $0 <= end || start...n ~= $0) }
//                // 모든 취약 지점을 탐색했다면 return
//                if newWeak.isEmpty { return i + 1 }
//                newSet.insert(newWeak)
//            }
//        }
//        // 다음 "깊이"를 탐색
//        set = newSet
//    }
//
//    // 완전탐색에도 불구하고 정답이 없으면 -1 리텀
//    return -1
//}
//
//print(solution(12, [1, 5, 6, 10], [1, 2, 3, 4]))
