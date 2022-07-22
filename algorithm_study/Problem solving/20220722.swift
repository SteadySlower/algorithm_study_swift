//
//  20220722.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/22.
//

//// 수 이어 쓰기 1
//let N = Int(readLine()!)!
//var count = 0
//var i = 1
//
//while i <= N {
//    count += N - (i - 1)
//    i *= 10
//}
//
//print(count)
//import Foundation
//
//func tenPowerOf(_ n: Int) -> Int {
//    Int(pow(Double(10), Double(n)))
//}
//
//var N = Int(readLine()!)!
//var count = 0
//var length = 1
//
//while true {
//    if N - 9 * tenPowerOf(length - 1) > 0 {
//        count += 9 * tenPowerOf(length - 1) * length
//        N -= 9 * tenPowerOf(length - 1)
//        length += 1
//    } else {
//        count += N * length
//        print(count)
//        break
//    }
//}


//// 수열 정렬
//
///*
// B[P[i]] = A[i]
// A의 i를 B의 어디에 두어야 비내림차순이 되는가?
//
// A: 2 3 1
// P: 1 2 0 -> A의 index가 아니고 B의 인덱스
// B: 1 2 3
//
// A: 2 1 3 1
// B: 1 1 2 3
// */
//
//let N = Int(readLine()!)!
//let A = readLine()!.split(separator: " ").map { Int(String($0))! }
//var B = A.sorted { a, b in a <= b }
//
//for a in A {
//    let i = B.firstIndex(of: a)!
//    B[i] = 0
//    print(i, terminator: " ")
//}
