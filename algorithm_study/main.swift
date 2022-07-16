//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 문제가 너무 막막할 때는 작은 조각으로 나누어서 구현하자!
 다 구해놓고 세려고 하지말고 세면서 구하자!
 이해 안되면 쓰던가 그려보자!
 */

// 초콜릿 쪼개기

/*
 1 1 = 0
 2 1 = 1
 1 2 = 1
 1 3 = 2
 3 1 = 2
 2 2 = 1 + 1 + 1
 1 4
 2 3
 3 2
 4 1
 
   0
  1 1
 2 3 2
3 6 6 3
 */

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var cache = Array(repeating: Array(repeating: -1, count: M + 1), count: N + 1)

func dp(_ i: Int, _ j: Int) -> Int {
    if i < 1 || j < 1 {
        return 0
    }
    
    if i > N || j > M  {
        return 0
    }
    
    if i == 1 {
        return j - 1
    }
    
    if j == 1 {
        return i - 1
    }
    
    if cache[i][j] < 0 {
        let d = i / 2
        cache[i][j] = dp(i - d, j) + dp(d, j) + 1
    }
    
    return cache[i][j]
}

print(dp(N, M))
