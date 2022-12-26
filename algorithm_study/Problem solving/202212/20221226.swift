//
//  20221226.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/26.
//

//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    func findCandidate(_ order1: [String], _ order2: [String]) -> String {
//        let set1 = Set(order1)
//        let set2 = Set(order2)
//        let inter = set1.intersection(set2)
//
//        return inter.sorted().reduce("", +)
//    }
//
//    var dict = [String:Int]()
//    let sortedOrders = orders.map { $0.map { String($0) }.sorted() }
//    var result = [String]()
//
//    for i in 0..<(sortedOrders.count - 1) {
//        for j in (i + 1)..<sortedOrders.count {
//            let candidate = findCandidate(sortedOrders[i], sortedOrders[j])
//            if candidate.count < 2 { continue }
//            if dict[candidate, default: 0] == 0 {
//                dict[candidate, default: 0] += 2
//            } else {
//                dict[candidate, default: 0] += 1
//            }
//        }
//    }
//
//    print(dict)
//
//    for key in dict.keys {
//        if dict[key]! > 1 { result.append(key) }
//    }
//
//    // 2번 케이스만 통과가 안되는 상태
//
//    return result.filter { course.contains($0.count) }.sorted()
//}

//print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
//print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2, 3, 5]))
//print(solution(["XYZ", "XWY", "WXA"], [2, 3, 4]))


//// 🚫 시간초과
//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    func combination(_ array: [Character], _ length: Int) -> [[Character]] {
//        var result = [[Character]]()
//
//        func combi(_ now: [Character], _ index: Int) {
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
//    func checkIfOrdered(_ combi: [Character], _ order: String) -> Bool {
//        let order = order.map { $0 }
//        for menu in combi {
//            if !order.contains(where: { $0 == menu }) { return false }
//        }
//        return true
//    }
//
//    var menus = Set<Character>()
//
//    for order in orders {
//        order.map { $0 }.forEach { menus.insert($0) }
//    }
//
//    let menuArray = Array(menus).sorted()
//    var dict = [String:Int]()
//
//    for length in course {
//        let combinations = combination(menuArray, length)
//        for combi in combinations {
//            for order in orders {
//                if checkIfOrdered(combi, order) { dict[combi.reduce("", { $0 + String($1) }), default: 0] += 1 }
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
//    return dict.keys.filter { dict[$0]! == max[$0.count] && max[$0.count] > 1 }.sorted()
//}
//
//
//print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
//print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2, 3, 5]))
//print(solution(["XYZ", "XWY", "WXA"], [2, 3, 4]))
