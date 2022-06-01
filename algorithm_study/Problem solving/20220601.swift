//
//  20220601.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/01.
//

// cursor Queue

//struct Queue<T> {
//    var data = [T]()
//    var index = 0
//
//    var isEmpty: Bool {
//        return !(data.count > index)
//    }
//
//    mutating func enqueue(_ element: T) {
//        data.append(element)
//    }
//
//    mutating func dequeue() -> T {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}

// double stack queue

//struct Queue<T> {
//    var input = [T]()
//    var output = [T]()
//    
//    var isEmpty: Bool {
//        return input.isEmpty && output.isEmpty
//    }
//    
//    var count: Int {
//        return input.count + output.count
//    }
//    
//    mutating func enqueue(_ element: T) {
//        input.append(element)
//    }
//    
//    mutating func dequeue() -> T {
//        if output.isEmpty {
//            output = input.reversed()
//            input.removeAll()
//        }
//        return output.popLast()!
//    }
//}
