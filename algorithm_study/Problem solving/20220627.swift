//
//  20220626.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/27.
//

//// 2×n 타일링 2
//
//var cache = Array(repeating: -1, count: 1001)
//
//func f(_ n: Int) -> Int {
//    if n == 1 {
//        cache[n] = 1
//    }
//
//    if n == 2 {
//        cache[n] = 3
//    }
//
//    if cache[n] < 0 {
//        cache[n] = (f(n - 2) * 2 + f(n - 1)) % 10007
//    }
//
//    return cache[n]
//}
//
//print(f(Int(readLine()!)!))

//// 파도반 수열
//
//// f(n) = f(n - 1) + f(n - 5)
//
//var cache = Array(repeating: -1, count: 101)
//
//func f(_ n: Int) -> Int {
//    if n > 0 && n < 4 {
//        cache[n] = 1
//    }
//
//    if n >= 4 && n <= 5 {
//        cache[n] = 2
//    }
//
//    if cache[n] < 0 {
//        cache[n] = f(n - 1) + f(n - 5)
//    }
//
//    return cache[n]
//}
//
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let N = Int(readLine()!)!
//    print(f(N))
//}

//// 다리 놓기
//
///*
//   1 2 3 4 5
// 1 1 2 3 4 5
// 2 x 1 3 6 10
// 3 x x 1 (1 + 3) (6 + 4)
// 4 x x x 1 (1 + 4)
//
// f(n, m) = f(n, m - 1) + f(n - 1, m - 1)
// */
//
//var cache = Array(repeating: Array(repeating: -1, count: 30), count: 30)
//
//func f(_ n: Int, _ m: Int) -> Int {
//    if n == 1 {
//        cache[n][m] = m
//    }
//
//    if n == m {
//        cache[n][m] = 1
//    }
//
//    if cache[n][m] < 0 {
//        cache[n][m] = f(n, m - 1) + f(n - 1, m - 1)
//    }
//
//    return cache[n][m]
//}
//
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    print(f(input[0], input[1]))
//}
