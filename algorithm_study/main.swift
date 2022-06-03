//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

// 절대값 힙


//struct Pair: Comparable {
//    let absolute: Int
//    let origin: Int
//
//    init(_ n: Int) {
//        self.absolute = abs(n)
//        self.origin = n
//    }
//
//    static func < (lhs: Pair, rhs: Pair) -> Bool {
//        if lhs.absolute == rhs.absolute {
//            return lhs.origin < rhs.origin
//        } else {
//            return lhs.absolute < rhs.absolute
//        }
//    }
//}

typealias Pair = (Int, Int)

struct AbsoluteHeap {
    var heap = [Pair]()
    
    mutating func push(_ pair: Pair) {
        if heap.isEmpty {
            heap.append(pair)
            heap.append(pair)
            return
        }
        
        func isMoveUp(_ insertIndex: Int) -> Bool {
            if insertIndex <= 1 {
                return false
            }
            let parentIndex = insertIndex / 2
            return heap[insertIndex] < heap[parentIndex]
        }
        
        heap.append(pair)
        var insertIndex = heap.count - 1
        
        while isMoveUp(insertIndex) {
            let parentIndex = insertIndex / 2
            heap.swapAt(insertIndex, parentIndex)
            insertIndex = parentIndex
        }
    }
    
    enum moveDownDirection { case none, left, right }
    
    mutating func pop() -> Pair? {
        guard heap.count > 1 else { return nil }
        
        func moveDown(_ poppedIndex: Int) -> moveDownDirection {
            let leftChildIndex = poppedIndex * 2
            let rightChildIndex = leftChildIndex + 1
            
            if leftChildIndex >= heap.count {
                return .none
            }
            
            if rightChildIndex >= heap.count {
                return heap[poppedIndex] < heap[leftChildIndex] ? .none : .left
            }
            
            if (heap[poppedIndex] < heap[leftChildIndex]) && (heap[poppedIndex] < heap[rightChildIndex]) {
                return .none
            }
            
            if (heap[poppedIndex] > heap[leftChildIndex]) && (heap[poppedIndex] > heap[rightChildIndex]) {
                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
            }
            
            if heap[poppedIndex] > heap[leftChildIndex] || heap[poppedIndex] > heap[rightChildIndex] {
                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
            }
            
            return .none
        }
        
        let returnData = heap[1]
        heap.swapAt(1, heap.count - 1)
        heap.removeLast()
        var poppedIndex = 1
        
        while true {
            switch moveDown(poppedIndex) {
            case .none:
                return returnData
            case .left:
                let leftChildIndex = poppedIndex * 2
                heap.swapAt(poppedIndex, leftChildIndex)
                poppedIndex = leftChildIndex
            case .right:
                let rightChildIndex = poppedIndex * 2 + 1
                heap.swapAt(poppedIndex, rightChildIndex)
                poppedIndex = rightChildIndex
            }
        }
    }
}

let N = Int(readLine()!)!
var absoluteHeap = AbsoluteHeap()

for _ in 0..<N {
    let input = Int(readLine()!)!
    if input == 0 {
        let pair = absoluteHeap.pop()
        pair != nil ? print(pair!.1) : print(0)
    } else {
        absoluteHeap.push((abs(input), input))
    }
}
