//
//  20220703.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/04.
//

//// 캠핑
//
//var cnt = 0
//
//while true {
//    cnt += 1
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let (L, P, V) = (input[0], input[1], input[2])
//    if L == 0 && P == 0 && V == 0 { break }
//    let quotient = V / P
//    let remainder = V % P < L ? V % P : L
//    print("Case \(cnt): \(quotient * L + remainder)")
//}

// 탑

//// 무대포 완전탐색
//let N = Int(readLine()!)!
//let towers = readLine()!.split(separator: " ").map { Int(String($0))! }
//var results = [Int]()
//
//outerLoop: for i in (0..<N).reversed() {
//    var now = i - 1
//    innerLoop: while now >= 0 {
//        if towers[now] > towers[i] {
//            results.append(now + 1)
//            continue outerLoop
//        }
//        now -= 1
//    }
//    results.append(0)
//}
//
//print(results.reversed().map{ String($0) }.joined(separator: " "))


//// stack을 활용한 풀이
//let N = Int(readLine()!)!
//let towers = readLine()!.split(separator: " ").map { Int(String($0))! }
//var results = Array(repeating: 0, count: N)
//var stack = [Int]()
//
//for i in (0..<N).reversed() {
//    while !stack.isEmpty && towers[i] > towers[stack.last!] {
//        let popped = stack.popLast()!
//        results[popped] = i + 1
//    }
//    stack.append(i)
//}
//
//print(results.map{ String($0) }.joined(separator: " "))
