//
//  20230721.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/21.
//

/*
 
struct Queue<T> {
 private var index = 0
 private var array = [T]()
 
 var isEmpty: Bool {
     index == array.count
 }
 
 mutating func pop() -> T {
     defer {
         index += 1
     }
     return array[index]
 }
 
 mutating func push(_ t: T) {
     array.append(t)
 }
 
}



func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
 
 func rotateClockwise(from: Int, amount: Int) -> [Int] {
     var result = Array(repeating: from, count: amount + 1)
     
     for i in 0...amount {
         result[i] += i
     }
     
     return result.map { $0 >= n ? $0 - n : $0 }
 }
 
 func rotateCounterClockwise(from: Int, amount: Int) -> [Int] {
     var result = Array(repeating: from, count: amount + 1)
     
     for i in 0...amount {
         result[i] -= i
     }
     
     return result.map { $0 < 0 ? $0 + n : $0 }
 }
 
 func substractArray(from: Set<Int>, of: [Int]) -> Set<Int> {
     var result = from
     
     for num in of {
         result.remove(num)
     }
     
     return result
 }
 
 let dist = dist.sorted(by: >)
 var queue = Queue<(Set<Int>, Int)>()
 queue.push((Set(weak), 0))
 
 while !queue.isEmpty {
     let now = queue.pop()
     let weak = now.0
     let index = now.1
     
     if weak.isEmpty {
         return index
     }
     
     if index == dist.count {
         continue
     }
     
     let d = dist[index]
     
     // 남은 취약 지점에서 시작
     for w in weak {
         let clockWise = rotateClockwise(from: w, amount: d)
         let clockWeak = substractArray(from: weak, of: clockWise)
         queue.push((clockWeak, index + 1))
         
         let counterClockWise = rotateCounterClockwise(from: w, amount: d)
         let counterClockWeak = substractArray(from: weak, of: counterClockWise)
         queue.push((counterClockWeak, index + 1))
     }
     
 }
 
 return -1
}
 
 */

//struct Queue<T> {
//    private var index = 0
//    private var array = [T]()
//
//    var isEmpty: Bool {
//        index == array.count
//    }
//
//    mutating func pop() -> T {
//        defer {
//            index += 1
//        }
//        return array[index]
//    }
//
//    mutating func push(_ t: T) {
//        array.append(t)
//    }
//
//}
//
//
//
//func solution(_ n:Int, _ weak:[Int], _ dist:[Int]) -> Int {
//
//    func rotateClockwise(weak: [Bool], from: Int, amount: Int) -> [Int] {
//        var result = weak
//
//        for i in from...(from + amount) {
//            let index = i >
//        }
//
//        return weak
//    }
//
//    func rotateCounterClockwise(from: Int, amount: Int) -> [Int] {
//        var result = Array(repeating: from, count: amount + 1)
//
//        for i in 0...amount {
//            result[i] -= i
//        }
//
//        return result.map { $0 < 0 ? $0 + n : $0 }
//    }
//
//    func substractArray(from: Set<Int>, of: [Int]) -> Set<Int> {
//        var result = from
//
//        for num in of {
//            result.remove(num)
//        }
//
//        return result
//    }
//
//    func check(_ now: [Bool]) -> Bool {
//        for w in weak {
//            if !now[w] { return false }
//        }
//        return true
//    }
//
//    let dist = dist.sorted(by: >)
//    let weak = Array(repeating: false, count: n)
//    var queue = Queue<([Bool], Int)>()
//    queue.push((weak, 0))
//
//    while !queue.isEmpty {
//        let now = queue.pop()
//        let weak = now.0
//        let index = now.1
//
//        if weak.isEmpty {
//            return index
//        }
//
//        if index == dist.count {
//            continue
//        }
//
//        let d = dist[index]
//
//        // 남은 취약 지점에서 시작
//        for i in 0..<weak.count {
//            if weak[i] { continue }
//            let clockWise = rotateClockwise(weak: weak, from: i, amount: d)
//            queue.push((clockWise, index + 1))
//
//            let counterClockWise = rotateCounterClockwise(from: w, amount: d)
//            let counterClockWeak = substractArray(from: weak, of: counterClockWise)
//            queue.push((counterClockWeak, index + 1))
//        }
//
//    }
//
//    return -1
//}
//
//print(solution(12, [1, 5, 6, 10], [1, 2, 3, 4]))
