//
//  20220630.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/30.
//

//// 동전 1
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let n = input[0], k = input[1]
//
//var cache = Array(repeating: 0, count: k + 1)
//var check = Array(repeating: false, count: k + 1)
//var coins = [Int]()
//
//for _ in 0..<n {
//    let coin = Int(readLine()!)!
//    coins.append(coin)
//}
//
//cache[0] = 1
//
//for coin in coins {
//    for i in coin...k {
//        if i - coin >= 0 {
//            cache[i] += cache[i - coin]
//        }
//    }
//}
//
//print(cache[k])

