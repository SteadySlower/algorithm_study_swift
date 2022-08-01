//
//  20220801.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/01.
//

//// 외판원 순회 2
//
//// dfs 구현
//func dfs(start: Int, now: Int, depth: Int) {
//    // 모든 도시를 순회한 경우
//    if depth == N {
//        // cost가 최솟값이면 갱신
//        result = min(result, cost)
//        return
//    }
//
//    // 모든 도시를 순회하면서
//    for i in 0..<N {
//        if !visited[i] && W[now][i] != 0 {
//            // 백트래킹 1 : 아직 마지막이 아닌데 출발지로 돌아가는 경우
//            if depth < N - 1 && i == start { continue }
//            // 백트래킹 2 : 이미 최소 비용보다 많은 비용이 소모된 경우
//            if cost + W[now][i] >= result { continue }
//            visited[i] = true
//            cost += W[now][i]
//            dfs(start: start, now: i, depth: depth + 1)
//            visited[i] = false
//            cost -= W[now][i]
//        }
//    }
//}
//
//// 입력 받기
//let N = Int(readLine()!)!
//var W = [[Int]]()
//for _ in 0..<N {
//    W.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//}
//
//// dfs를 위한 변수들
//var result = Int.max
//var visited = Array(repeating: false, count: N)
//var cost = 0
//
//// 모든 도시를 출발지로 dfs를 돌린다.
//for i in 0..<N {
//    dfs(start: i, now: i, depth: 0)
//}
//
//print(result)


//// 로또
//
//// dfs 내부에 결과값을 가지고 있는 경우
//while true {
//    func dfs(now: [Int], index: Int, depth: Int) {
//        if depth == 6 {
//            for num in now {
//                print(num, terminator: " ")
//            }
//            print()
//            return
//        }
//
//        for i in index..<k {
//            dfs(now: now + [S[i]], index: i + 1, depth: depth + 1)
//        }
//    }
//
//    var S = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let k = S.removeFirst()
//    if k == 0 { break }
//    dfs(now: [], index: 0, depth: 0)
//    print()
//}
//
//// dfs 외부에 결과값을 가지고 있는 경우
//
//while true {
//    func dfs(index: Int, depth: Int) {
//        if depth == 6 {
//            for num in result {
//                print(num, terminator: " ")
//            }
//            print()
//            return
//        }
//
//        for i in index..<k {
//            result.append(S[i])
//            dfs(index: i + 1, depth: depth + 1)
//            _  = result.popLast()!
//        }
//    }
//
//    var S = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let k = S.removeFirst()
//    if k == 0 { break }
//    var result = [Int]()
//    dfs(index: 0, depth: 0)
//    print()
//}



 
//// 직사각형 네개의 합집합의 면적 구하기
//
//// 좌표평면 이차원 배열로 구현
//var matrix = Array(repeating: Array(repeating: 0, count: 101), count: 101)
//
//// 직사각형이 차지하는 영역 좌표평면에 1로 표시하기
//for _ in 0..<4 {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let (minX, minY, maxX, maxY) = (input[0], input[1], input[2], input[3])
//    for x in minX..<maxX {
//        for y in minY..<maxY {
//            matrix[x][y] = 1
//        }
//    }
//}
//
//// 1을 모두 세서 더하면 너비가 나온다.
//var ans = 0
//
//for x in 0..<101 {
//    for y in 0..<101 {
//        ans += matrix[x][y]
//    }
//}
//
//print(ans)
