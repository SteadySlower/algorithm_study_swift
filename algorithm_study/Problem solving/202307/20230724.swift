//
//  20230724.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/24.
//

//struct Queue<T> {
//    private var index = 0
//    private var array = [T]()
//
//    var isEmpty: Bool {
//     index == array.count
//    }
//
//    mutating func pop() -> T {
//     defer {
//         index += 1
//     }
//     return array[index]
//    }
//
//    mutating func push(_ t: T) {
//     array.append(t)
//    }
//}
//
//func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
//
//    let dist = dist.sorted(by: >)
//    var set = Set<[Int]>()
//    set.insert(weak)
//
//    for i in 0..<dist.count {
//        let d = dist[i]
//        var newSet = Set<[Int]>()
//        // 남은 취약 지점에서 시작
//        for weak in newSet {
//            for w in weak {
//                let start = w
//                let end = (start + d) % n
//                let newWeak = weak.filter { !(start < end ? (start...end) ~= $0 : $0 <= end || start...n ~= $0) }
//                if newWeak.isEmpty { return i + 1 }
//                newSet.insert(newWeak)
//            }
//        }
//        set = newSet
//    }
//
//    return -1
//}
//
