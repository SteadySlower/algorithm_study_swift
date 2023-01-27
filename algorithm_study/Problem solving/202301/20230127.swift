//
//  20230127.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/27.
//

//func solution(_ n:Int, _ s:Int, _ a:Int, _ b:Int, _ fares:[[Int]]) -> Int {
//
//    // 길 없음 = 비용 무한대
//    let INF = Int.max
//
//    var matrix = Array(repeating: Array(repeating: INF, count: n + 1), count: n + 1)
//
//    // 자기 자신으로 가는 루트 비용 0으로 초기화
//    for i in 1...n {
//        matrix[i][i] = 0
//    }
//
//    // 각 node 사이의 cost 입력
//    for fare in fares {
//        let c = fare[0]
//        let d = fare[1]
//        let f = fare[2]
//        matrix[c][d] = f
//        matrix[d][c] = f
//    }
//
//    // 플로이드 와샬 알고리즘을 통해서 각 node 사이의 최적루트 구하기
//    for k in 1...n {
//        for i in 1...n {
//            for j in 1...n {
//                // arithmetic overflow를 방지하기 위한 guard문
//                guard matrix[i][k] < INF && matrix[j][k] < INF else { continue }
//                matrix[i][j] = min(matrix[i][j], matrix[i][k] + matrix[k][j])
//            }
//        }
//    }
//
//    // 환승을 하지 않는 경우와 환승을 하는 경우의 비용 비교
//    var ans = matrix[s][a] + matrix[s][b]
//
//    // i를 거쳐 환승하는 경우의 cost를 구하고 ans와 비교
//    for i in 1...n {
//        guard matrix[s][i] < INF && matrix[i][a] < INF && matrix[i][b] < INF else { continue }
//        ans = min(ans, matrix[s][i] + matrix[i][a] + matrix[i][b])
//    }
//
//    return ans
//}
//
//print(solution(6, 4, 6, 2, [[4, 1, 10], [3, 5, 24], [5, 6, 2], [3, 1, 41], [5, 1, 24], [4, 6, 50], [2, 4, 66], [2, 3, 22], [1, 6, 25]]))
//
//print(solution(6, 4, 5, 6, [[2, 6, 6], [6, 3, 7], [4, 6, 7], [6, 5, 11], [2, 5, 12], [5, 3, 20], [2, 4, 8], [4, 3, 9]]))
