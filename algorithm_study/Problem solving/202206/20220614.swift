//
//  20220614.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/15.
//

//// 연결 요소의 갯수
//
//// dfs 구현
//func dfs(_ node: Int) {
//    check[node] = true
//
//    for i in 1...N {
//        if matrix[node][i] && !check[i] {
//            dfs(i)
//        }
//    }
//}
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//// (N + 1) * (N + 1) 크기의 인접 행렬
//var matrix = Array(repeating: Array(repeating: false, count: N + 1), count: N + 1)
//// 방문 체크용 배열
//var check = Array(repeating: false, count: N + 1)
//// 연결 요소의 갯수 count
//var cnt = 0
//
//for _ in 0..<M {
//    let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
//    matrix[edge[0]][edge[1]] = true //👉 방향은 없으므로 두 군데 다 저장한다.
//    matrix[edge[1]][edge[0]] = true
//}
//
//for i in 1...N {
//    if !check[i] {
//        cnt += 1
//        dfs(i) //👉 여기서 dfs를 도는 동안 i와 연결된 요소들은 전부 check가 true가 된다.
//    }
//}
//
//print(cnt)

//// 미로 탐색
//
//// 좌표를 나타내는 튜플의 typealias
//typealias Coordinate = (x: Int, y: Int)
//
//// 인덱스 큐 구현
//struct Queue {
//    var queue = [Coordinate]()
//    var index = 0
//
//    var isEmpty: Bool {
//        return (queue.count - index) == 0 ? true : false
//    }
//
//    mutating func push(_ t: Coordinate) {
//        queue.append(t)
//    }
//
//    mutating func pop() -> Coordinate {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// 이차원 배열로 지도 저장
//var maze = [[Int]]()
//
//// (0, 0)에서 부터의 거리를 저장할 이차원 배열
//var visited = Array(repeating: Array(repeating: 0, count: M), count: N)
//
//// 동서남북이동의 x, y좌표 변화값을 미리 저장
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, 1, -1]
//
//// 미로 입력 받기
//for _ in 0..<N {
//    let line = readLine()!.map { Int(String($0))! }
//    maze.append(line)
//}
//
//// 지도에서 갈 수 있는 곳인지 확인하는 함수
//    //👉 미로의 경계선을 벗어나면 안되고
//    //👉 미로에 1이 표시되어 있어야 한다.
//func isValid(coord: Coordinate) -> Bool {
//    return coord.x >= 0 && coord.x < N && coord.y >= 0 && coord.y < M && maze[coord.x][coord.y] == 1 ? true : false
//}
//
//// bfs 구현
//func bfs() {
//    var queue = Queue() //👉 방문해야할 node를 저장할 큐
//    queue.push((x: 0, y: 0)) //👉 출발점을 queue에 넣는다.
//    visited[0][0] = 1 //👉 출발점에 방문표시를 한다. (여기서는 지나야하는 칸수를 저장해야 하므로 1)
//
//    while !queue.isEmpty {
//        let now = queue.pop() //👉 현재 방문하는 node
//        let d = visited[now.x][now.y] //👉 현재까지의 거리
//        // 동서남북으로 이동하면서
//        for i in 0..<4 {
//            let next = (x: now.x + dx[i], y: now.y + dy[i]) //👉 다음 방문 예정 node
//            if isValid(coord: next) && visited[next.x][next.y] == 0 { //👉 next가 valid하고 아직 방문하지 않았다면
//                queue.push(next) //👉 다음에 방문해야할 node에 넣고
//                visited[next.x][next.y] = d + 1 //👉 방문배열에는 next까지 거쳐간 칸수를 저장한다. (이전 칸의 + 1)
//            }
//        }
//    }
//}
//
////⭐️ 중간에 bfs를 멈추지 않아도 최단거리가 구해지는 이유
//    // = 최단거리로 방문했을때 이미 visited에 최단 거리가 기록되기 때문에
//
//bfs()
//print(visited[N - 1][M - 1])
