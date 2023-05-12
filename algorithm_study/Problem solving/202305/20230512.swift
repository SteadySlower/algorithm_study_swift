//
//  20230512.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/12.
//

//func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
//
//    var ps = Array(repeating: Array(repeating: 0, count: board[0].count + 1), count: board.count + 1)
//
//    for s in skill {
//        let t = s[0], r1 = s[1], c1 = s[2], r2 = s[3], c2 = s[4], d = s[5]
//        ps[r1][c1] += t == 1 ? -d : d
//        ps[r1][c2 + 1] += t == 1 ? d : -d
//        ps[r2 + 1][c1] += t == 1 ? d : -d
//        ps[r2 + 1][c2 + 1] += t == 1 ? -d : d
//    }
//
//    for i in 0..<(ps.count - 1) {
//        for j in 0..<(ps[0].count - 1) {
//            ps[i][j + 1] += ps[i][j]
//        }
//    }
//    for j in 0..<(ps[0].count - 1) {
//        for i in 0..<(ps.count - 1) {
//            ps[i + 1][j] += ps[i][j]
//        }
//    }
//
//    var board = board
//    var ans = 0
//
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
