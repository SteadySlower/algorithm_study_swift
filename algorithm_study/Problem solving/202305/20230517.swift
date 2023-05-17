//
//  20230517.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/17.
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
//    // 최소힙 선언
//    var heap = MinHeap<Int>()
//    var hp = n // 현재 체력
//    var k = k // 치료 (= 무적권) 횟수
//
//    for i in 0..<enemy.count {
//        // 일단 데미지를 받는다.
//        heap.insert(-enemy[i])
//        hp -= enemy[i]
//
//        // 체력이 0 이하로 떨어지면
//        if hp < 0 {
//            // 치료 횟수가 남은 경우
//            if k > 0 {
//                // 현재까지 받은 데미지 중에 가장 높은 데미지를 치료
//                hp += -heap.pop()!
//                k -= 1
//            } else {
//                // 치료 횟수가 더 이상 없으면 현재까지 라운드를 리턴
//                return i
//            }
//        }
//    }
//
//    // 반복문을 모두 순회한 경우 = 라운드를 다 깸
//    return enemy.count
//}
//
//print(solution(7, 3, [4, 2, 4, 5, 3, 3, 1]))
//print(solution(2, 4, [3, 3, 3, 3]))
