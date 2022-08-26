//
//  20220826.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/26.
//

//// N으로 표현
//
///*
// N을 8번만 사용한다는게 핵심!
//
// */
//
//import Foundation
//
//func add(_ x: Int, _ y: Int) -> Int {
//    x + y
//}
//
//func substract(_ x: Int, _ y: Int) -> Int {
//    x - y
//}
//
//func multiply(_ x: Int, _ y: Int) -> Int {
//    x * y
//}
//
//func divide(_ x: Int, _ y: Int) -> Int {
//    x / y
//}
//
//func solution(_ N:Int, _ number:Int) -> Int {
//    // 두 집합에 있는 숫자들을 사칙연산한 값들을 구하는 함수
//    func operateTwoSets(_ set1: Set<Int>, _ set2: Set<Int>, _ operation: (Int, Int) -> Int) -> Set<Int> {
//        var result = Set<Int>()
//
//        for x in set1 {
//            for y in set2 {
//                let number = operation(x, y)
//                if number >= 1 && number <= 32000 {
//                    result.insert(number)
//                }
//            }
//        }
//
//        return result
//    }
//
//    // 숫자 N을 n개 가지고 만들 수 있는 수를 구하는 함수
//    func canMakeNumbers(_ n: Int) -> Set<Int> {
//        var result = Set<Int>()
//        let operations = [add, substract, multiply, divide]
//
//        // 그냥 나열해서 쓴 수
//        result.insert(Int(String(repeating: "\(N)", count: n))!)
//
//        // 사칙연산한 수
//        guard n != 1 else { return result }
//
//        for i in 1...(n - 1) {
//            for operation in operations {
//                result = result.union(operateTwoSets(sets[i], sets[n - i], operation))
//            }
//        }
//        return result
//    }
//
//    var sets = Array(repeating: Set<Int>(), count: 9)
//
//    for i in 1...8 {
//        sets[i] = canMakeNumbers(i)
//    }
//
//    for i in 1...8 {
//        if sets[i].contains(number) {
//            return i
//        }
//    }
//
//    return -1
//}
