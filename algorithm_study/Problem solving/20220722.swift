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



