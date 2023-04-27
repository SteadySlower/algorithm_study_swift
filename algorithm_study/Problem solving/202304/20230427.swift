//
//  20230427.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/27.
//

//// swift로 Queue 구현
//struct Queue<T> {
//    private var index = 0
//    private var array = [T]()
//
//    var isEmpty: Bool {
//        return index == array.count
//    }
//
//    mutating func push(_ t: T) {
//        array.append(t)
//    }
//
//    mutating func pop() -> T {
//        defer {
//            index += 1
//        }
//        return array[index]
//    }
//}
//
//func solution(_ maps:[String]) -> Int {
//    // 2차원 배열로 만들기
//    let maps = maps.map { $0.map { String($0) } }
//    let numOfRows = maps.count
//    let numOfColumns = maps[0].count
//
//    // 동서남북
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    // bfs 구현
//    func bfs(from: (Int, Int), to: (Int, Int)) -> Int {
//        // 해당 좌표가 유효한지
//        func isValid(_ r: Int, _ c: Int) -> Bool {
//            (0..<numOfRows).contains(r)
//            && (0..<numOfColumns).contains(c) //👉 지도 밖이 아닌지
//            && !visited[r][c] //👉 이미 방문한 곳이 아닌지
//            && maps[r][c] != "X" //👉 벽이 아닌지
//        }
//
//        // 큐와 방문 배열
//        var queue = Queue<(Int, Int, Int)>()
//        var visited = Array(repeating: Array(repeating: false, count: numOfColumns), count: numOfRows)
//
//        // from 지점 queue에 넣기
//        queue.push((from.0, from.1, 0))
//        visited[from.0][from.1] = true
//
//        while !queue.isEmpty {
//            let (r, c, cost) = queue.pop()
//
//            // 도착하면 cost 리턴
//            if r == to.0 && c == to.1 {
//                return cost
//            }
//
//            // 동서남북 완전탐색
//            for i in 0..<4 {
//                let nr = r + dr[i], nc = c + dc[i]
//                if isValid(nr, nc) {
//                    queue.push((nr, nc, cost + 1))
//                    visited[nr][nc] = true
//                }
//            }
//        }
//
//        // queue가 빌 때까지 (= 탐색할 수 있는 모든 곳을 탐색한 이후)
//        // 목적지에 도달하지 못하면 -1 리턴
//        return -1
//    }
//
//    // 시작, 레버, 출구 찾기
//    var start = (0, 0)
//    var lever = (0, 0)
//    var exit = (0, 0)
//
//    for r in 0..<numOfRows {
//        for c in 0..<numOfColumns {
//            if maps[r][c] == "S" {
//                start = (r, c)
//            } else if maps[r][c] == "L" {
//                lever = (r, c)
//            } else if maps[r][c] == "E" {
//                exit = (r, c)
//            }
//        }
//    }
//
//    let toLever = bfs(from: start, to: lever)
//    let toExit = bfs(from: lever, to: exit)
//
//    // 둘 중에 하나라도 -1인 경우 탈출 안되므로 -1 리턴
//    return (toLever != -1 && toExit != -1) ? toLever + toExit : -1
//}

//print(solution(["SOOOL","XXXXO","OOOOO","OXXXX","OOOOE"]))
//print(solution(["LOOXS","OOOOX","OOOOO","OOOOO","EOOOO"]))
