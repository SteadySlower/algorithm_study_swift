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

// 수열 정렬

/*
 i = 0 1 2
 A = 2 3 1
 P = 1 2 0
 B = 3 2 1
 */

let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
var sorted = input.sorted(by: >)
print(sorted)
