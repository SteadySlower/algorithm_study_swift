//
//  20220511.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/11.
//

//print(readLine()!.split(separator: " ").count)

//let nums = readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }
//print(nums.max()!)

//let dic: [String : Int] = [
//    "ABC": 3,
//    "DEF": 4,
//    "GHI": 5,
//    "JKL": 6,
//    "MNO": 7,
//    "PQRS": 8,
//    "TUV": 9,
//    "WXYZ": 10,
//]
//
//func charToInt(char: Character) -> Int {
//    for key in dic.keys {
//        if key.contains(char) {
//            return dic[key]!
//        }
//    }
//    return 0
//}
//
//let times = readLine()!.map { charToInt(char: $0) }
//
//print(times.reduce(0, +))


//import Foundation
//
//let croatia = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
//
//var input = readLine()!
//
//croatia.forEach { croatia in
//    input = input.replacingOccurrences(of: croatia, with: "*")
//}
//
//print(input.count)

//func isGroupWord(word: String) -> Int {
//    var check = [Character]()
//    var before = Character("*")
//    for char in word {
//        if char == before {
//            continue
//        } else if check.contains(char) {
//            return 0
//        } else {
//            check.append(char)
//            before = char
//        }
//    }
//    return 1
//}
//
//let N = Int(readLine()!)!
//var result = 0
//
//for _ in 0..<N {
//    result += isGroupWord(word: readLine()!)
//}
//
//print(result)
