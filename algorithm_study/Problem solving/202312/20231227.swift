//
//  20231227.swift
//  algorithm_study
//
//  Created by JW Moon on 12/27/23.
//

//// 처음에 완전 탐색으로 하려다가 망함
//
//struct Queue {
//    var index = 0
//    var data = [[String]]()
//
//    var isEmpty: Bool {
//        index == data.count
//    }
//
//    mutating func push(_ s: [String]) {
//        data.append(s)
//    }
//
//    mutating func pop() -> [String] {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//func checkIfPanlindrome(_ str: [String]) -> Bool {
//    var s = 0
//    var e = str.count - 1
//
//    while s < e {
//        if str[s] != str[e] {
//            return false
//        }
//        s += 1
//        e -= 1
//    }
//
//    return true
//}
//
//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//
//        func bfs(_ s: [String]) -> String {
//            var queue = Queue()
//            queue.push(s)
//
//            while !queue.isEmpty {
//                let now = queue.pop()
//                if checkIfPanlindrome(now) {
//                    return now.joined()
//                }
//                if now.count > 1 {
//                    queue.push(Array(now.dropFirst()))
//                    queue.push(Array(now.dropLast()))
//                }
//            }
//
//            return ""
//        }
//
//        return bfs(s.map { String($0) })
//    }
//}
//


//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//
//        let sArray = s.map { String($0) }
//
//        func expand(start: Int, end: Int) -> [String] {
//            var start = start
//            var end = end
//            while start >= 0
//                    && end < s.count
//                    && sArray[start] == sArray[end]
//            {
//                start -= 1
//                end += 1
//            }
//
//            return Array(sArray[(start + 1)..<end])
//        }
//
//        if sArray.count == 1 || sArray == sArray.reversed() {
//            return s
//        }
//
//        var result = [String]()
//
//        for i in 0..<sArray.count {
//            let expanded = expand(start: i, end: i)
//            if result.count < expanded.count {
//                result = expanded
//            }
//        }
//
//        for i in 0..<(sArray.count - 1) {
//            let expanded = expand(start: i, end: i + 1)
//            if result.count < expanded.count {
//                result = expanded
//            }
//        }
//
//        return result.joined()
//    }
//}
