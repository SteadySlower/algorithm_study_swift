//
//  20230516.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/16.
//

//// 최소힙 구현
//import Foundation
//
//struct MinHeap<T: Comparable> {
//    var heap: [T] = []
//
//    var isEmpty: Bool {
//        return heap.count <= 1 ? true : false
//    }
//
//    init() {}
//
//    init(_ element: T) {
//        heap.append(element)
//        heap.append(element)
//    }
//
//    mutating func insert(_ element: T) {
//        if heap.isEmpty {
//            heap.append(element)
//            heap.append(element)
//            return
//        }
//
//        heap.append(element)
//
//        func isMoveUp(_ insertIndex: Int) -> Bool {
//            if insertIndex <= 1 {
//                return false
//            }
//
//            let parentIndex = insertIndex / 2
//            return heap[insertIndex] < heap[parentIndex] ? true : false
//        }
//
//        var insertIndex = heap.count - 1
//
//        while isMoveUp(insertIndex) {
//            let parentIndex = insertIndex / 2
//            heap.swapAt(insertIndex, parentIndex)
//            insertIndex = parentIndex
//        }
//    }
//
//    enum moveDownDirection { case left, right, none }
//
//    mutating func pop() -> T? {
//        if heap.count <= 1 {
//            return nil
//        }
//
//        let returnData = heap[1]
//        heap.swapAt(1, heap.count - 1)
//        heap.removeLast()
//
//        func moveDown(_ poppedIndex: Int) -> moveDownDirection {
//            let leftChildIndex = poppedIndex * 2
//            let rightChildIndex = leftChildIndex + 1
//
//            if leftChildIndex >= heap.count {
//                return .none
//            }
//
//            if rightChildIndex >= heap.count {
//                return heap[leftChildIndex] < heap[poppedIndex] ? .left : .none
//            }
//
//            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
//                return .none
//            }
//
//            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
//                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
//            }
//
//            if (heap[leftChildIndex] < heap[poppedIndex]) || (heap[rightChildIndex] < heap[poppedIndex]) {
//                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
//            }
//
//            return .none
//        }
//
//        var poppedIndex = 1
//        while true {
//            switch moveDown(poppedIndex) {
//            case .none:
//                return returnData
//            case .left:
//                let leftChildIndex = poppedIndex * 2
//                heap.swapAt(poppedIndex, leftChildIndex)
//                poppedIndex = leftChildIndex
//            case .right:
//                let rightChildIndex = (poppedIndex * 2) + 1
//                heap.swapAt(poppedIndex, rightChildIndex)
//                poppedIndex = rightChildIndex
//            }
//        }
//    }
//}
//
//
//func solution(_ n:Int, _ k:Int, _ enemy:[Int]) -> Int {
//
//    var heap = MinHeap<Int>()
//    var hp = n
//    var k = k
//
//    for i in 0..<enemy.count {
//        if hp - enemy[i] > 0 {
//            heap.insert(-enemy[i])
//            hp -= enemy[i]
//        } else if k > 0 {
//            if let popped = heap.pop() {
//                let big = enemy[i] > -popped ? enemy[i] : -popped
//                let small = enemy[i] < -popped ? enemy[i] : -popped
//                hp += (big - small)
//                heap.insert(-small)
//            }
//            k -= 1
//        } else {
//            return i
//        }
//    }
//
//    return enemy.count
//}
//
//print(solution(7, 3, [4, 2, 4, 5, 3, 3, 1]))
//print(solution(2, 4, [3, 3, 3, 3]))
