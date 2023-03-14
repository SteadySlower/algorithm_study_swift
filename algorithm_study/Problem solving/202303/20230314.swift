//
//  20230314.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/14.
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
//    let cost: Int
//}
//
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
//    var visited = Array(repeating: Array(repeating: Int.max, count: n), count: n)
//    visited[0][0] = 0
//
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        (0..<n).contains(r) && (0..<n).contains(c) && board[r][c] == 0
//    }
//
//    func direction(from: (Int, Int), to: (Int, Int)) -> Direction {
//        from.0 == to.0 ? .horizontal : .vertical
//    }
//
//    func newCost(d: Direction?, nd: Direction, cost: Int) -> Int {
//        guard let d = d else { return cost + 100 }
//        return d == nd ? cost + 100 : cost + 600
//    }
//
//
//    func bfs() {
//        var q = Queue()
//        q.push(Position(r: 0, c: 0, d: nil, cost: 0))
//
//        while !q.isEmpty {
//            let p = q.pop()
//            let r = p.r, c = p.c, cost = p.cost, d = p.d
//            if cost > visited[n - 1][n - 1] { continue }
//            for i in 0..<4 {
//                let nr = r + dr[i], nc = c + dc[i]
//                let nd = direction(from: (r, c), to: (nr, nc))
//                let ncost = newCost(d: d, nd: nd, cost: cost)
//                if isValid(nr, nc) && visited[nr][nc] > ncost {
////                    print(r, c, d, cost, "/", nr, nc, nd, ncost)
//                    if nr == n - 1 && nc == n - 1{
//                        print(r, c, d, cost, "/", nr, nc, nd, ncost)
//                    }
//                    visited[nr][nc] = ncost
//                    q.push(Position(r: nr, c: nc, d: nd, cost: ncost))
//                }
//            }
//        }
//    }
//
//    bfs()
//
//    return visited[n - 1][n - 1]
//}
//
//print(solution([[0,0,0,0,0,0,0,1],[0,0,0,0,0,0,0,0],[0,0,0,0,0,1,0,0],[0,0,0,0,1,0,0,0],[0,0,0,1,0,0,0,1],[0,0,1,0,0,0,1,0],[0,1,0,0,0,1,0,0],[1,0,0,0,0,0,0,0]]))
