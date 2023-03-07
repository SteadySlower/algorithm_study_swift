//
//  20230307.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/07.
//

//func solution(_ board:[[Int]]) -> Int {
//
//    let n = board.count
//    var ans = Int.max
//
//    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
//    visited[0][0] = true
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        (0..<n).contains(r) && (0..<n).contains(c) && board[r][c] == 0
//    }
//
//    func direction(from: (Int, Int), to: (Int, Int)) -> Direction {
//        if from.0 == to.0 {
//            return .horizontal
//        } else {
//            return .vertical
//        }
//    }
//
//    func dfs(_ r: Int, _ c: Int, _ d: Direction?, _ cost: Int) {
//
//        if ans < cost {
//            return
//        }
//
//        if r == n - 1 && c == n - 1 {
//            ans = min(ans, cost)
//            return
//        }
//
//        for i in 0..<4 {
//            let nr = r + dr[i]
//            let nc = c + dc[i]
//            if isValid(nr, nc) && !visited[nr][nc] {
//                visited[nr][nc] = true
//                if d == nil {
//                    dfs(nr, nc, direction(from: (r, c), to: (nr, nc)), cost + 100)
//                } else if direction(from: (r, c), to: (nr, nc)) == d {
//                    dfs(nr, nc, d, cost + 100)
//                } else {
//                    dfs(nr, nc, d!.toggle(), cost + 600)
//                }
//                visited[nr][nc] = false
//            }
//        }
//    }
//
//    dfs(0, 0, nil, 0)
//
//    return ans
//}

//enum Direction {
//    case horizontal, vertical
//
//    func toggle() -> Direction {
//        self == .horizontal ? .vertical : .horizontal
//    }
//}
//
//struct Position {
//    let r: Int
//    let c: Int
//    let d: Direction?
//    let cost: Int
//}
//
//struct Queue {
//    var index = 0
//    var data = [Position]()
//
//    var isEmpty: Bool {
//        index == data.count
//    }
//
//    mutating func push(_ p: Position) {
//        data.append(p)
//    }
//
//    mutating func pop() -> Position {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//func solution(_ board:[[Int]]) -> Int {
//
//    let n = board.count
//    var ans = Int.max
//
//    var visited = Array(repeating: Array(repeating: false, count: n), count: n)
//    visited[0][0] = true
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        (0..<n).contains(r) && (0..<n).contains(c) && board[r][c] == 0
//    }
//
//    func direction(from: (Int, Int), to: (Int, Int)) -> Direction {
//        if from.0 == to.0 {
//            return .horizontal
//        } else {
//            return .vertical
//        }
//    }
//
//    func bfs() {
//
//        var queue = Queue()
//        queue.push(Position(r: 0, c: 0, d: nil, cost: 0))
//
//        while !queue.isEmpty {
//
//            let now = queue.pop()
//
//            if now.r == n - 1 && now.c == n - 1 {
//                ans = min(ans, now.cost)
//                continue
//            }
//
//            for i in 0..<4 {
//                let nr = now.r + dr[i]
//                let nc = now.c + dc[i]
//                if isValid(nr, nc) && !visited[nr][nc] {
//                    visited[nr][nc] = true
//                    if now.d == nil {
//                        queue.push(Position(r: nr, c: nc, d: direction(from: (now.r, now.c), to: (nr, nc)), cost: now.cost + 100))
//                    } else if direction(from: (now.r, now.c), to: (nr, nc)) == now.d {
//                        queue.push(Position(r: nr, c: nc, d: direction(from: (now.r, now.c), to: (nr, nc)), cost: now.cost + 100))
//                    } else {
//                        queue.push(Position(r: nr, c: nc, d: direction(from: (now.r, now.c), to: (nr, nc)), cost: now.cost + 600))
//                    }
//                }
//            }
//
//
//        }
//
//    }
//
//    bfs()
//
//    return ans
//}
//
//print(solution([[0,0,0],[0,0,0],[0,0,0]]))
//print(solution([[0,0,0,0,0,0,0,1],[0,0,0,0,0,0,0,0],[0,0,0,0,0,1,0,0],[0,0,0,0,1,0,0,0],[0,0,0,1,0,0,0,1],[0,0,1,0,0,0,1,0],[0,1,0,0,0,1,0,0],[1,0,0,0,0,0,0,0]]))
