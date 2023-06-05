//
//  20230605.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/05.
//

//// Queue에 넣을 구조체
//struct Position {
//    let r: Int
//    let c: Int
//    let cost: Int
//}
//
//// Swift로 큐 구현
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
//    // 이차원 배열로 변경
//    let board = board.map { $0.map { String($0) } }
//
//    // 좌표가 로봇이 갈 수 있는 좌표인지
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        (0..<board.count).contains(r) && (0..<board[0].count).contains(c) && board[r][c] != "D"
//    }
//
//    // 위로 미끄러지기: 유효한 좌표까지 r -= 1
//    func slideToTop(_ r: Int, _ c: Int) -> (Int, Int) {
//        var nr = r
//        while isValid(nr - 1, c) {
//            nr -= 1
//        }
//        return (nr, c)
//    }
//
//    // 아래로 미끄러지기: 유효한 좌표까지 r += 1
//    func slideToBottom(_ r: Int, _ c: Int) -> (Int, Int) {
//        var nr = r
//        while isValid(nr + 1, c) {
//            nr += 1
//        }
//        return (nr, c)
//    }
//
//    // 왼쪽으로 미끄러지기: 유효한 좌표까지 c -= 1
//    func slideToLeft(_ r: Int, _ c: Int) -> (Int, Int) {
//        var nc = c
//        while isValid(r, nc - 1) {
//            nc -= 1
//        }
//        return (r, nc)
//    }
//
//    // 오른쪽으로 미끄러지기: 유효한 좌표까지 c += 1
//    func slideToRight(_ r: Int, _ c: Int) -> (Int, Int) {
//        var nc = c
//        while isValid(r, nc + 1) {
//            nc += 1
//        }
//        return (r, nc)
//    }
//
//    // 반복문에 쓸 수 있도록 함수의 배열로
//    let moves = [slideToTop, slideToBottom, slideToLeft, slideToRight]
//
//    // bfs 실행
//    var q = Queue()
//    var visited = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
//
//    // 시작점 찾기
//    var r = (0, 0)
//    for i in 0..<board.count {
//        for j in 0..<board[0].count {
//            if board[i][j] == "R" {
//                r = (i, j)
//            }
//        }
//    }
//
//    // 시작점 queue에 넣기
//    q.push(Position(r: r.0, c: r.1, cost: 0))
//    visited[r.0][r.1] = true
//
//    // 도착할 때 or queue가 빌 때까지 반복
//    while !q.isEmpty {
//        let now = q.pop()
//        // 도착하면 cost 리턴
//        if board[now.r][now.c] == "G" { return now.cost }
//
//        // 상하좌우로 미끄러지면서 완전 탐색
//        for i in 0..<4 {
//            let (nr, nc) = moves[i](now.r, now.c)
//            if !visited[nr][nc] {
//                q.push(Position(r: nr, c: nc, cost: now.cost + 1))
//                visited[nr][nc] = true
//            }
//        }
//    }
//
//    // 도착하지 못해서 return이 안되었으면 -1 리턴
//    return -1
//}
//
//print(solution(["...D..R", ".D.G...", "....D.D", "D....D.", "..D...."]))
//print(solution([".D.R", "....", ".G..", "...D"]))
