//
//  20220615.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/15.
//

////✅ 재귀함수로 구현한 dfs로 완전탐색한 node 갯수 세는 법
//func dfs(r: Int, c: Int) -> Int {
//    check[r][c] = true
//    var cnt = 1 //👉 자기자신 node 갯수
//    for i in 0..<4 {
//        let nr = r + dr[i]
//        let nc = c + dc[i]
//        if isValid(r: nr, c: nc) && !check[nr][nc] {
//            cnt += dfs(r: nr, c: nc) //👉 현재 cnt에 현재 node에 연결된 node의 갯수만큼 더한다.
//        }
//    }
//    return cnt //👉 최종 갯수 리턴
//    //✅ 자기 자신만 연결되어 있다면 1을 리턴
//    //✅ 연결된 node가 있다면 그것들 까지 포함해서 리턴
//    //⭐️ 최종적으로 콜스택 맨 아래 있는 dfs의 cnt에는 모든 node들의 갯수가 cnt에 추가되게 됨.
//}
//
//// stack을 활용한 dfs
//func dfs(r: Int, c: Int) -> Int {
//    var stack = [(Int, Int)]()
//    stack.append((r, c))
//    check[r][c] = true
//    var cnt = 1 //👉 방문한 node의 갯수
//
//    while !stack.isEmpty { //👉 stack이 빌 때까지
//        let (r, c) = stack.popLast()!
//        for i in 0..<4 {
//            let nr = r + dr[i]
//            let nc = c + dc[i]
//            if isValid(r: nr, c: nc) && !check[nr][nc] {
//                stack.append((nr, nc))
//                cnt += 1 //👉 동서남북 중에 다른 node를 발견하면 1개 추가
//                check[nr][nc] = true
//            }
//        }
//    }
//
//    return cnt
//}
//
//// 현재 좌표가 valid한 좌표인지 알아보는 함수
//func isValid(r: Int, c: Int) -> Bool {
//    return r > 0 && r <= N && c > 0 && c <= M && matrix[r][c] ? true : false
//    // 행렬의 범위 안에 있고 + 해당 위치에 음식물 쓰레기 존재
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1], K = input[2]
//
//// 동서남북 방향 이동용 배열
//let dr = [1, -1, 0, 0]
//let dc = [0, 0, 1, -1]
//
//// 행렬 2개
//var matrix = Array(repeating: Array(repeating: false, count: M + 1), count: N + 1)
//var check = Array(repeating: Array(repeating: false, count: M + 1), count: N + 1)
//
//// 음식물 쓰레기의 좌표 표시
//for _ in 0..<K {
//    let coord = readLine()!.split(separator: " ").map { Int(String($0))! }
//    matrix[coord[0]][coord[1]] = true
//}
//
//// 최종 결과 저장
//var result = 0
//
//for r in 1...N {
//    for c in 1...M {
//        if matrix[r][c] {
//            result = max(dfs(r: r, c: c), result) //👉 현재 결과와 dfs에서 구한 값 중에 최대값으로 갱신
//        }
//    }
//}
//
//print(result)
