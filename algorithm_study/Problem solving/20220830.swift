//
//  20220830.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/31.
//

//import Foundation
//
//func solution(_ n:Int, _ wires:[[Int]]) -> Int {
//    // 연결된 node의 갯수를 세는 dfs
//    func dfs(_ now: Int) -> Int {
//        visited[now] = true //👉 방문한 송전탑은 체크해두어야 함
//        var count = 1
//
//        for i in 1...n {
//            if !visited[i] && matrix[now][i] {
//                count += dfs(i)
//            }
//        }
//
//        return count
//    }
//
//    // 간선을 연결 행렬로 표현하기
//    var matrix = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
//    for wire in wires {
//        let v1 = wire[0]
//        let v2 = wire[1]
//        matrix[v1][v2] = true
//        matrix[v2][v1] = true
//    }
//
//    // 방문 체크 배열 및 최솟값을 저장할 변수
//    var visited = Array(repeating: false, count: n + 1)
//    var ans = Int.max
//
//    // 연결된 모든 전선을 순회하면서 끊고 송전탑 세기
//    for wire in wires {
//
//        let v1 = wire[0]
//        let v2 = wire[1]
//
//        // 전선 끊기
//        matrix[v1][v2] = false
//        matrix[v2][v1] = false
//
//        // 각각의 전력망의 송전탑 수를 저장할 배열
//        var counts = [Int]()
//
//        // 전력망의 송전탑의 수를 dfs로 세기
//        for i in 1...n {
//            if !visited[i] {
//                counts.append(dfs(i))
//            }
//        }
//
//        // 송전탑 차이의 최솟값 업데이트
//        ans = min(abs(counts[0] - counts[1]), ans)
//
//        // 방문 배열 및 끊은 원상복구
//        visited =  Array(repeating: false, count: n + 1)
//        matrix[v1][v2] = true
//        matrix[v2][v1] = true
//    }
//
//    return ans
//}


// 정렬을 통해 풀 수 있지 않을까 생각했지만 어떤 것을 기준으로 정렬해도 안됨 -> 완전탐색

//import Foundation
//
//func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
//    var visited = Array(repeating: false, count: dungeons.count)
//    var ans = 0
//
//    // dfs 구현
//    func dfs(_ now: Int, depth: Int) {
//        // 탈출조건 없이 dfs 돌 때마다 ans 업데이트
//        ans = max(depth, ans)
//
//        // 모든 던전 완전 탐색
//        for i in 0..<dungeons.count {
//            if !visited[i] && now >= dungeons[i][0] {
//                visited[i] = true
//                dfs(now - dungeons[i][1], depth: depth + 1)
//                visited[i] = false
//            }
//        }
//    }
//
//    dfs(k, depth: 0)
//
//    return ans
//}

//import Foundation
//
//func solution(_ brown:Int, _ yellow:Int) -> [Int] {
//    // 높이를 1부터 탐색
//    var height = 1
//
//    while true {
//        // 너비 구하기
//        let width = (brown + 4) / 2 - height
//        // 넓이 구하기
//        let size = height * width
//        // 넓이 == brown + yellow 라면 정답 처리
//        if size == brown + yellow {
//            return [width, height]
//        }
//        // 아니면 다시 탐색
//        height += 1
//    }
//}
