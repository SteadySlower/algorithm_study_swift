//
//  20220803.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/03.
//

//// 병든 나이트
//
//let dr = [-2, -1, 1, 2]
//let dc = [1, 2, 2, 1]
//
//func isValid(_ r: Int, _ c: Int) -> Bool {
//    r >= 0 && r < N && c >= 0 && c < M
//}
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//var visited = Array(repeating: Array(repeating: false, count: M), count: N)
//var used = Array(repeating: false, count: 4)
//var cnt = 0
//
//func dfs(_ r: Int, _ c: Int, _ depth: Int) {
//
//    if depth >= 4 {
//        if !used.contains(false) {
//            cnt += 1
//        }
//    } else {
//        cnt += 1
//    }
//
//    for i in 0..<4 {
//        let nr = r + dr[i]
//        let nc = c + dc[i]
//        if isValid(nr, nc) && !visited[nr][nc] {
//            visited[nr][nc] = true
//            used[i] = true
//            dfs(nr, nc, depth + 1)
//            used[i] = false
//        }
//    }
//}
//
//dfs(N - 1, 0, 0)
//
//print(cnt)

//// 행렬
//
//// 원소를 뒤집는 extension
//extension Int {
//    mutating func toggle() {
//        switch self {
//        case 0: self = 1; return
//        case 1: self = 0; return
//        default: return
//        }
//    }
//}
//
//// 두 행렬이 동일한지 확인하기 위해서 == 구현
//    // 모든 원소가 동일하면 true 하나라도 틀리면 false
//extension Array where Element == [Int] {
//    static func ==(lhs: [[Int]], rhs: [[Int]]) -> Bool {
//        for i in 0..<N {
//            for j in 0..<M {
//                if lhs[i][j] != rhs[i][j] { return false }
//            }
//        }
//        return true
//    }
//}
//
//// 3 x 3 사이즈의 행렬의 원소를 뒤집는 연산
//func f(_ r: Int, _ c: Int) {
//    // r행, c열을 (0, 0)으로 하는 3 x 3 행렬을 구할 수 없다면 실행하지 않음
//    guard r + 2 < N && c + 2 < M else { return }
//    for i in r..<(r + 3) {
//        for j in c..<(c + 3) {
//            A[i][j].toggle()
//        }
//    }
//}
//
//// 입력
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//var A = [[Int]]()
//var B = [[Int]]()
//
//for _ in 0..<N {
//    A.append(readLine()!.map { Int(String($0))! })
//}
//
//for _ in 0..<N {
//    B.append(readLine()!.map { Int(String($0))! })
//}
//
//// 연산의 횟수 정하기
//var cnt = 0
//
//// 그리디 연산 수행: r행 c열의 A와 B의 원소가 다르면 그 점을 기준으로 연산 실행
//for r in 0..<N {
//    for c in 0..<M {
//        if A[r][c] != B[r][c] {
//            f(r, c)
//            cnt += 1
//        }
//    }
//}
//
//// 최종적으로 동일하게 만들 수 있으면 cnt, 안되면 -1
//if A == B {
//    print(cnt)
//} else {
//    print(-1)
//}
