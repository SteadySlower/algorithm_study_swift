//
//  20230315.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/15.
//

//// 방향 enum, 3차원 배열에 저장해야 하므로 Int
//enum Direction: Int {
//    case horizontal, vertical
//}
//
//// queue에 저장할 현재 위치, 바로 직전 도로 방향, 현재까지의 비용
//struct Position {
//    let r: Int
//    let c: Int
//    let d: Direction?
//    let cost: Int
//}
//
//// Swift로 큐 구현
//struct Queue {
//
//    private var index = 0
//    private var array = [Position]()
//
//    var isEmpty: Bool {
//        index == array.count
//    }
//
//    mutating func push(_ p: Position) {
//        array.append(p)
//    }
//
//    mutating func pop() -> Position {
//        defer {
//            index += 1
//        }
//        return array[index]
//    }
//
//}
//
//func solution(_ board:[[Int]]) -> Int {
//
//    let n = board.count
//
//    // 3차원 배열: 수평, 수직 방향에 따라 비용이 달라지므로
//        // visited[0][r][c]: 수평 도로로 (r, c)에 도착했을 때 최소비용
//        // visited[1][r][c]: 수직 도로로 (r, c)에 도착했을 때 최소비용
//    var visited = Array(repeating: Array(repeating: Array(repeating: Int.max, count: n), count: n), count: 2)
//    visited[0][0][0] = 0
//    visited[1][0][0] = 0
//
//    // 동서남북 이동할 때 좌표
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    // 현재 좌표의 validation (board 내의 좌표 + 벽이 아님)
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        (0..<n).contains(r) && (0..<n).contains(c) && board[r][c] == 0
//    }
//
//    // (r, c)에서 (nr, nc)로 갈 때 필요한 도로의 방향
//    func direction(from: (Int, Int), to: (Int, Int)) -> Direction {
//        from.0 == to.0 ? .horizontal : .vertical
//    }
//
//    // 방향이 같으면 100원, 방향이 다르면 600원
//        // 출발할 때는 방향이 없으므로 100원
//    func newCost(d: Direction?, nd: Direction, cost: Int) -> Int {
//        guard let d = d else { return cost + 100 }
//        return d == nd ? cost + 100 : cost + 600
//    }
//
//
//    func bfs() {
//        var q = Queue()
//        // 처음에는 방향이 없으므로 100원
//        q.push(Position(r: 0, c: 0, d: nil, cost: 0))
//
//        while !q.isEmpty {
//            let p = q.pop(), r = p.r, c = p.c, cost = p.cost, d = p.d
//            // 목적지에 도착했다면 continue
//            if r == n - 1 && c == n - 1 { continue }
//
//            // 현재 비용이 이미 최종 비용보다 높은 경우 continue
//            if cost > max(visited[0][n - 1][n - 1], visited[1][n - 1][n - 1])  { continue }
//
//            // 동서남북 경우의 수
//            for i in 0..<4 {
//                let nr = r + dr[i], nc = c + dc[i]
//                let nd = direction(from: (r, c), to: (nr, nc))
//                let ncost = newCost(d: d, nd: nd, cost: cost)
//
//                // 좌표가 유효하고 다음 방문지가 현재 비용보다 적거나 같다면 방문
//                if isValid(nr, nc) && visited[nd.rawValue][nr][nc] >= ncost {
//                    visited[nd.rawValue][nr][nc] = ncost
//                    q.push(Position(r: nr, c: nc, d: nd, cost: ncost))
//                }
//            }
//        }
//    }
//
//    bfs()
//
//    return min(visited[0][n - 1][n - 1], visited[1][n - 1][n - 1])
//}
//
//print(solution([[0,0,0,0,0,0,0,1],[0,0,0,0,0,0,0,0],[0,0,0,0,0,1,0,0],[0,0,0,0,1,0,0,0],[0,0,0,1,0,0,0,1],[0,0,1,0,0,0,1,0],[0,1,0,0,0,1,0,0],[1,0,0,0,0,0,0,0]]))
//print(solution([
//    [0, 0, 0, 0, 0, 0, 0, 0],
//    [1, 0, 1, 1, 1, 1, 1, 0],
//    [1, 0, 0, 1, 0, 0, 0, 0],
//    [1, 1, 0, 0, 0, 1, 1, 1],
//    [1, 1, 1, 1, 0, 0, 0, 0],
//    [1, 1, 1, 1, 1, 1, 1, 0],
//    [1, 1, 1, 1, 1, 1, 1, 0],
//    [1, 1, 1, 1, 1, 1, 1, 0],
//  ]))
