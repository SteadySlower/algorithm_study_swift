//
//  20220929.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/29.
//

//func solution(_ n:Int, _ words:[String]) -> [Int] {
//
//    var set = Set<String>()
//
//    for i in 0..<words.count {
//        if set.contains(words[i]) {
//            return [i % n + 1, i / n + 1]
//        } else if i > 0 && words[i - 1].last! != words[i].first! {
//            return [i % n + 1, i / n + 1]
//        } else {
//            set.insert(words[i])
//        }
//    }
//
//    return [0, 0]
//}

//func solution(_ n:Int) -> Int {
//
//    var dp = Array(repeating: -1, count: n + 1)
//
//    func fibo(_ n: Int) -> Int {
//        if n == 0 || n == 1 {
//            dp[n] = n
//        }
//
//        if dp[n] < 0 {
//            dp[n] = (fibo(n - 2) + fibo(n - 1)) % 1234567
//        }
//
//        return dp[n]
//    }
//
//    return fibo(n)
//}
//
//print(solution(3))
