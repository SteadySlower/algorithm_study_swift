//
//  20220523.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/23.
//

// 블랙잭

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//let cards = readLine()!.split(separator: " ").map { Int(String($0))! }
//var result = 0
//
//for i in 0..<cards.count {
//    for j in (i + 1)..<cards.count {
//        for k in (j + 1)..<cards.count {
//            let sum = cards[i] + cards[j] + cards[k]
//            if (M - sum) >= 0 && M - sum < M - result {
//                result = sum
//            }
//        }
//    }
//}
//
//print(result)

// 분해합

//func decompositionSum(_ n: Int) -> Int {
//    let digits = String(n).map { Int(String($0))! }
//    return n + digits.reduce(0, +)
//}
//
//let N = Int(readLine()!)!
//var result = 0
//
//for i in 1..<N {
//    if decompositionSum(i) == N {
//        result = i
//        break
//    }
//}
//
//print(result)


//let N = Int(readLine()!)!
//
//// 튜플의 형태로 입력을 받는다.
//var people = [(Int, Int)]()
//
//for _ in 0..<N {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    people.append((input[0], input[1]))
//}
//
//var ranks = [Int]()
//
//for person1 in people {
//    var rank = 1
//    for person2 in people {
//        // 몸무게와 키가 모두 작으면 등수에 + 1
//        if person1.0 < person2.0 && person1.1 < person2.1 {
//            rank += 1
//        }
//    }
//    ranks.append(rank)
//}
//
//ranks.forEach { rank in
//    print(rank, terminator: " ")
//}
