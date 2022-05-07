//
//  20220507.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/07.
//

import Foundation

//// https://www.acmicpc.net/problem/1110
//
//let N = Int(readLine()!)!
//
//extension Int {
//    func addDigits() -> Int {
//        let digitArray = String(self).map { Int(String($0))! }
//        return digitArray.reduce(0, +)
//    }
//    
//    func lastDigit() -> Int {
//        let digitArray = String(self).map { Int(String($0))! }
//        return digitArray.last!
//    }
//}
//
//var tries = 0
//var newNum = N
//
//while true {
//    tries += 1
//    if newNum < 10 {
//        newNum = newNum * 10 + newNum
//    } else {
//        newNum = newNum.lastDigit() * 10 + newNum.addDigits().lastDigit()
//    }
//
//    if N == newNum {
//        print(tries)
//        break
//    }
//}

//func addDigit(num: Int) -> Int {
//    let a = num / 10
//    let b = num % 10
//    let c = (a + b) % 10
//    return b * 10 + c
//}
//
//let N = Int(readLine()!)!
//
//var cycle = 0
//var newN = N
//
//repeat {
//    cycle += 1
//    newN = addDigit(num: newN)
//} while (newN != N)
//
//print(cycle)

//import Foundation
//
//// https://www.acmicpc.net/problem/10818
//
//let N = Int(readLine()!)!
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//print(nums.min()!, nums.max()!)
//
//// sort하면 O(nlogn), 그냥 최대값은 O(n)

//var nums = [Int]()
//
//for _ in 0..<9 {
//    let num = Int(readLine()!)!
//    nums.append(num)
//}
//
//let max = nums.max()!
//
//print(max)
//print(nums.firstIndex(of: max)! + 1)
