//
//  20230223.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/23.
//

//func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
//
//    // 3가지 연산 정의 (반복문용)
//    let operations: [(Int) -> Int] = [
//        { x in x + n },
//        { x in x * 2 },
//        { x in x * 3 }
//    ]
//
//    // dp 배열 (index까지 가는데 최단 경로 저장)
//        // x가 1이고 y가 1000000, n이 1일 때
//        // 최대 답이 최대값이 999999이므로 기본값을 1000000로
//    var dp = Array(repeating: 1000000, count: y + 1)
//
//    // 출발점인 x의 초기값이 0
//    dp[x] = 0
//
//    for now in x..<y {
//        // 3가지 연산을 실시
//        for operation in operations {
//            let next = operation(now)
//            // 연산을 실시한 값이 y보다 작을 때 경로 저장 (연산을 통해 작아질 수는 없으므로)
//            if next <= y {
//                // 최단 경로 갱신
//                dp[next] = min(dp[next], dp[now] + 1)
//            }
//        }
//    }
//
//    // 최단경로가 기본값이면 (연산할 수 없음), 아니라면 답 리턴
//    return dp[y] == 1000000 ? -1 : dp[y]
//}

//// swift로 큐 구현
//struct Queue {
//
//    var index = 0
//    var queue = [(Int, Int)]()
//
//    var isEmpty: Bool {
//        queue.count ==  index
//    }
//
//    mutating func push(_ new: (Int, Int)) {
//        queue.append(new)
//    }
//
//    mutating func pop() -> (Int, Int) {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
//    // 반복문 내에서 사용할 연산 배열
//    let operations: [(Int) -> Int] = [
//        { x in x + n },
//        { x in x * 2 },
//        { x in x * 3 }
//    ]
//
//    // bfs 구현
//    var queue = Queue()
//    var visited = Array(repeating: false, count: y + 1)
//    queue.push((x, 0))
//    visited[x] = true
//
//
//    while !queue.isEmpty {
//        let (now, cost) = queue.pop()
//
//        // y에 도달하는 최단 경로 리턴
//        if now == y {
//            return cost
//        }
//
//        // 3가지 경로를 모두 완전 탐색
//        for operation in operations {
//            let new = operation(now)
//            if new <= y && !visited[new] {
//                queue.push((new, cost + 1))
//                visited[new] = true
//            }
//        }
//
//    }
//
//    // 최단 경로를 못 찾음
//    return -1
//}
//
//print(solution(10, 40, 5))
//print(solution(10, 40, 30))
//print(solution(2, 5, 4))
