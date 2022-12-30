//
//  20221230.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/30.
//

////❗️ 꼭 최소 범위를 찾을 필요는 없다. 일단 범위를 다 찾고 최소 범위를 찾으면 된다.
//    // 처음에는 그냥 범위를 찾고 필터를 통해서 최소 범위를 찾으면 된다.
//func solution(_ gems:[String]) -> [Int] {
//
//    let gemCount = Set(gems).count
//    var dict = [String:Int]()
//    var start = 0
//    var end = -1
//    var min = Int.max
//    var result = [start + 1, end + 1]
//
//    func isValid() -> Bool {
//        return dict.count == gemCount
////        return dict.keys.filter { dict[$0, default: 0] > 0 }.count == gemCount
//        //👉 처음에 이렇게 했다가 시간초과남. filter 같은거 비용이 높음 반복문에 쓰지 말기!
//    }
//
//    while true {
//        if isValid() {
//            if end - start < min {
//                result = [start + 1, end + 1]
//                min = end - start
//            }
//            dict[gems[start]]! -= 1
//            if dict[gems[start]]! == 0 {
//                dict[gems[start]] = nil
//            }
//            start += 1
//        } else {
//            if end + 1 == gems.count { break }
//            end += 1
//            dict[gems[end], default: 0] += 1
//        }
//    }
//
//    return result
//}
//
//print(solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]))
//print(solution(["AA", "AB", "AC", "AA", "AC"]))
//print(solution(["XYZ", "XYZ", "XYZ"]))
