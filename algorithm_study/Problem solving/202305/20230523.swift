//
//  20230523.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/23.
//

//func solution(_ n:Int) -> Int {
//
//    var queen = Array(repeating: 0, count: n)
//
//    func dfs(row: Int) -> Int {
//        var cnt = 0
//
//        if row == n {
//            return 1
//        }
//
//        for col in 0..<n {
//            queen[row] = col
//            var flag = true
//            for i in 0..<row {
//                if queen[i] == col || abs(queen[i] - col) == row - i {
//                    flag = false; break
//                }
//            }
//            if flag { cnt += dfs(row: row + 1) }
//        }
//
//        return cnt
//    }
//
//    return dfs(row: 0)
//}
//
//print(solution(4))
