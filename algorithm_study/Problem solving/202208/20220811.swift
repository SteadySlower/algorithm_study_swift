//
//  20220811.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/11.
//

//// N과 M (3)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// 결과 저장용 배열
//var result = [String]()
//
//// dfs 구현
//func dfs(depth: Int) {
//    // 탈출조건 (길이 == M)
//    if result.count == M {
//        print(result.joined(separator: " "))
//        return
//    }
//
//    // 중복되어도 괜찮으니까 1 ~ N 반복문 + 중복체크 없음
//    for i in 1...N {
//        result.append("\(i)")
//        dfs(depth: depth + 1)
//        _ = result.popLast()
//    }
//}
//
//dfs(depth: 0)
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
//
//// dfs 구현: 1번 컴퓨터와 연결된 컴퓨터를 센다
//func dfs(now: Int) -> Int {
//    // 현재 dfs를 돌고 있는 컴퓨터 1대
//    var cnt = 1
//
//    for i in adj[now] {
//        if !visited[i] {
//            visited[i] = true
//            cnt += dfs(now: i) //👉 현재 dfs를 돌고 있는 컴퓨터에 연결된 컴퓨터 추가
//        }
//    }
//
//    return cnt
//}
//
//// 1번 컴퓨터 때문에 감염되는 컴퓨터의 숫자를 구해야 하므로 1번 컴퓨터 1개는 제외하고 출력한다.
//print(dfs(now: 1) - 1)
