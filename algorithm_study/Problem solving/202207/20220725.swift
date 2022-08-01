//
//  20220725.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/25.
//

//// 결혼식
//
///*
// bfs로 길이 2 이내의 사람만 찾는다
// */
//
//// 큐 구현
//struct Queue {
//    var queue = [(Int, Int)]()
//    var index = 0
//
//    var isEmpty: Bool {
//        queue.count - index == 0
//    }
//
//    mutating func push(_ tuple: (Int, Int)) {
//        queue.append(tuple)
//    }
//
//    mutating func pop() -> (Int, Int) {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//// bfs 구현
//func bfs() {
//    var queue = Queue()
//    var check = Array(repeating: false, count: n + 1)
//    var cnt = 0 //👉 참석자를 세기 위한 변수
//    queue.push((1, 0)) //👉 학번 + 1번과의 거리를 튜플로 묶어서 push
//    check[1] = true
//
//    while !queue.isEmpty {
//        let now = queue.pop()
//        //🚫 (친구의 친구)의 친구는 추가하지 않는다. (길이 2 = 친구의 친구)
//        if now.1 > 1 {
//            break
//        }
//
//        // 인접리스트를 돌면서 친구를 추가한다.
//        for i in adj[now.0] {
//            if check[i] { continue }
//            queue.push((i, now.1 + 1))
//            check[i] = true
//            cnt += 1
//        }
//    }
//
//    print(cnt)
//}
//
//// 입력 받기
//let n = Int(readLine()!)!
//let m = Int(readLine()!)!
//
//// 인접리스트
//var adj = Array(repeating: [Int](), count: n + 1)
//
//// 양방향 그래프이므로 인접 리스트의 양방향에 모두 추가
//for _ in 0..<m {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    adj[input[0]].append(input[1])
//    adj[input[1]].append(input[0])
//}
//
//bfs()

//// 섬의 갯수
//
//// 동서남북 + 대각선: 8방향 탐색
//let dr = [1, -1, 0, 0, 1, 1, -1, -1]
//let dc = [0, 0, 1, -1, 1, -1, 1, -1]
//
//// 섬의 갯수를 세는 함수
//func countIsland(w: Int, h: Int) {
//    // 현재 좌표가 dfs의 대상인지 알아보는 함수
//    func isValid(_ r: Int, _ c: Int) -> Bool {
//        r >= 0 && r < h && c >= 0 && c < w && check[r][c] == false && matrix[r][c] == 1
//    }
//
//    // 8방향 dfs
//    func dfs(_ r: Int, _ c: Int) {
//        for i in 0..<8 {
//            let nr = r + dr[i]
//            let nc = c + dc[i]
//            if isValid(nr, nc) {
//                check[nr][nc] = true
//                dfs(nr, nc)
//            }
//        }
//    }
//
//    // 지도 저장용 2차원 배열
//    var matrix = [[Int]]()
//    // 방문체크
//    var check = Array(repeating: Array(repeating: false, count: w), count: h)
//    // 섬의 갯수 세기
//    var cnt = 0
//
//    // matrix 입력 받기
//    for _ in 0..<h {
//        matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//    }
//
//    // matrix 내의 모든 점을 순회하면서 (땅 + 아직 미방문)이라면 거기 연결된 땅 모두 탐색
//    for r in 0..<h {
//        for c in 0..<w {
//            if matrix[r][c] == 1 && check[r][c] == false {
//                dfs(r, c)
//                cnt += 1
//            }
//        }
//    }
//
//    print(cnt)
//}
//
//while true {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let w = input[0], h = input[1]
//    if w == 0 && h == 0 { break }
//
//    countIsland(w: w, h: h)
//}
