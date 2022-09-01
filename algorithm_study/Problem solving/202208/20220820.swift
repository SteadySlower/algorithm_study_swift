//
//  20220820.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/20.
//

//// 기능 개발
//
//import Foundation
//
//struct Queue {
//    var index = 0
//    var queue: [Int]
//
//    var count: Int {
//        queue.count
//    }
//
//    var isEmpty: Bool {
//        return queue.count == index
//    }
//
//    var first: Int {
//        !self.isEmpty ? queue[index] : 0
//    }
//
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//
//    var queue = Queue(queue: progresses)
//    var result = [Int]()
//
//    while !queue.isEmpty {
//        while queue.first < 100 {
//            for i in 0..<queue.count {
//                queue.queue[i] += speeds[i]
//            }
//        }
//        var count = 0
//        while queue.first >= 100 {
//            _ = queue.pop()
//            count += 1
//        }
//
//        result.append(count)
//
//    }
//
//    return result
//}
//
//print(solution([93, 30, 55], [1, 30, 5]))
