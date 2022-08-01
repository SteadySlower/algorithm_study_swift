//
//  20220701.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/01.
//

// 신나는 함수 실행

// cache 선언
//var cache = Array(repeating: Array(repeating: Array(repeating: -1, count: 21), count: 21), count: 21)
//
//func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
//    if a <= 0 || b <= 0 || c <= 0 {
//        return 1
//    } else if a > 20 || b > 20 || c > 20 {
//        return w(20, 20, 20)
//    } else if a < b && b < c && cache[a][b][c] < 0 {
//        cache[a][b][c] = w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
//    } else if cache[a][b][c] < 0 {
//        cache[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
//    }
//    
//    return cache[a][b][c]
//}

//while true {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let (a, b, c) = (input[0], input[1], input[2])
//    if a == -1 && b == -1 && c == -1 { break }
//    print("w(\(a), \(b), \(c)) = \(w(a, b, c))")
//}

//// 방 배정하기
//
//var cache = Array(repeating: -1, count: 301)
//
//func f(_ n: Int) -> Int {
//    if n <= 0 {
//        return 0
//    }
//
//    if n == A || n == B || n == C {
//        cache[n] = 1
//    }
//
//    if cache[n] < 0 {
//        cache[n] = f(n - A) == 1 || f(n - B) == 1 || f(n - C) == 1 ? 1 : 0
//    }
//
//    return cache[n]
//}
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let (A, B, C, N) = (input[0], input[1], input[2], input[3])
//
//print(f(N))

////BABBA
//
//var cache = Array(repeating: (-1, -1), count: 46)
//
//func f(_ n: Int) -> (Int, Int) {
//    if n == 0 {
//        cache[0] = (1, 0)
//    }
//
//    if cache[n] == (-1, -1) {
//        cache[n] = (f(n - 1).1, f(n - 1).0 + f(n - 1).1)
//    }
//
//    return cache[n]
//}
//
//let result = f(Int(readLine()!)!)
//print(result.0, result.1)
