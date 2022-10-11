//
//  20221011.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/11.
//

/*
 
 초기값: f(1) = 1
 
 점화식
 n이 짝수 일 때 = f(n / 2)
 n이 홀수 일 때 = f((n - 1) / 2) + 1
 
 */

//// bottom - up 방식의 풀이: O(N)
//func solution(_ n:Int) -> Int {
//    var cache = Array(repeating: 0, count: n + 1)
//
//    func dp(_ i: Int) -> Int {
//
//        if i == 1 {
//            return 1
//        }
//
//        if cache[i] == 0 {
//            if i % 2 == 0 {
//                cache[i] = dp(i / 2)
//            } else {
//                cache[i] = dp((i - 1) / 2) + 1
//            }
//        }
//
//        return cache[i]
//    }
//
//    return dp(n)
//}

//// top - down 방식의 풀이: O(logN)
//
//func solution(_ n:Int) -> Int {
//    var i = n
//    var cost = 0
//
//    while i > 0 {
//        if i % 2 == 0 {
//            i /= 2
//        } else {
//            i -= 1
//            cost += 1
//        }
//    }
//
//    return cost
//}
