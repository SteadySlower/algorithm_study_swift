//
//  20230608.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/08.
//

//import Foundation
//
//func solution(_ r1:Int, _ r2:Int) -> Int64 {
//    let dr1 = Double(r1)
//    let dr2 = Double(r2)
//
//    var result = 0.0
//
//    // x축 1 ~ r2까지 점의 갯수 구하기
//        // x = 0일 때를 빼야지 마지막에 x4를 했을 때 겹치는 부분이 없음
//    for x in 1...r2 {
//        let dx = Double(x)
//        // 작은 원의 경우: x가 반지름 보다 작을 때만 높이를 구함 (아니면 0)
//        let y1 = dr1 - dx > 0 ? sqrt(pow(dr1, 2) - pow(dx, 2)) : 0
//        // 큰 원의 높이
//        let y2 = sqrt(pow(dr2, 2) - pow(dx, 2))
//        // 큰 원의 높이는 내림
//        // 작은 원의 높이는 반올림 후 -1
//            // 원래는 올림을 하는 것이 맞지만 y1이 0인 경우 예외처리를 용이하게 하기 위함
//        result += floor(y2) - (ceil(y1) - 1)
//    }
//
//    return Int64(result * 4)
//}
//
//print(solution(2, 3))
