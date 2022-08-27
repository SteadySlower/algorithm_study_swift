//
//  20220827.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/27.
//

//import Foundation
//
//func customSort(_ lhs: Int, _ rhs: Int) -> Bool {
//    var l = lhs
//    var r = rhs
//    var lArray = [Int]()
//    var rArray = [Int]()
//
//    while l > 0 {
//        lArray.append(l % 10)
//        l /= 10
//    }
//
//    while r > 0 {
//        rArray.append(r % 10)
//        r /= 10
//    }
//
//    lArray = lArray.isEmpty ? [0] : lArray.reversed()
//    rArray = rArray.isEmpty ? [0] : rArray.reversed()
//
//    var i = 0
//
//    while i < min(lArray.count, rArray.count) {
//        if lArray[i] > rArray[i] {
//            return true
//        } else if lArray[i] < rArray[i] {
//            return false
//        } else {
//            i += 1
//        }
//    }
//
//    if lArray.count > rArray.count {
//        for j in i..<lArray.count {
//            if lArray[j] > rArray[i - 1] {
//                return true
//            } else if lArray[j] < rArray[i - 1] {
//                return false
//            }
//        }
//        return lArray[0] < rArray[i - 1]
//    } else if lArray.count < rArray.count {
//        for j in i..<rArray.count {
//            if lArray[i - 1] > rArray[j] {
//                return true
//            } else if lArray[i - 1] < rArray[j] {
//                return false
//            }
//        }
//        return lArray[i - 1] < rArray[0]
//    } else {
//        return false
//    }
//}
//
//func solution(_ numbers:[Int]) -> String {
//    let sorted = numbers.sorted(by: { customSort($0, $1) })
//
//    if sorted[0] == 0 { return "0" }
//
//    return sorted.map { String($0) }.reduce("", +)
//
//}
//
//print(solution([31100000, 310]))

//👍 정답 코드

//func solution(_ numbers:[Int]) -> String {
//    let sorted = numbers.sorted(by: { Int("\($0)\($1)")! > Int("\($1)\($0)")! })
//    if sorted[0] == 0 {
//        return "0"
//    }
//
//    return sorted.reduce("", { $0 + "\($1)" })
//}

//func solution(_ numbers:[Int]) -> String {
//    let strings = numbers.map { String($0) }
//    let sorted = strings.sorted(by: { Int($0 + $1)! > Int($1 + $0)! })
//
//    if sorted[0] == "0" { return "0" }
//
//    return sorted.map { String($0) }.reduce("", +)
//}
//
//print(solution([0, 0, 0]))
//
//func solution(_ numbers:[Int]) -> String {
//    let strings = numbers.map { String($0) }
//    let sorted = strings.sorted(by: { String(repeating: $0, count: 3) > String(repeating: $1, count: 3)  })
//
//    if sorted[0] == "0" { return "0" }
//
//    return sorted.reduce("", +)
//}
//
//print(solution([300, 30]))
