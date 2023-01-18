//
//  20230118.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/18.
//

//func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
//    var matrix = Array(repeating: Array(repeating: 500001, count: N + 1), count: N + 1)
//
//    for i in 1...N {
//        matrix[i][i] = 0
//    }
//
//    for r in road {
//        let a = r[0]
//        let b = r[1]
//        let c = r[2]
//        matrix[a][b] = min(matrix[a][b], c)
//        matrix[b][a] = min(matrix[b][a], c)
//    }
//
//    for i in 1...N {
//        for j in 1...N {
//            for k in 1...N {
//                matrix[i][j] = min(matrix[i][j], matrix[i][k] + matrix[k][j])
//            }
//        }
//    }
//
//    var ans = 0
//
//    for i in 1...N {
//        if matrix[1][i] <= k { ans += 1 }
//    }
//
//    return ans
//}
//
//print(solution(5, [[1,2,1],[2,3,3],[5,2,2],[1,4,2],[5,3,1],[5,4,2]], 3))
