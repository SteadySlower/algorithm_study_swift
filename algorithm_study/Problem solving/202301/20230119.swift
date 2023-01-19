//
//  20230119.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/19.
//

//func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
//    // 이차원 배열 세팅
//    var matrix = Array(repeating: Array(repeating: 500001, count: N + 1), count: N + 1)
//
//    // 자기마을까지의 경로의 비용 0으로 세팅
//    for i in 1...N {
//        matrix[i][i] = 0
//    }
//
//    // 주어진 양방향 도로 이차원 배열에 입력
//    for r in road {
//        let a = r[0]
//        let b = r[1]
//        let c = r[2]
//        matrix[a][b] = min(matrix[a][b], c)
//        matrix[b][a] = min(matrix[b][a], c)
//    }
//
//    // 플로이드 와샬 알고리즘
//    for k in 1...N {
//        for i in 1...N {
//            for j in 1...N {
//                matrix[i][j] = min(matrix[i][j], matrix[i][k] + matrix[k][j])
//            }
//        }
//    }
//
//    // 1에서 다른 마을까지 k보다 짧은 경우 세기
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
