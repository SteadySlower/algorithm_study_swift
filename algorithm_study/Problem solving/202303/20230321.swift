//
//  20230321.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/21.
//

//import Foundation
//
//func solution(_ k:Int, _ d:Int) -> Int64 {
//
//    func isValid(_ x: Int, _ y: Int) -> Bool {
//        return sqrt(Double(x * x + y * y)) <= Double(d)
//    }
//
//    var ans = 0
//
//    // 이렇게 무대포로 넣지 말고 a = n일 때 가능한 b의 갯수 세는 방식으로 접근해보자
//
//    for a in 0..<1000000 {
//        for b in 0..<1000000 {
//            let (x, y) = (a * k, b * k)
//            if isValid(x, y) {
//                ans += 1
//            } else {
//                break
//            }
//        }
//    }
//
//    return Int64(ans)
//}
//
//print(solution(2, 4))
//print(solution(1, 5))
