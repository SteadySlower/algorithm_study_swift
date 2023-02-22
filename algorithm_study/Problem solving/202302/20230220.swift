//
//  20230218.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/20.
//

//extension Array where Element == Int {
//    func canPop(_ now: Int) -> Bool {
//        if let last = self.last {
//            return last == now
//        } else {
//            return false
//        }
//    }
//}
//
//func solution(_ order:[Int]) -> Int {
//
//    var temp = 0
//    var ans = 0
//
//    for i in 0..<(order.count - 1) {
//        if order[i] > order[i + 1] {
//            temp += 1
//        } else {
//            ans = max(ans, temp)
//            temp = 0
//        }
//    }
//
//    ans = max(ans, temp + 1)
//
//    return ans
//}
//
//// 직접 스택 구현해서 해야 함.
//
//print(solution([4, 3, 1, 2, 5]))
//print(solution([5, 4, 3, 2, 1]))
