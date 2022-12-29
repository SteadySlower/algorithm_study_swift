//
//  20221229.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/29.
//

//🚫 항상 앞쪽에 오는 범위가 가장 작은 범위 아니다. 따라서 모든 범위를 먼저 찾는 것이 중요하다
//func solution(_ gems:[String]) -> [Int] {
//
//    let gemCount = Set(gems).count
//
//    var dict = [String:Int]()
//    var start = 0
//    var end = 0
//
//    while end < gems.count - 1 {
//        dict[gems[end], default: 0] += 1
//        if dict.keys.count == gemCount { break }
//        end += 1
//    }
//
//    while start < end {
//        if dict[gems[start]]! == 1 {
//            break
//        } else {
//            dict[gems[start]]! -= 1
//        }
//        start += 1
//    }
//
//    return [start + 1, end + 1]
//}
//
//print(solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]))
