//
//  20230718.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/18.
//

//// 직선 2개씩 묶어주는 조합
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
//// 두 직선 사이에 교점을 구하는 함수 -> 교점이 없거나 교점의 좌표가 정수가 아닌 경우 nil을 리턴
//func getPoint(_ line1: [Int], _ line2: [Int]) -> (Int, Int)? {
//    // 나눗셈을 위해서 Double로 타입 변환
//    let line1 = line1.map { Double($0) }
//    let line2 = line2.map { Double($0) }
//
//    let a = line1[0], b = line1[1], e = line1[2]
//    let c = line2[0], d = line2[1], f = line2[2]
//
//    // 교점이 없는 경우 (= 기울기가 같은 경우) nil
//    if a * d == b * c { return nil }
//
//    // 교점 좌표 구하기
//    let x = (b * f - e * d) / (a * d - b * c)
//    let y = (e * c - a * f) / (a * d - b * c)
//
//    // 교점 좌표가 둘 다 정수가 아니면 nil
//    guard x - Double(Int(x)) == 0 && y - Double(Int(y)) == 0 else { return nil }
//
//    // 정수 리턴
//    return (Int(x), Int(y))
//}
//
//func solution(_ line:[[Int]]) -> [String] {
//
//    let points = combination(line).compactMap { getPoint($0[0], $0[1]) }
//
//    // 교점의 x, y의 최솟값, 최댓값을 구한다.
//    var minX = Int.max, maxX = Int.min
//    var minY = Int.max, maxY = Int.min
//
//    for point in points {
//        let x = point.0, y = point.1
//        if x < minX {
//            minX = x
//        }
//        if x > maxX {
//            maxX = x
//        }
//        if y < minY {
//            minY = y
//        }
//        if y > maxY {
//            maxY = y
//        }
//    }
//
//    // 최소 크기의 사각형을 만든다.
//    var ans = Array(repeating: Array(repeating: ".", count: maxX - minX + 1), count: maxY - minY + 1)
//
//    // 그 사각형에 교점을 나타내는 *을 찍는다.
//    for point in points {
//        let x = point.0 - minX
//        let y = maxY - point.1
//        ans[y][x] = "*"
//    }
//
//    // x축은 String으로 다시 합쳐서 리턴
//    return ans.map { $0.joined() }
//}
//
//print(solution([[2, -1, 4], [-2, -1, 4], [0, -1, 1], [5, -8, -12], [5, 8, 12]]))
//print(solution([[0, 1, -1], [1, 0, -1], [1, 0, 1]]))
//print(solution([[1, -1, 0], [2, -1, 0]]))
//print(solution([[1, -1, 0], [2, -1, 0], [4, -1, 0]]))
