//
//  20230607.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/07.
//

//import Foundation

//func solution(_ r1:Int, _ r2:Int) -> Int64 {
//
//    // 1사분면만 센 다음에 4를 곱한다.
//    func countDots(_ r: Int) -> Int {
//        var result = 0
//
//        let dr = Double(r)
//        for x in 0...r {
//            let x = Double(x)
//            let y = Int(sqrt(pow(dr, 2) - pow(x, 2)))
//            result += y + 1
//        }
//
//        // 4를 곱했을 때 겹치는 부분
//            // 1. 원점 3번 겹침
//            // 2. 각 사분면의 경계면 2번씩 겹침 (경계면의 길이 = 2r)
//        let overlap = 3 + r * 4
//
//        return result * 4 - overlap
//    }
//
//    // 원의 경계선에 위치한 점의 갯수를 구하는 함수
//    func countEdgeDots(_ r: Int) -> Int {
//        var result = 0
//        let dr = Double(r)
//
//        // 1사분면만 구하고 곱하기 4
//        for x in 0...r {
//            let x = Double(x)
//            let y = sqrt(pow(dr, 2) - pow(x, 2))
//            // y가 정수인지 확인 (버림한 값 == 원래 값)
//            if y - Double(Int(y)) == 0 { result += 1 }
//        }
//
//        // 2번씩 센 부분 = x축, y축 위에 위치한 점 4개
//        return result * 4 - 4
//    }
//
//    return Int64(countDots(r2) - countDots(r1) + countEdgeDots(r1))
//}
//
//print(solution(2, 3))

//func solution(_ r1:Int, _ r2:Int) -> Int64 {
//    let dr1 = Double(r1)
//    let dr2 = Double(r2)
//
//    var result = 0
//
//    for x in 1..<r2 {
//        let dx = Double(x)
//        let y1 = pow(dr1, 2) - pow(dx, 2) > 0 ? Int(sqrt(pow(dr1, 2) - pow(dx, 2))) : 0
//        let y2 = Int(sqrt(pow(dr2, 2) - pow(dx, 2)))
//        result += y2 - y1
//    }
//
//    return Int64(result * 4 + 4)
//}
//
//print(solution(2, 3))
