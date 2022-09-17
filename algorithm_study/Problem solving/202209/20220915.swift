//
//  20220915.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/17.
//

//func solution(_ n: Int, _ results: [[Int]]) -> Int {
//
//    // winners[i] = i에게 이긴 사람들
//    var winners = Array(repeating: Set<Int>(), count: n + 1)
//    // losers[i] = i에게 진 사람들
//    var losers = Array(repeating: Set<Int>(), count: n + 1)
//
//    for result in results {
//        let winner = result[0]
//        let loser = result[1]
//
//        // loser에게 이긴 사람에 winner 추가
//        winners[loser].insert(winner)
//        // winner에게 진 사람에 loser 추가
//        losers[winner].insert(loser)
//    }
//
//    for i in 1...n {
//        // i를 이긴 모든 사람은 i가 이긴 모든 사람을 이긴다.
//        for winner in winners[i] {
//            losers[winner].formUnion(losers[i])
//        }
//        // i에게 진 모든 사람은 i를 이긴 모든 사람에게 진다.
//        for loser in losers[i] {
//            winners[loser].formUnion(winners[i])
//        }
//    }
//
//    var ans = 0
//
//    for i in 1...n {
//        if winners[i].count + losers[i].count == n - 1 {
//            ans += 1
//        }
//    }
//
//    return ans
//}

// // 플로이드 와샬 알고리즘으로 풀기
//
//func solution(_ n:Int, _ results:[[Int]]) -> Int {
//
//    // 시합 결과를 표현하기 위한 enum
//    enum Result {
//        case unknown, won, lost
//    }
//
//    // 시합 결과를 저장하는 경로
//    var matrix: [[Result]] = Array(repeating: Array(repeating: .unknown, count: n + 1), count: n + 1)
//
//    for result in results {
//        let winner = result[0]
//        let loser = result[1]
//        matrix[winner][loser] = .won
//        matrix[loser][winner] = .lost
//    }
//
//    // i 선수와 j 선수의 결과를 k 선수와의 결과를 통해서 유추한다.
//    for k in 1...n {
//        for i in 1...n {
//            for j in 1...n {
//                // i가 k를 이기는데 k가 j를 이긴다면, i가 j를 이긴다.
//                if matrix[i][k] == .won && matrix[k][j] == .won {
//                    matrix[i][j] = .won
//                    matrix[j][i] = .lost
//                // i가 k한테 지는데 k는 j한테 진다면, i는 j한테 진다.
//                } else if matrix[i][k] == .lost && matrix[k][j] == .lost {
//                    matrix[i][j] = .lost
//                    matrix[j][i] = .won
//                }
//            }
//        }
//    }
//
//    var ans = 0
//
//    // i 선수의 모든 선수들과의 unknown이 아닌 경기 결과를 세서 n - 1이면 ans += 1
//    for i in 1...n {
//        var cnt = 0
//        for j in 1...n {
//            if matrix[i][j] != .unknown { cnt += 1 }
//        }
//        if cnt == n - 1 { ans += 1 }
//    }
//
//    return ans
//}
//
//print(solution(5, [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]]))
