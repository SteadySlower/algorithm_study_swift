//
//  20221213.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/13.
//

//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    func combination(_ array: [String], _ length: Int) -> [String] {
//        var result = [String]()
//
//        func combi(_ now: [String], _ index: Int) {
//            if now.count == length {
//                result.append(now.reduce("", +))
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
//    func countCombinations(_ cnt: Int) {
//        for order in sortedOrders {
//            let combination = combination(order, cnt)
//            for combi in combination {
//                dicts[cnt][combi, default: 0] += 1
//            }
//        }
//    }
//
//    var dicts = Array(repeating: [String:Int](), count: 21)
//    let sortedOrders = orders.map { $0.map { String($0) }.sorted() }
//    var result = [String]()
//
//    for cnt in course {
//        countCombinations(cnt)
//        for key in dicts[cnt].keys {
//            if dicts[cnt][key]! > 1 { result.append(key) }
//        }
//    }
//
//    return result.sorted()
//}

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
//    for i in 0..<sortedOrders.count {
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
//    for key in dict.keys {
//        if dict[key]! > 1 { result.append(key) }
//    }
//
//    // 2번 케이스만 통과가 안되는 상태
//
//    return result.filter { course.contains($0.count) }.sorted()
//}
//
////print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
////print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2, 3, 5]))
//print(solution(["XYZ", "XWY", "WXA"], [2, 3, 4]))
