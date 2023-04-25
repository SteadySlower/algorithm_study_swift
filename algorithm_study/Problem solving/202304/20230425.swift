//
//  20230425.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/25.
//

//func solution(_ weights:[Int]) -> Int64 {
//
//    // 몸무게 - 사람수로 dict에 등록
//        // 나눗셈을 정확하게 해야하므로 반올림하는 Int가 아니라 Double로
//    var dict = [Double:Int]()
//
//    for weight in weights {
//        dict[Double(weight), default: 0] += 1
//    }
//
//    var ans = 0
//
//    // 비율이 1:1, 2:3, 2:4, 3:4인 사람들끼리 짝꿍
//    for key in dict.keys {
//        // 비율 1:1 = 몸무게가 같음 = key의 value가 1 이상
//        if dict[key]! > 1 {
//            // 서로 짝꿍 = nC2
//            ans += dict[key]! * (dict[key]! - 1) / 2
//        }
//
//        // 2/3인 사람들과 짝꿍
//        if dict[key * 2/3] != nil {
//            ans += dict[key]! * dict[key * 2/3]!
//        }
//
//        // 2/3인 사람들과 짝꿍
//        if dict[key * 2/4] != nil {
//            ans += dict[key]! * dict[key * 2/4]!
//        }
//
//        // 2/3인 사람들과 짝꿍
//        if dict[key * 3/4] != nil {
//            ans += dict[key]! * dict[key * 3/4]!
//        }
//    }
//
//    return Int64(ans)
//}
//
//print(solution([100,180,360,100,270]))
