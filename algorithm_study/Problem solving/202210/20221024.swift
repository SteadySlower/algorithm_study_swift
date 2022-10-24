//
//  20221024.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/24.
//

// 땅따먹기

//// dfs 시간 초과
//func solution(_ land:[[Int]]) -> Int {
//    var answer = 0
//    var score = 0
//
//    func dfs(_ row: Int, _ col: Int) {
//        if row == land.count {
//            answer = max(answer, score)
//            return
//        }
//
//        for i in 0..<4 {
//            if i == col {
//                continue
//            }
//            score += land[row][col]
//            dfs(row + 1, i)
//            score -= land[row][col]
//        }
//    }
//
//    for i in 0..<4 {
//        dfs(0, i)
//    }
//
//    return answer
//}

//// dp 풀이
//
//func solution(_ land:[[Int]]) -> Int {
//    // land를 복사해서 dp에 활용
//    var land = land
//
//    // i행의 j열을 밟았을 때의 최댓값
//        //👉 i - 1행의 j열을 제외한 열을 밟았을 때의 점수 중에 최댓값을 i열 j행의 점수와 더한다
//    for i in 1..<land.count {
//        for j in 0..<4 {
//            // j을 제외한 밟을 수 있는 열 구하기
//            var steppable = [Int]()
//            for jj in 0..<4 {
//                if jj != j { steppable.append(jj) }
//            }
//            // 밟을 수 있는 열 중에서 가장 큰 점수 더하기
//            land[i][j] += max(land[i - 1][steppable[0]], land[i - 1][steppable[1]], land[i - 1][steppable[2]])
//        }
//    }
//
//    // 마지막 행의 누적된 점수 중에 최댓값을 리턴한다.
//    return land[land.count - 1].max()!
//}
