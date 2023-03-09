//
//  20230309.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/09.
//

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
//
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
//    func bfs() -> Int {
//
//        var queue = Queue()
//        queue.push(Position(r: 0, c: 0, d: nil))
//
//        var visited = Array(repeating: Array(repeating: Int.max, count: n), count: n)
//        visited[0][0] = 0
//
//        while !queue.isEmpty {
//
//            let now = queue.pop()
//            let (r, c, d) = (now.r, now.c, now.d)
//            let cost = visited[r][c]
//
//            for i in 0..<4 {
//                let nr = r + dr[i]
//                let nc = c + dc[i]
//
//                guard isValid(nr, nc) else { continue }
//
//                let nd = direction(from: (r, c), to: (nr, nc))
//                let ncost = visited[nr][nc]
//
//                if d == nil && ncost > cost + 100 {
//                    visited[nr][nc] = cost + 100
//                    queue.push(Position(r: nr, c: nc, d: nd))
//                } else if d == nd && ncost > cost + 100 {
//                    visited[nr][nc] = cost + 100
//                    queue.push(Position(r: nr, c: nc, d: nd))
//                } else if d != nd && ncost > cost + 600 {
//                    visited[nr][nc] = cost + 600
//                    queue.push(Position(r: nr, c: nc, d: nd))
//                }
//            }
//        }
//
//        return visited[n - 1][n - 1]
//
//    }
//
//    return bfs()
//}

//func solution(_ board:[[Int]]) -> Int {
//
//    let n = board.count
//
//    var visited = Array(repeating: Array(repeating: Int.max, count: n), count: n)
//    visited[0][0] = 0
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
//    func dfs(_ r: Int, _ c: Int, _ d: Direction?) {
//
//        let cost = visited[r][c]
//
//        for i in 0..<4 {
//            let nr = r + dr[i]
//            let nc = c + dc[i]
//
//            guard isValid(nr, nc) else { continue }
//
//            let ncost = visited[nr][nc]
//            let nd = direction(from: (r, c), to: (nr, nc))
//
//            if d == nil && ncost > cost + 100 {
//                visited[nr][nc] = cost + 100
//                dfs(nr, nc, nd)
//            } else if d == nd && ncost > cost + 100 {
//                visited[nr][nc] = cost + 100
//                dfs(nr, nc, nd)
//            } else if d != nd && ncost > cost + 600 {
//                visited[nr][nc] = cost + 600
//                dfs(nr, nc, nd)
//            }
//        }
//    }
//
//    dfs(0, 0, nil)
//
//    return visited[n - 1][n - 1]
//}


//print(solution([[0,0,0],[0,0,0],[0,0,0]]))
//print(solution([[0,0,0,0,0,0,0,1],[0,0,0,0,0,0,0,0],[0,0,0,0,0,1,0,0],[0,0,0,0,1,0,0,0],[0,0,0,1,0,0,0,1],[0,0,1,0,0,0,1,0],[0,1,0,0,0,1,0,0],[1,0,0,0,0,0,0,0]]))
