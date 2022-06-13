//
//  20220517.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/17.
//

// 전자레인지

//let A = 300
//let B = 60
//let C = 10
//
//var T = Int(readLine()!)!
//
//let a = T / A
//T %= A
//let b = T / B
//T %= B
//let c = T / C
//T %= C
//
//if T == 0 {
//    print(a, b, c)
//} else {
//    print(-1)
//}

// 뒤집기

//let string = Array(readLine()!)
//
//var now = string[0]
//var change = 0
//
//for i in 1..<string.count {
//    if now != string[i] {
//        now = string[i]
//        change += 1
//    }
//}
//
//if change % 2 == 0 {
//    print(change / 2)
//} else {
//    print((change + 1) / 2)
//}

//let price = Int(readLine()!)!
//var rem = 1000 - price
//
//var coins = [500, 100, 50, 10, 5, 1]
//var count = 0
//
//for coin in coins {
//    count += rem / coin
//    rem %= coin
//}
//
//print(count)

/*
 서로 다른 N개의 자연수의 합이 S -> 자연수 N의 최댓갓
 = 가장 작은 자연수 (1)부터 꽉꽉 채워넣어야 한다.
 
 등차수열의 합 공식을 활용하자: n * (n + 1) / 2
 */

//let S = Int(readLine()!)!
//
//var n = 0
//
//repeat {
//    n += 1
//} while S >= n * (n + 1) / 2
//
//print(n - 1)
