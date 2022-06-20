//
//  20220620.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/20.
//

//// 나이트의 이동
//
//// 말의 위치 구조체
//struct Position {
//    let r: Int
//    let c: Int
//    let d: Int
//
//    init(_ r: Int, _ c: Int, _ d: Int) {
//        self.r = r
//        self.c = c
//        self.d = d
//    }
//}
//
//// 큐 구조체
//struct Queue {
//    var queue = [Position]()
//    var index = 0
//
//    var isEmpty: Bool {
//        return queue.count - index == 0
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
//// bfs 구현
//func bfs() {
//    // 좌표가 유효한지 구하는 함수 (I가 테스트 case 마다 달라지므로 bfs 안에 구현)
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        return r >= 0 && r < I && c >= 0 && c < I
//    }
//
//    // 입력 받기
//    let I = Int(readLine()!)!
//    var check = Array(repeating: Array(repeating: false, count: I), count: I)
//    let startInput = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let endInput = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//    // queue에 출발점 push
//    var queue = Queue()
//    queue.push(Position(startInput[0], startInput[1], 0))
//    check[startInput[0]][startInput[1]] = true
//
//    // 완전 탐색 시작
//    while !queue.isEmpty {
//        // 목적지에 도착하면 거리 출력
//        let now = queue.pop()
//        if now.r == endInput[0] && now.c == endInput[1] {
//            print(now.d)
//            return
//        }
//
//        // 8방향 탐색
//        for i in 0..<8 {
//            let nr = now.r + dr[i]
//            let nc = now.c + dc[i]
//            if isValid(nr, nc) && !check[nr][nc] {
//                queue.push(Position(nr, nc, now.d + 1))
//                check[nr][nc] = true
//            }
//        }
//    }
//}
//
//// 테스트 케이스 횟수 입력 받기
//let T = Int(readLine()!)!
//
//// 나이트의 8가지 이동에 대한 좌표 변화
//let dr = [-1, -2, -2, -1, 1, 2, 2, 1]
//let dc = [-2, -1, 1, 2, 2, 1, -1, -2]
//
//for _ in 0..<T {
//    bfs()
//}

//// 숨바꼭질
//
//// 현재 위치와 걸린 시간을 저장하는 구조체
//struct Position {
//    let n: Int
//    let t: Int
//
//    // 동생의 위치에 도착했는지 여부
//    var isArrived: Bool {
//        return n == K
//    }
//}
//
//// 큐 구현
//struct Queue {
//    private var queue = [Position]()
//    private var index = 0
//
//    var isEmpty: Bool {
//        return queue.count - index == 0
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
//// 이동 방법 3가지 함수로 구현
//func plusOne(_ n: Int) -> Int {
//    return n + 1
//}
//
//func minusOne(_ n: Int) -> Int {
//    return n - 1
//}
//
//func multiplyTwo(_ n: Int) -> Int {
//    return n * 2
//}
//
//// 위 함수들을 배열에 저장 (반복문을 사용하기 위해서)
//let moves :[(Int) -> Int] = [plusOne, minusOne, multiplyTwo]
//
//// 현재 위치가 주어진 범위를 벗어난 것은 아닌지 알아보는 extension
//extension Int {
//    var isValid: Bool {
//        return self >= 0 && self <= 100000
//    }
//}
//
//// bfs 구현
//func bfs() {
//    // 큐와 방문체크 배열
//    var queue = Queue()
//    var check = Array(repeating: false, count: 100001)
//
//    // 시작점 큐에 push
//    queue.push(Position(n: N, t: 0))
//    check[N] = true
//
//    // 완전탐색 시작
//    while !queue.isEmpty {
//        let now = queue.pop()
//        if now.isArrived { print(now.t); return } // 도착하면 출력하고 리턴
//
//        // 3가지 이동 (앞으로 걷기, 뒤로 걷기, 순간이동)에 대해서 완전 탐색
//        for i in 0..<3 {
//            let next = moves[i](now.n) //👉 배열의 subscript로 접근한 함수 실행하는 방법
//            if next.isValid && !check[next] {
//                queue.push(Position(n: next, t: now.t + 1))
//                check[next] = true
//            }
//        }
//    }
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], K = input[1]
//
//// bfs 실시
//bfs()
