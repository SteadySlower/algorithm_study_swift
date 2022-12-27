//
//  20221227.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/27.
//

//// 🚫 시간초과
////👉 계속 시간초과 나서 String형 형 변환을 최대한 줄이려고 노력함.
//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    func combination(_ array: [String], _ length: Int) -> [[String]] {
//        var result = [[String]]()
//
//        func combi(_ now: [String], _ index: Int) {
//            if now.count == length {
//                result.append(now)
//                return
//            }
//
//            for i in index..<array.count {
//                combi(now + [array[i]], i + 1)
//            }
//        }
//
//        combi([], 0)
//
//        return result
//    }
//
//    func checkIfOrdered(_ combi: [String], _ order: [String]) -> Bool {
//        for menu in combi {
//            if !order.contains(where: { $0 == menu }) { return false }
//        }
//        return true
//    }
//
//    let orders = orders.map { $0.map { String($0) } }
//
//    var menus = Set<String>()
//
//    for order in orders {
//        order.forEach { menus.insert($0) }
//    }
//
//    let menuArray = Array(menus).sorted()
//    var dict = [[String]:Int]()
//
//    for length in course {
//        let combinations = combination(menuArray, length)
//        for combi in combinations {
//            for order in orders {
//                if checkIfOrdered(combi, order) { dict[combi, default: 0] += 1 }
//            }
//        }
//    }
//
//    var max = Array(repeating: 0, count: 11)
//
//    for (key, value) in dict {
//        if value > max[key.count] {
//            max[key.count] = value
//        }
//    }
//
//    return dict.keys.filter { dict[$0]! == max[$0.count] && max[$0.count] > 1 }.map { $0.reduce("", +) }.sorted()
//}
//
//
//print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
//print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2, 3, 5]))
//print(solution(["XYZ", "XWY", "WXA"], [2, 3, 4]))
