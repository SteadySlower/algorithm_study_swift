//
//  20220627.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/28.
//

//// 01타일
//
//var cache = Array(repeating: -1, count: 1000001)
//
//func f(_ n: Int) -> Int {
//    if n == 1 || n == 2 {
//        cache[n] = n
//    }
//
//    if cache[n] < 0 {
//        cache[n] = (f(n - 2) + f(n - 1)) % 15746
//    }
//
//    return cache[n]
//}
//
//print(f(Int(readLine()!)!))
