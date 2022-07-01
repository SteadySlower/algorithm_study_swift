//
//  20220618.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/18.
//

//// 토마토 구조체
//struct Tomato {
//    let r: Int
//    let c: Int
//
//    init(_ r: Int, _ c: Int) {
//        self.r = r
//        self.c = c
//    }
//}
//
//// Swift로 큐 구현
//struct Queue {
//    var queue = [Tomato]()
//    var index = 0
//
//    var isEmpty: Bool {
//        return queue.count - index == 0
//    }
//
//    mutating func push(_ t: Tomato) {
//        queue.append(t)
//    }
//
//    mutating func pop() -> Tomato {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//// 전체 토마토가 익었지 확인하는 extension
//extension Array where Element == [Int] {
//    var isDone: Bool {
//        for r in 0..<N {
//            for c in 0..<M {
//                if self[r][c] == 0 {
//                    return false
//                }
//            }
//        }
//        return true
//    }
//}
//
//// 현재 좌표가 유효한 좌표인지 확인
//func isValid(_ r: Int, _ c: Int) -> Bool {
//    return r >= 0 && r < N && c >= 0 && c < M && matrix[r][c] == 0
//}
//
//// 동서남북 좌표 변화
//let dr = [1, -1, 0, 0]
//let dc = [0, 0, 1, -1]
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let M = input[0], N = input[1]
//var matrix = [[Int]]()
//for _ in 0..<N {
//    matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//}
//
//// 큐와 방문 체크용 배열
//var queue = Queue()
//var check = Array(repeating: Array(repeating: false, count: M), count: N)
//
//// 0일차에 이미 익어있는 토마토 queue에 추가하고 방문체크
//for r in 0..<N {
//    for c in 0..<M {
//        if matrix[r][c] == 1 {
//            queue.push(Tomato(r, c))
//            check[r][c] = true
//        }
//    }
//}
//
//// bfs 구현
//func bfs() {
//    var cnt = 0 //👉 지난 날짜를 저장하는 변수
//    var temp = Queue() //👉 특정한 하루에 익은 토마토를 임시로 저장하는 queue
//
//    // 처음부터 익어 있다면 0 출력
//    if matrix.isDone {
//        print(cnt)
//        return
//    }
//
//    // 하루씩 끊어서 bfs를 돌리기 위해 while문 2개 사용
//    while true {
//
//        // 하루 동안 익은 토마토 temp에 추가
//        while !queue.isEmpty {
//            let tomato = queue.pop()
//            for i in 0..<4 {
//                let nr = tomato.r + dr[i]
//                let nc = tomato.c + dc[i]
//                if isValid(nr, nc) && !check[nr][nc] {
//                    temp.push(Tomato(nr, nc))
//                    check[nr][nc] = true
//                    matrix[nr][nc] = 1 //👉 익었다고 표시
//                }
//            }
//        }
//
//        // 만약 임시큐가 비었다면 break (= 더 이상 추가적으로 익은 토마토가 없음)
//        if temp.isEmpty { break }
//
//        // 큐에 임시큐 할당
//        queue = temp
//        temp = Queue()
//
//        // + 하루
//        cnt += 1
//    }
//
//    // 모든 익힐 수 있는 토마토를 익혔을 때
//        // 모두 익었다면 cnt 출력
//        // 아직도 못 익은 토마토가 있다면 -1 출력
//    print(matrix.isDone ? cnt : -1)
//}
//
//bfs()
