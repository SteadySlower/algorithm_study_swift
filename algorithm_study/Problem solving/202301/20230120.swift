//
//  20230120.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/20.
//

// 효율성 테스트 미통과
//func solution(_ board:[[Int]]) -> Int {
//    let rowLength = board.count
//    let columnLength = board[0].count
//    let maxSize = min(rowLength, columnLength)
//
//    func findSquare(_ r: Int, _ c: Int, _ size: Int) -> Bool {
//        guard r + size <= rowLength && c + size <= columnLength else { return false }
//
//        for i in r..<(r + size) {
//            for j in c..<(c + size) {
//                if board[i][j] == 0 { return false }
//            }
//        }
//
//        return true
//    }
//
//    for size in stride(from: maxSize, to: 0, by: -1) {
//        for r in 0..<rowLength {
//            for c in 0..<columnLength {
//                if findSquare(r, c, size) { return size * size }
//            }
//        }
//    }
//
//    return 0
//}
//
//print(solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]))

// dp로 풀기

//func solution(_ board:[[Int]]) -> Int {
//    // dp로 쓰기 위해 변수로 복사
//    var dp = board
//    // 사이즈 최대값
//        //👉 board의 사이즈가 1 * 1인 경우 아래 반복문이 실행되지 않으므로 초기값을 dp[0][0]으로 해야 함!
//    var maxSize = dp[0][0]
//
//    for r in 1..<dp.count {
//        for c in 1..<dp[0].count {
//            // 현재 위치가 0이 아닌 경우 (= 정사각형이 될 수 있는 경우)
//            if dp[r][c] != 0 {
//                // 현재위치가 우하단 꼭지점인 정사각형의 최대 크기를 찾는다.
//                dp[r][c] = min(dp[r - 1][c - 1], dp[r][c - 1], dp[r - 1][c]) + 1
//                maxSize = max(maxSize, dp[r][c])
//            }
//        }
//    }
//
//    // 최대 "크기"를 리턴한다.
//    return maxSize * maxSize
//}
