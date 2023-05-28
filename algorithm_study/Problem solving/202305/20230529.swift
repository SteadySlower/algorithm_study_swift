//
//  20230529.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/29.
//

//func solution(_ k:Int, _ ranges:[[Int]]) -> [Double] {
//
//    // 정적분을 통해 크기를 구하는 함수
//    func area(start: Int, end: Int) -> Double {
//        var result = 0.0
//
//        for i in start...(end - 1) {
//            result += (heights[i] + heights[i + 1]) / 2
//        }
//
//        return result
//    }
//
//    var collatz = [k]
//    var k = k
//
//    while k != 1 {
//        k = k % 2 == 0 ? k / 2 : k * 3 + 1
//        collatz.append(k)
//    }
//
//    let heights = collatz.map { Double($0) }
//    var result = [Double]()
//
//    for range in ranges {
//        let start = range[0]
//        let end = collatz.count + range[1] - 1
//        if start > end {
//            result.append(-1)
//        } else if start == end {
//            result.append(0)
//        } else {
//            result.append(area(start: start, end: end))
//        }
//    }
//
//    return result
//}
//
//print(solution(5, [[0,0],[0,-1],[2,-3],[3,-3]]))
