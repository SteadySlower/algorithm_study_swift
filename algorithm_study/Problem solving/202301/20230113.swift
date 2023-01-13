//
//  20230113.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/13.
//

//func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
//
//    func rotate(_ query: [Int]) -> Int {
//        let r1 = query[0]
//        let c1 = query[1]
//        let r2 = query[2]
//        let c2 = query[3]
//
//        var rotated = matrix
//        var result = Int.max
//
//        for r in r1...r2 {
//            for c in c1...c2 {
//                if r == r1 && (c1 + 1)...c2 ~= c {
//                    rotated[r][c] = matrix[r][c - 1]
//                } else if (r1 + 1)...r2 ~= r && c == c2 {
//                    rotated[r][c] = matrix[r - 1][c]
//                } else if r == r2 && c1...(c2 - 1) ~= c {
//                    rotated[r][c] = matrix[r][c + 1]
//                } else if r1...(r2 - 1) ~= r && c == c1 {
//                    rotated[r][c] = matrix[r + 1][c]
//                } else {
//                    continue
//                }
//                result = min(rotated[r][c], result)
//            }
//        }
//
//        matrix = rotated
//
//        return result
//    }
//
//    var matrix = Array(repeating: Array(repeating: 0, count: columns + 1), count: rows + 1)
//    var results = [Int]()
//
//    for i in 1..<(rows + 1) {
//        for j in 1..<(columns + 1) {
//            matrix[i][j] = j + (i - 1) * columns
//        }
//    }
//
//    for query in queries {
//        results.append(rotate(query))
//    }
//
//    return results
//}
//
//print(solution(3, 4, []))
//print(solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]))
