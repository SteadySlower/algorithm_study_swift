//
//  20230606.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/06.
//

//import Foundation
//
//func countDots(_ r: Int) -> Int {
//    var result = 0
//
//    let dr = Double(r)
//    for x in 0...r {
//        let x = Double(x)
//        let y = Int(sqrt(pow(dr, 2) - pow(x, 2)))
//        result += y + 1
//    }
//
//    let overlap = 3 + r * 4
//
//    return result * 4 - overlap
//}
//
//// 여기서 시간초과 발생!!!
//func countEdgeDots(_ r: Int) -> Int {
//    var result = 0
//    let dr = Double(r)
//    for x in -r...r {
//        for y in -r...r {
//            if pow(Double(x), 2) + pow(Double(y), 2) == pow(dr, 2) {
//                result += 1
//            }
//        }
//    }
//
//    return result
//}
//
//func solution(_ r1:Int, _ r2:Int) -> Int64 {
//
//    return Int64(countDots(r2) - countDots(r1) + countEdgeDots(r1))
//}
//
//print(solution(2, 3))
