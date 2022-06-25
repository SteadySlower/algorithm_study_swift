//
//  20220625.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/25.
//

//// 피보나치 함수
//var cache = Array(repeating: (-1, -1), count: 41)
//
//func f(_ n: Int) -> (Int, Int) {
//
//    if n == 0 {
//        cache[n] = (1, 0)
//    } else if n == 1 {
//        cache[n] = (0, 1)
//    }
//
//    if cache[n].0 < 0 {
//        cache[n] = (f(n - 2).0 + f(n - 1).0, f(n - 2).1 + f(n - 1).1)
//    }
//
//    return cache[n]
//}
//
//let T = Int(readLine()!)!

//for _ in 0..<T {
//    let N = Int(readLine()!)!
//    print(f(N).0, f(N).1)
//}

// 이친수
//var cache = Array(repeating: -1, count: 91)
//
//func f(_ n: Int) -> Int {
//    if n == 1 || n == 2 {
//        cache[n] = 1
//    }
//    
//    if cache[n] < 0 {
//        cache[n] = f(n - 2) + f(n - 1)
//    }
//    
//    return cache[n]
//}
//
//print(f(Int(readLine()!)!))

//var zero = Array(repeating: -1, count: 91)
//var one = Array(repeating: -1, count: 91)
//
//func f0(_ n: Int) -> Int {
//    if n == 1 {
//        zero[n] = 0
//    } else if n == 2 {
//        zero[n] = 1
//    }
//
//    if zero[n] < 0 {
//        zero[n] = f0(n - 1) + f1(n - 1)
//    }
//
//    return zero[n]
//}
//
//func f1(_ n: Int) -> Int {
//    if n == 1 {
//        one[n] = 1
//    } else if n == 2 {
//        one[n] = 0
//    }
//
//    if one[n] < 0 {
//        one[n] = f0(n - 1)
//    }
//
//    return one[n]
//}
//
//let N = Int(readLine()!)!
//
//print(f0(N) + f1(N))
