//
//  20230515.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/15.
//

//func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
//
//    var board = board
//
//    // R x C를 모두 순회하면서 데미지 or 치료 기록
//    for s in skill {
//        let t = s[0], r1 = s[1], c1 = s[2], r2 = s[3], c2 = s[4], d = s[5]
//        if t == 1 {
//            for r in r1...r2 {
//                for c in c1...c2 {
//                    board[r][c] -= d
//                }
//            }
//        } else {
//            for r in r1...r2 {
//                for c in c1...c2 {
//                    board[r][c] += d
//                }
//            }
//        }
//    }
//
//    var ans = 0
//
//    // 완전탐색하면서 살아남은 건물 세기
//    for r in 0..<board.count {
//        for c in 0..<board[0].count {
//            if board[r][c] > 0 { ans += 1 }
//        }
//    }
//
//    return ans
//}


//func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
//
//    var ps = Array(repeating: Array(repeating: 0, count: board[0].count + 1), count: board.count + 1)
//
//    // 누적합 표시
//    for s in skill {
//        let t = s[0], r1 = s[1], c1 = s[2], r2 = s[3], c2 = s[4], d = s[5]
//        ps[r1][c1] += t == 1 ? -d : d
//        ps[r1][c2 + 1] += t == 1 ? d : -d
//        ps[r2 + 1][c1] += t == 1 ? d : -d
//        ps[r2 + 1][c2 + 1] += t == 1 ? -d : d
//    }
//
//    // 행 기준 누적합 연산
//    for i in 0..<(ps.count - 1) {
//        for j in 0..<(ps[0].count - 1) {
//            ps[i][j + 1] += ps[i][j]
//        }
//    }
//
//    // 열 기준 누적합 연산
//    for j in 0..<(ps[0].count - 1) {
//        for i in 0..<(ps.count - 1) {
//            ps[i + 1][j] += ps[i][j]
//        }
//    }
//
//    var board = board
//    var ans = 0
//
//    // 누적합 연산 결과를 board에 반영
//    for i in 0..<board.count {
//        for j in 0..<board[0].count {
//            board[i][j] += ps[i][j]
//            if board[i][j] > 0 { ans += 1 }
//        }
//    }
//
//    return ans
//}
//
//print(solution([[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5]], [[1,0,0,3,4,4],[1,2,0,2,3,2],[2,1,0,3,1,2],[1,0,1,3,3,1]]))
