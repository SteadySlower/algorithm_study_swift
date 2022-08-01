//
//  20220716.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/16.
//

//// 초콜릿 쪼개기
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//var cache = Array(repeating: Array(repeating: -1, count: M + 1), count: N + 1)
//
//func dp(_ i: Int, _ j: Int) -> Int {
//    if i < 1 || j < 1 {
//        return 0
//    }
//    
//    if i > N || j > M  {
//        return 0
//    }
//    
//    if i == 1 {
//        return j - 1
//    }
//    
//    if j == 1 {
//        return i - 1
//    }
//    
//    if cache[i][j] < 0 {
//        let d = i / 2
//        cache[i][j] = dp(i - d, j) + dp(d, j) + 1
//    }
//    
//    return cache[i][j]
//}
//
//print(dp(N, M))

//// 초콜릿 쪼개기
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//print(input[0] * input[1] - 1)
