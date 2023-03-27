//
//  20230327.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/27.
//

//func solution(_ maps:[String]) -> [Int] {
//
//    // 동서남북 이동경로
//    let dr = [1, -1, 0, 0]
//    let dc = [0, 0, 1, -1]
//
//    // map 상이 유효한 좌표인지
//    func isValid(_ r: Int, c: Int) -> Bool {
//        (0..<maps.count).contains(r) && (0..<maps[0].count).contains(c)
//    }
//
//    // 정답 배열
//    var ans = [Int]()
//    // 방문 배열
//    var visited = Array(repeating: Array(repeating: false, count: maps[0].count), count: maps.count)
//
//    // subscript로 탐색하기 쉽도록 [[String]]으로 변경
//    let maps = maps.map { $0.map { String($0) } }
//
//    // 연결된 node의 갯수를 세는 dfs (food를 더해서 리턴함)
//    func dfs(_ r: Int, _ c: Int) -> Int {
//        // 현재 위치 방문 처리
//        visited[r][c] = true
//        // 현재 위치 food
//        var food = Int(maps[r][c])!
//
//        for i in 0..<4 {
//            let nr = r + dr[i]
//            let nc = c + dc[i]
//            if isValid(nr, c: nc) && maps[nr][nc] != "X" && !visited[nr][nc] {
//                // 연결된 섬이 있으면 현재 food에 더하기
//                food += dfs(nr, nc)
//            }
//        }
//
//        // 더해진 food 리턴
//        return food
//
//    }
//
//    // 섬을 탐색: 섬을 만나면 연결된 섬의 food를 세서 리턴
//    for r in 0..<maps.count {
//        for c in 0..<maps[0].count {
//            if maps[r][c] != "X" && !visited[r][c] {
//                ans.append(dfs(r, c))
//            }
//        }
//    }
//
//    // 빈 배열이면 [-1] 리턴하게 함
//    return !ans.isEmpty ? ans.sorted() : [-1]
//}
//
//print(solution(["X591X","X1X5X","X231X", "1XXX1"]))
//print(solution(["XXX","XXX","XXX"]))
