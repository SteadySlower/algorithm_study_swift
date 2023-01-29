//
//  20230129.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/29.
//

//import Foundation
//
//struct MinHeap<T: Comparable> {
//    var heap: [T] = []
//
//    var isEmpty: Bool {
//        return heap.count <= 1 ? true : false
//    }
//
//
//    init() {}
//
//    init(_ element: T) {
//        heap.append(element)
//        heap.append(element)
//    }
//
//    mutating func insert(_ element: T) {
//
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
//
//    enum moveDownDirection { case left, right, none }
//
//
//    mutating func pop() -> T? {
//
//        if heap.count <= 1 {
//            return nil
//        }
//
//        let returnData = heap[1]
//        heap.swapAt(1, heap.count - 1)
//        heap.removeLast()
//
//        func moveDown(_ poppedIndex: Int) -> moveDownDirection {
//
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
//struct Node: Comparable {
//
//    let node: Int
//    let distance: Int
//
//    static func < (lhs: Node, rhs: Node) -> Bool {
//        return lhs.distance < rhs.distance
//    }
//
//}
//
//
//func solution(_ n:Int, _ s:Int, _ a:Int, _ b:Int, _ fares:[[Int]]) -> Int {
//
//    // 다익스트라 알고리즘 (from -> to의 최소 비용)
//    func dijkstra(_ from: Int, _ to: Int) -> Int {
//
//        var distances = Array(repeating: INF, count: n + 1)
//        var heap = MinHeap<Node>()
//
//        heap.insert(Node(node: from, distance: 0))
//        distances[from] = 0
//
//        while !heap.isEmpty {
//            guard let popped = heap.pop() else { break }
//            let now = popped.node
//            let dist = popped.distance
//
//            if distances[now] < dist { continue }
//
//            for i in 1...n {
//                if matrix[now][i] < INF {
//                    let cost = dist + matrix[now][i]
//                    if cost < distances[i] {
//                        distances[i] = cost
//                        heap.insert(Node(node: i, distance: cost))
//                    }
//                }
//            }
//        }
//
//        return distances[to]
//    }
//
//    // 길 없음 = 비용 무한대
//    let INF = Int.max
//
//    var matrix = Array(repeating: Array(repeating: INF, count: n + 1), count: n + 1)
//
//    // 자기 자신으로 가는 루트 비용 0으로 초기화
//    for i in 1...n {
//        matrix[i][i] = 0
//    }
//
//    // 각 node 사이의 cost 입력
//    for fare in fares {
//        let c = fare[0]
//        let d = fare[1]
//        let f = fare[2]
//        matrix[c][d] = f
//        matrix[d][c] = f
//    }
//
//    // 환승을 하지 않는 경우와 환승을 하는 경우의 비용 비교
//    var ans = dijkstra(s, a) + dijkstra(s, b)
//
//    // i를 거쳐 환승하는 경우의 cost를 구하고 ans와 비교
//    for i in 1...n {
//        let costAB = dijkstra(s, i)
//        let costA = dijkstra(i, a)
//        let costB = dijkstra(i, b)
//        guard costAB < INF && costA < INF && costB < INF else { continue }
//        ans = min(ans, costAB + costA + costB)
//    }
//
//    return ans
//}
//
//print(solution(6, 4, 6, 2, [[4, 1, 10], [3, 5, 24], [5, 6, 2], [3, 1, 41], [5, 1, 24], [4, 6, 50], [2, 4, 66], [2, 3, 22], [1, 6, 25]]))
//
//print(solution(6, 4, 5, 6, [[2, 6, 6], [6, 3, 7], [4, 6, 7], [6, 5, 11], [2, 5, 12], [5, 3, 20], [2, 4, 8], [4, 3, 9]]))
//
