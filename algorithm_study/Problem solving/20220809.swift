//
//  20220809.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/09.
//

//// N과 M (1)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// 숫자 배열 만들기
//let array = Array(1...N)
//
//// 방문 배열 만들기
//var visited = Array(repeating: false, count: N)
//
//// 재귀로 dfs 구현
//func dfs(now: String, depth: Int) {
//    // 탈출 조건 (길이 M일 때)
//    if depth == M {
//        print(now.dropFirst()) //👉 맨 처음 공백은 제거하고 출력
//        return
//    }
//
//    // 완전 탐색 수행
//    for i in 0..<N {
//        if !visited[i] {
//            visited[i] = true
//            dfs(now: now + " \(array[i])", depth: depth + 1)
//            visited[i] = false
//        }
//    }
//}
//
//dfs(now: "", depth: 0)
