//
//  20230531.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/31.
//

//struct Queue {
//    var index = 0
//    var data = [Int]()
//
//    var isEmpty: Bool {
//        index == data.count
//    }
//
//    mutating func push(_ int: Int) {
//        data.append(int)
//    }
//
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//// 플로이드-와샬로 풀이 -> n이 너무 커서... 시간초과
//func solution(_ n:Int, _ roads:[[Int]], _ sources:[Int], _ destination:Int) -> [Int] {
//
//    let INF = Int.max
//    var map = Array(repeating: Array(repeating: INF, count: n + 1), count: n + 1)
//
//    for i in 1...n {
//        map[i][i] = 0
//    }
//
//    for road in roads {
//        map[road[0]][road[1]] = 1
//        map[road[1]][road[0]] = 1
//    }
//
//    for k in 1...n {
//        for i in 1...n {
//            for j in 1...n {
//                if map[i][k] == INF || map[k][j] == INF { continue }
//                map[i][j] = min(map[i][j], map[i][k] + map[k][j])
//            }
//        }
//    }
//
//    return sources.map { map[$0][destination] == INF ? -1 : map[$0][destination] }
//}

//import Foundation
//
//// Swift로 최소힙 구현
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
// 다익스트라 풀이 = 시간초과
//func solution(_ n:Int, _ roads:[[Int]], _ sources:[Int], _ destination:Int) -> [Int] {
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
//
//    }
//
//    let INF = Int.max
//    var matrix = Array(repeating: Array(repeating: INF, count: n + 1), count: n + 1)
//
//    for i in 1...n {
//        matrix[i][i] = 0
//    }
//
//    for road in roads {
//        matrix[road[0]][road[1]] = 1
//        matrix[road[1]][road[0]] = 1
//    }
//
//    var result = [Int]()
//
//    for s in sources {
//        let distance = dijkstra(s, destination)
//        result.append(distance == INF ? -1 : distance)
//    }
//
//
//    return result
//}


//struct Queue {
//    var index = 0
//    var data = [(Int, Int)]()
//
//    var isEmpty: Bool {
//        index == data.count
//    }
//
//    mutating func push(_ int: (Int, Int)) {
//        data.append(int)
//    }
//
//    mutating func pop() -> (Int, Int) {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//// bfs
//func solution(_ n:Int, _ roads:[[Int]], _ sources:[Int], _ destination:Int) -> [Int] {
//
//    let INF = Int.max
//    var map = Array(repeating: [Int](), count: n + 1)
//
//    for road in roads {
//        map[road[0]].append(road[1])
//        map[road[1]].append(road[0])
//    }
//
//    func bfs(from: Int) -> Int {
//
//        if from == destination { return 0 }
//
//        var q = Queue()
//        var visited = Array(repeating: false, count: n + 1)
//        q.push((from, 0))
//        visited[from] = true
//
//        while !q.isEmpty {
//            let (now, cost) = q.pop()
//            if now == destination { return cost }
//            for next in map[now] {
//                if !visited[next] {
//                    q.push((next, cost + 1))
//                    visited[next] = true
//                }
//            }
//        }
//
//        return -1
//    }
//
//    return sources.map { bfs(from: $0) }
//}
//
//print(solution(3, [[1, 2], [2, 3]], [2, 3], 1))
//print(solution(5, [[1, 2], [1, 4], [2, 4], [2, 5], [4, 5]], [1, 3, 5], 5))
