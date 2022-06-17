//
//  20220617.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/17.
//

//// 탈출
//
//// 물의 위치를 기록할 튜플 자료형
//typealias Position = (r: Int, c: Int, time: Int)
//
//// 큐 구현
//struct Queue {
//    var queue = [Position]()
//    var index = 0
//
//    var isEmpty: Bool {
//        return queue.count - index == 0 ? true : false
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
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let R = input[0], C = input[1]
//var matrix = [[Character]]()
//for _ in 0..<R {
//    matrix.append(readLine()!.map{ $0 })
//}
//
//// 고슴도치가 방문한 곳 check
//var check = Array(repeating: Array(repeating: false, count: C), count: R)
//
//// 동서남북 이동 방향
//let dr = [1, -1, 0, 0]
//let dc = [0, 0, 1, -1]
//
//// 유효한 좌표인지 확인
//func isValid(_ r: Int, _ c: Int) -> Bool {
//    return r >= 0 && r < R && c >= 0 && c < C ? true : false
//}
//
//// 1초 후에 물이 있을 곳을 지도 상에 표시하는 함수
//func moveWater() {
//    // 한번 이동된 물에 대해서는 이동하지 않도록 check하기
//    var waterCheck = Array(repeating: Array(repeating: false, count: C), count: R)
//
//    // 지도 전체를 돌면서
//    for r in 0..<R {
//        for c in 0..<C {
//            // 한번 이동한 물이 아니라면
//            if matrix[r][c] == "*" && !waterCheck[r][c] {
//                for i in 0..<4 { //👉 동서남북 이동
//                    let nr = r + dr[i]
//                    let nc = c + dc[i]
//                    if isValid(nr, nc) && matrix[nr][nc] == "." { //👉 물이 이동 가능한 곳이라면
//                        matrix[nr][nc] = "*" // 지도에 표시
//                        waterCheck[nr][nc] = true // 한번 이동된 물 체크
//                    }
//                }
//            }
//        }
//    }
//}
//
//// bfs (시작점을 인자로 받음)
//func bfs(_ start: Position) {
//    var queue = Queue()
//
//    // 시작점 push, 방문 체크, 현재 시간 저장
//    queue.push(start)
//    check[start.r][start.c] = true
//    var nowTime = start.time //👉 출발점에서는 0
//
//    // 일단 물 한번 이동한다. (1초 후에 물이 들어올 곳은 이동하지 못하므로)
//    moveWater()
//
//    while !queue.isEmpty {
//        let p = queue.pop()
//
//        // 현재 pop 이동장소의 시간이 현재 시간보다 크다면 (1초 더 지난 후에 이동하는 장소인 상황)
//        if nowTime < p.time {
//            nowTime = p.time
//            moveWater() //👉 1초 후에 물 들어올 곳은 미리 표시해두고 고슴도치 이동
//        }
//
//        // 동서남북으로 이동가능한지 확인
//        for i in 0..<4 {
//            let nr = p.r + dr[i]
//            let nc = p.c + dc[i]
//            if isValid(nr, nc) && !check[nr][nc] { // 이동 가능 및 방문 하지 않은 곳
//                if matrix[nr][nc] == "D" { //👉 목적지 도착
//                    print(p.time + 1) //👉 현재 위치까지 걸린 시간에 + 1초해서 출력
//                    return
//                } else if matrix[nr][nc] == "." { //👉 아무 것도 없어서 이동할 수 있는 장소
//                    queue.push((r: nr, c: nc, time: p.time + 1)) //👉 현재 위치까지 걸린 시간에 + 1초해서 push
//                    check[nr][nc] = true // 방문 check
//                }
//            }
//        }
//    }
//    print("KAKTUS")
//}
//
//// 출발점 찾아서 bfs 시작
//for r in 0..<R {
//    for c in 0..<C {
//        if matrix[r][c] == "S" {
//            bfs((r: r, c: c, time: 0))
//        }
//    }
//}
