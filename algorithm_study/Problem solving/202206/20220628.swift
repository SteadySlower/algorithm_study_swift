//
//  20220627.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/28.
//

//// 01타일
//
//var cache = Array(repeating: -1, count: 1000001)
//
//func f(_ n: Int) -> Int {
//    if n == 1 || n == 2 {
//        cache[n] = n
//    }
//
//    if cache[n] < 0 {
//        cache[n] = (f(n - 2) + f(n - 1)) % 15746
//    }
//
//    return cache[n]
//}
//
//print(f(Int(readLine()!)!))

//struct Position {
//    let r: Int
//    let c: Int
//    let candy: Int
//}
//
//struct Queue {
//    var queue = [Position]()
//    var index = 0
//
//    var isEmpty: Bool {
//        return queue.count == index
//    }
//
//    mutating func push(_ p: Position) {
//        queue.append(p)
//    }
//
//    mutating func pop() -> Position {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//// 아래, 오른쪽, 대각선의 좌표 변화
//let dr = [1, 0, 1]
//let dc = [0, 1, 1]
//
//func isValid(r: Int, c: Int) -> Bool {
//    return r >= 0 && r < N && c >= 0 && c < M
//}
//
//func bfs() -> Int {
//    var result = 0
//    var queue = Queue()
//    queue.push(Position(r: 0, c: 0, candy: matrix[0][0]))
//
//    while !queue.isEmpty {
//        let now = queue.pop()
//        if now.r == N - 1 && now.c == M - 1 {
//            result = max(result, now.candy)
//            continue
//        }
//        for i in 0..<3 {
//            let nr = now.r + dr[i]
//            let nc = now.c + dc[i]
//            if isValid(r: nr, c: nc) {
//                queue.push(Position(r: nr, c: nc, candy: now.candy + matrix[nr][nc]))
//                //👉 지금까지 얻은 사탕 + 현재칸의 사탕해서 큐에 저장
//            }
//        }
//    }
//
//    return result
//}
//
//var matrix = [[Int]]()
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//for _ in 0..<N {
//    matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//}
//
//print(bfs())

//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//var cache = Array(repeating: Array(repeating: -1, count: M + 1), count: N + 1)
//
//// 첫 열과 첫 행을 0으로 채워넣으면 r, c 좌표를 따질 때 예외처리를 하지 않아도 된다.
//var matrix = [[Int]]()
//matrix.append(Array(repeating: 0, count: M + 1))
//for _ in 0..<N {
//    matrix.append([0] + readLine()!.split(separator: " ").map { Int(String($0))! })
//}

//for r in 1...N {
//    for c in 1...M {
//        cache[r][c] = matrix[r][c] + max(cache[r - 1][c], cache[r][c - 1], cache[r - 1][c - 1])
//    }
//}
//
//print(cache[N][M])

//func f(_ r: Int, _ c: Int) -> Int {
//    if r == 0 || c == 0 {
//        cache[r][c] = 0
//    }
//
//    if cache[r][c] < 0 {
//        cache[r][c] = matrix[r][c] + max(f(r - 1, c), f(r, c - 1), f(r - 1, c - 1))
//    }
//
//    return cache[r][c]
//}
//
//print(f(N, M))
