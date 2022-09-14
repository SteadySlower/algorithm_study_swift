//
//  20220914.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/14.
//

//// Queue 구현
//struct Queue {
//    var index = 0
//    var queue = [Int]()
//
//    var isEmpty: Bool {
//        queue.count == index
//    }
//
//    mutating func push(_ t: Int) {
//        queue.append(t)
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
//func solution(_ n:Int, _ edge:[[Int]]) -> Int {
//
//    // 속도가 중요하므로 인접리스트를 사용
//    var edgeList = Array(repeating: [Int](), count: n + 1)
//
//    // 인접 리스트에 간선 저장
//    for e in edge {
//        let from = e[0]
//        let to = e[1]
//        edgeList[from].append(to)
//        edgeList[to].append(from)
//    }
//
//    // bfs를 위한 Queue
//    var queue = Queue()
//    // node 1에서부터의 거리를 저장하는 배열
//    var distance = Array(repeating: -1, count: n + 1)
//
//    // 1번 node queue에 넣고 거리 저장
//    queue.push(1)
//    distance[1] = 0
//
//    // bfs 실행하면서 거리 저장
//    while !queue.isEmpty {
//        let now = queue.pop()
//        for i in edgeList[now] {
//            if distance[i] < 0 {
//                queue.push(i)
//                distance[i] = distance[now] + 1
//            }
//        }
//    }
//
//    // max()는 O(N)이므로 filter 밖에서 해주어야 함!
//    let max = distance.max()!
//
//    // 거리의 최댓값의 갯수를 리턴
//    return distance.filter { $0 == max }.count
//}

// 아래 풀이 시간초과 나서 인접배열이 아니라 인접리스트로

//func solution(_ n:Int, _ edge:[[Int]]) -> Int {
//
//    var matrix = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
//    var distance = Array(repeating: 0, count: n + 1)
//
//    for e in edge {
//        let from = e[0]
//        let to = e[1]
//        matrix[from][to] = true
//        matrix[to][from] = true
//    }
//
//    var queue = Queue()
//    var visited = Array(repeating: false, count: n + 1)
//    queue.push((1, 0))
//    visited[1] = true
//
//    while !queue.isEmpty {
//        let now = queue.pop()
//        for i in 1...n {
//            if !visited[i] && matrix[now.0][i] {
//                queue.push((i, now.1 + 1))
//                visited[i] = true
//                distance[i] = now.1 + 1
//            }
//        }
//    }
//
//
//    let max = distance.max()!
//    var cnt = 0
//
//    for d in distance {
//        if d == max { cnt += 1 }
//    }
//
//    return cnt
//}
