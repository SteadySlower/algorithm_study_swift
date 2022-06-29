//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 문제가 너무 막막할 때는 작은 조각으로 나누어서 구현하자!
 다 구해놓고 세려고 하지말고 세면서 구하자!
 */


// 동전 1

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]

var cache = Array(repeating: 0, count: k + 1)
var coins = [Int]()

for _ in 0..<n {
    let coin = Int(readLine()!)!
    coins.append(coin)
    cache[coin] = 1
}

for i in 1...k {
    if cache[i] != 0 {
        for coin in coins {
            if i + coin <= k {
                cache[i + coin] += cache[i]
            }
        }
    }
}

print(cache[k])




