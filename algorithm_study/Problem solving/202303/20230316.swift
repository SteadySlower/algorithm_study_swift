//
//  20230316.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/16.
//

//func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
//
//    // 벽 구현
//    var walls = Array(repeating: false, count: n + 1)
//    var ans = 0
//
//    // 덧칠이 필요한 부분을 true로 표시
//    for s in section {
//        walls[s] = true
//    }
//
//    // 벽을 순회하면서
//    for i in 1...n {
//        // 칠해야 하는 곳을 만나면
//        if walls[i] {
//            // m 크기 만큼 색칠한다.
//            for j in i..<(i + m) {
//                guard j <= n else { break }
//                walls[j] = false
//            }
//            ans += 1
//        }
//    }
//
//    return ans
//}

//func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
//
//    // 1 ~ painted = 이미 칠해진 영역
//    var painted = 0
//    var ans = 0
//
//    // 칠해야 하는 구역을 순회하면서
//    for s in section {
//        // 아직 해당 구역이 칠해지지 않았다면
//        if painted < s {
//            // 해당 구역을 시작점으로 m 크기만큼 색칠
//            painted = s + m - 1
//            ans += 1
//        }
//    }
//
//    return ans
//}
//
//
//print(solution(8, 4, [2, 3, 6]))
