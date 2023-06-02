//
//  20230602.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/02.
//

//struct Position {
//    let r: Int
//    let c: Int
//    let cost: Int
//}
//
//struct Queue {
//
//    var index = 0
//    var array = [Position]()
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
//func solution(_ board:[String]) -> Int {
//
//    let board = board.map { $0.map { String($0) } }
//
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        (0..<board.count).contains(r) && (0..<board[0].count).contains(c) && board[r][c] != "D"
//    }
//
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    var q = Queue()
//    var visited = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
//
//    var r = (0, 0)
//    for i in 0..<board.count {
//        for j in 0..<board[0].count {
//            if board[i][j] == "R" {
//                r = (i, j)
//            }
//        }
//    }
//
//    q.push(Position(r: r.0, c: r.1, cost: 0))
//    visited[r.0][r.1] = true
//
//    while !q.isEmpty {
//        let now = q.pop()
//        if board[now.r][now.c] == "G" { return now.cost }
//        for i in 0..<4 {
//            let (nr, nc) = (now.r + dr[i], now.c + dc[i])
//            if isValid(nr, nc) && !visited[nr][nc] {
//                q.push(Position(r: nr, c: nc, cost: now.cost + 1))
//                visited[nr][nc] = true
//            }
//        }
//    }
//
//    return -1
//}
//
//print(solution(["...D..R", ".D.G...", "....D.D", "D....D.", "..D...."]))
//print(solution([".D.R", "....", ".G..", "...D"]))
