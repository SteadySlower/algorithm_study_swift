//
//  20230224.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/24.
//

//func solution(_ order:[Int]) -> Int {
//
//    var stack = [Int]()
//    var now = 1
//    var count = 0
//
//    while now <= order.count {
//        stack.append(now)
//        while let last = stack.last,
//              last == order[count] {
//            _ = stack.popLast()!
//            count += 1
//        }
//        now += 1
//    }
//
//    return count
//}
//
//print(solution([4, 3, 1, 2, 5]))
//print(solution([5, 4, 3, 2, 1]))
