//
//  20220727.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/27.
//

//// 바이러스
//
//// 입력 받기
//let N = Int(readLine()!)!
//let V = Int(readLine()!)!
//
//// 인접 리스트에 간선 저장
//var adj = Array(repeating: [Int](), count: N + 1)
//for _ in 0..<V {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    adj[input[0]].append(input[1])
//    adj[input[1]].append(input[0])
//}
//
//// 방문 체크용 배열
//var visited = Array(repeating: false, count: N + 1)
//visited[1] = true //👉 1번은 방문처리 (이미 감염)
//
//// 감염된 컴퓨터의 수를 세는 변수
//var cnt = 0
//
//// dfs 구현
//func dfs(now: Int) {
//    for i in adj[now] {
//        if !visited[i] {
//            visited[i] = true
//            cnt += 1 //👉 새로운 node방문할 때마다 cnt + 1
//            dfs(now: i)
//        }
//    }
//}
//
//dfs(now: 1)
//print(cnt)

// 차이를 최대로

//// 입력 받기
//let N = Int(readLine()!)!
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }
//var visited = Array(repeating: false, count: N)
//
//// 최댓값을 구할 때 최초값은 Int.min
//var ans = Int.min
//
//// dfs 구현
//    //👉 합을 계산할 때 now가 필요함!
//func dfs(now: Int, depth: Int, sum: Int) {
//    // 깊이 = 수열의 길이일 때 최댓값과 비교하기
//    if depth == N {
//        ans = max(ans, sum)
//        return
//    }
//
//    // 다음에 올 index 탐색
//    for i in 0..<N {
//        if !visited[i] { //👉 아직 방문하지 않은 index라면
//            let newSum = sum + abs(array[now] - array[i]) //👉 계산해서 현재합에 더하고
//            visited[i] = true //👉 방문체크하고
//            dfs(now: i, depth: depth + 1, sum: newSum) //👉 dfs
//            visited[i] = false //👉 dfs한 이후에는 방문체크 해제
//        }
//    }
//}
//
//// 시작하는 index가 N가지 있으므로 반복문으로 dfs 돌리기
//for i in 0..<N {
//    visited[i] = true
//    dfs(now: i, depth: 1, sum: 0)
//    visited[i] = false
//}
//
//print(ans)

//// 컴백홈
//
//// 해당 좌표가 갈 수 있는 좌표인지 알아보는 함수
//func isValid(_ r: Int, _ c: Int) -> Bool {
//    r >= 0 && r < R && c >= 0 && c < C && matrix[r][c] != "T"
//}
//
//// 동서남북 좌표 변화
//let dr = [1, -1, 0, 0]
//let dc = [0, 0, 1, -1]
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let (R, C, K) = (input[0], input[1], input[2])
//
//// 지도 입력 받기
//var matrix = [[String]]()
//for _ in 0..<R {
//    matrix.append(readLine()!.map { String($0) })
//}
//
//// 거리가 K인 경우
//var cnt = 0
//
//// 방문 체크 배열
//var visited = Array(repeating: Array(repeating: false, count: C), count: R)
//
//// dfs 구현
//func dfs(_ r: Int, _ c: Int, _ d: Int) {
//    // 목적지에 도착하면
//    if r == 0 && c == C - 1 {
//        if d == K { //👉 거리가 K일 때만 cnt + 1
//            cnt += 1
//        }
//        return
//    }
//
//    // 동서남북 완전 탐색
//    for i in 0..<4 {
//        let nr = r + dr[i]
//        let nc = c + dc[i]
//        if isValid(nr, nc) && !visited[nr][nc] {
//            visited[nr][nc] = true
//            dfs(nr, nc, d + 1)
//            visited[nr][nc] = false
//        }
//    }
//}
//
////❗️ 동서남북 문제 dfs로 풀 때는
//    // bfs와는 다르게 함수 밖에서 출발점의 방문체크를 해준다! (내부에서 방문체크를 하지 못하기 때문)
//visited[R - 1][0] = true
//dfs(R - 1, 0, 1)
//print(cnt)
