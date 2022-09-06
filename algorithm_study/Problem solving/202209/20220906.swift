//
//  20220906.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/06.
//

//func solution(_ n:Int, _ costs:[[Int]]) -> Int {
//    // 부모 node 구하는 함수
//    func getParent(of i: Int) -> Int {
//        if parent[i] == i {
//            return i
//        }
//        return getParent(of: parent[i])
//    }
//
//    // 부모 node를 합치는 함수 (= 섬의 연결)
//    func unionParent(_ a: Int, _ b: Int) {
//        let a = getParent(of: a)
//        let b = getParent(of: b)
//
//        if a < b {
//            parent[b] = a
//        } else {
//            parent[a] = b
//        }
//    }
//
//    var parent = Array(0..<n)
//    let costs = costs.sorted(by: { $0[2] < $1[2] })
//    var total = 0
//    var numOfConnection = 0
//
//    for cost in costs {
//        let from = cost[0], to = cost[1], money = cost[2]
//        // 섬이 연결되어 있는지 확인
//        if getParent(of: from) != getParent(of: to) {
//            total += money
//            numOfConnection += 1
//            unionParent(from, to)
//        }
//
//        // 섬을 연결한 갯수가 n - 1개이면 연결 끝
//        if numOfConnection == n - 1 { break }
//    }
//
//    return total
//}

//func solution(_ n:Int, _ costs:[[Int]]) -> Int {
//    // 섬들이 모두 연결되었는지 확인하는 함수
//    func isAllConnected() -> Bool {
//        // 내부에 dfs 구현
//        func dfs(_ now: Int) {
//            for i in 0..<n {
//                if matrix[now][i] && !visited[i] {
//                    visited[i] = true
//                    dfs(i)
//                }
//            }
//        }
//
//        // dfs를 실시한 횟수
//        var cnt = 0
//        // 방문 배열
//        var visited = Array(repeating: false, count: n)
//
//        // 방문하지 않은 node에서 dfs 실시
//        for i in 0..<n {
//            if !visited[i] {
//                cnt += 1
//                dfs(i)
//            }
//        }
//
//        // 섬이 모두 연결되어 있다면 dfs를 1번만 실시함.
//        return cnt == 1
//    }
//
//    // 두 섬이 이미 연결되어 있는지 확인하는 함수
//    func isAlreadyConnected(_ from: Int, _ to: Int) -> Bool {
//        // 방문 체크 배열
//        var visited = Array(repeating: false, count: n)
//
//        // stack으로 dfs 구현 (중간에 Bool을 리턴해야 하기 때문에)
//        var stack = [Int]()
//        stack.append(from)
//
//        while !stack.isEmpty {
//            let now = stack.popLast()!
//            for i in 0..<n {
//                if !visited[i] && matrix[now][i] {
//                    stack.append(i)
//                    visited[i] = true
//                    if i == to { return true } //👉 연결되어 있으면 true
//                }
//            }
//        }
//
//        return false
//    }
//
//    // 연결을 체크하는 이차원 배열
//    var matrix = Array(repeating: Array(repeating: false, count: n), count: n)
//    // 비용이 낮은 다리부터 건설해야 하므로 비용 기준으로 오름차순으로 정렬
//    let costs = costs.sorted(by: { $0[2] < $1[2] })
//    // 총 비용
//    var total = 0
//
//    for cost in costs {
//        let from = cost[0]
//        let to = cost[1]
//        let money = cost[2]
//
//        // 두 지점이 연결이 되어 있지 않으면 건설
//        if !isAlreadyConnected(from, to) {
//            matrix[from][to] = true
//            matrix[to][from] = true
//            total += money
//
//            // 그리고 나서 모두 연결되었는지 확인
//            if isAllConnected() { break }
//        }
//    }
//
//    return total
//}
