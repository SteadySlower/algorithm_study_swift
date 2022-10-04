//
//  20221004.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/04.
//

//func gcd(_ a: Int, _ b: Int) -> Int {
//    if b == 0 {
//        return a
//    } else {
//        return gcd(b, a % b)
//    }
//}
//
//func lcm(_ a: Int, _ b: Int) -> Int {
//    a * b / gcd(a, b)
//}
//
//func solution(_ arr:[Int]) -> Int {
//    return arr.reduce(1) { lcm($0, $1) }
//}

//func solution(_ s:String) -> Int {
//
//    var stack = [Character]()
//
//    for c in s {
//        if stack.isEmpty {
//            stack.append(c)
//            continue
//        }
//
//        if stack.last! == c {
//            _ = stack.popLast()!
//        } else {
//            stack.append(c)
//        }
//    }
//
//    return stack.isEmpty ? 1 : 0
//}
