//
//  20230717.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/17.
//

//func combination(_ array: [[Int]]) -> [[[Int]]] {
//    var result = [[[Int]]]()
//
//    func combi(_ now: [[Int]], _ index: Int) {
//        if now.count == 2 {
//            result.append(now)
//            return
//        }
//
//        for i in index..<array.count {
//            let new = now + [array[i]]
//            combi(new, i + 1)
//        }
//    }
//
//    combi([], 0)
//
//    return result
//}
//
//
//func getPoint(_ line1: [Int], _ line2: [Int]) -> (Int, Int)? {
//    let line1 = line1.map { Double($0) }
//    let line2 = line2.map { Double($0) }
//
//    let a = line1[0], b = line1[1], e = line1[2]
//    let c = line2[0], d = line2[1], f = line2[2]
//
//    // 기울기가 같은 경우
//    if a * d == b * c { return nil }
//
//    let x = (b * f - e * d) / (a * d - b * c)
//    let y = (e * c - a * f) / (a * d - b * c)
//
//    guard x - Double(Int(x)) == 0 && y - Double(Int(y)) == 0 else { return nil }
//
//    return (Int(x), Int(y))
//}
//
//func solution(_ line:[[Int]]) -> [String] {
//
//    let points = combination(line).compactMap { getPoint($0[0], $0[1]) }
//
//    let xSort = points.sorted { $0.0 < $1.0 }
//    let ySort = points.sorted { $0.1 < $1.1 }
//
//    let minX = xSort[0].0, maxX = xSort[xSort.count - 1].0
//    let minY = ySort[0].1, maxY = ySort[ySort.count - 1].1
//
//    var ans = Array(repeating: Array(repeating: ".", count: maxX - minX + 1), count: maxY - minY + 1)
//
//    for point in points {
//        let x = point.0 - minX
//        let y = maxY - point.1
//        ans[y][x] = "*"
//    }
//
//    return ans.map { $0.joined() }
//}
//
//print(solution([[2, -1, 4], [-2, -1, 4], [0, -1, 1], [5, -8, -12], [5, 8, 12]]))
//print(solution([[0, 1, -1], [1, 0, -1], [1, 0, 1]]))
//print(solution([[1, -1, 0], [2, -1, 0]]))
//print(solution([[1, -1, 0], [2, -1, 0], [4, -1, 0]]))
