//
//  20220509.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/09.
//

//let N = Double(readLine()!)!
//
//let scores = readLine()!.split(separator: " ").map { Double(String($0))! }
//
//let max = scores.max()!
//
//let result = ((scores.reduce(0, +) / max) * 100.0) / N
//
//print(result)

//(0..<T).forEach { _ in
//    let input = readLine()!
//    var finalScore = 0
//    var currentScore = 0
//    for char in input {
//        if char == "O" {
//            currentScore += 1
//            finalScore += currentScore
//        } else {
//            currentScore = 0
//        }
//    }
//    print(finalScore)
//}

//let T = Int(readLine()!)!
//
//(0..<T).forEach { _ in
//    print(readLine()!.split(separator: "X").reduce(0) {
//        $0 + ($1.count * ($1.count + 1)) / 2
//    })
//}

//import Foundation
//
//let C = Int(readLine()!)!
//
//(0..<C).forEach { _ in
//    var input = readLine()!.split(separator: " ").map { Double(String($0))! }[0...]
//    let count = input.popFirst()!
//    let avg = input.reduce(0, +) / count
//    let overAvg = Double(input.filter({ $0 > avg }).count)
//    print(String(format: "%0.3f", round(overAvg / count * 100000) / 1000) + "%")
//}

//func d(_ n: Int) -> Int {
//    let digits = String(n).map { Int(String($0))! }
//    return n + digits.reduce(0, +)
//}
//
//var check = Array(repeating: false, count: 10001)
//
//for n in 1..<10001 {
//    let d = d(n)
//    if d < 10001 {
//        check[d] = true
//    }
//}
//
//for i in (1..<check.count) {
//    if !check[i] { print(i) }
//}
