//
//  20230526.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/26.
//

//func solution(_ n:Int) -> Int {
//    // 퀸이 각 행의 어느 열에 놓였는가를 나타내는 배열
//        // queen[i] = j -> i행 j열에 퀸이 놓여 있음
//    var queen = Array(repeating: 0, count: n)
//
//    // dfs를 통해서 백트래킹
//    func dfs(row: Int) -> Int {
//        // 최종 경우의 수
//        var cnt = 0
//        // row가 n이다 = (0 ~ n - 1)까지 모두 채워짐 1을 리턴
//            // 리턴된 1은 cnt에 누적됨
//        if row == n {
//            return 1
//        }
//
//        // 현재 row의 각 col에 대해서 완전 탐색 실행
//        for col in 0..<n {
//            queen[row] = col
//            var flag = true
//            // 기존의 row들을 완전 탐색하면서
//            for i in 0..<row {
//                // 같은 col에 있는 퀸이 있는지 or 대각선에 위치한 퀸이 있는지 확인
//                if queen[i] == col || abs(queen[i] - col) == row - i {
//                    flag = false; break //👉 있으면 flag false
//                }
//            }
//            // 모든 row에 대한 완전 탐색을 통과했다면 다음 row로 진행
//                // 통과 못하면 진행 X = 백트래킹
//            if flag { cnt += dfs(row: row + 1) }
//        }
//
//        // 최종 경우의 수 (모든 row에 대한 검증을 통과한 재귀함수들이 리턴한 1이 누적되어 있음)
//        return cnt
//    }
//
//    return dfs(row: 0)
//}
//
//print(solution(4))


//func solution(_ k:Int, _ ranges:[[Int]]) -> [Double] {
//
//    var heights = [k]
//    var k = k
//
//    while k != 1 {
//        if k % 2 == 0 {
//            k /= 2
//        } else {
//            k = k * 3 + 1
//        }
//        heights.append(k)
//    }
//
//    print(heights)
//
//    return []
//}
//
//print(solution(5, [[0,0],[0,-1],[2,-3],[3,-3]]))
