//
//  20220616.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/16.
//

////단지번호붙이기
//
//// 입력 받기
//let N = Int(readLine()!)!
//
//var matrix = [[Int]]()
//var check = Array(repeating: Array(repeating: false, count: N), count: N)
//for _ in 0..<N {
//    let line = readLine()!.map { Int(String($0))! }
//    matrix.append(line)
//}
//
//// 동서남북 좌표 변화
//let dr = [1, -1, 0, 0]
//let dc = [0, 0, 1, -1]
//
//// 현재 좌표가 valid한 좌표인지
//func isValid(r: Int, c: Int) -> Bool {
//    return r >= 0 && r < N && c >= 0 && c < N && matrix[r][c] == 1 ? true : false
//}
//
//// 방문한 node의 갯수를 반환하는 dfs
//func dfs(r: Int, c: Int) -> Int {
//    check[r][c] = true
//    var cnt = 1
//
//    for i in 0..<4 {
//        let nr = r + dr[i]
//        let nc = c + dc[i]
//        if isValid(r: nr, c: nc) && !check[nr][nc] {
//            cnt += dfs(r: nr, c: nc)
//        }
//    }
//
//    return cnt
//}
//
//// 결과 저장용 배열
//var results = [Int]()
//
//// 모든 좌표를 순회하면서 집을 만나면 dfs 실시
//for r in 0..<N {
//    for c in 0..<N {
//        if matrix[r][c] == 1 && !check[r][c] {
//            results.append(dfs(r: r, c: c)) //👉 dfs의 값 (= 연결된 집의 갯수)를 배열에 저장
//        }
//    }
//}
//
//// 정답 출력
//print(results.count)
//results.sorted().forEach { print($0) }

//// 입력 받기
//let N = Int(readLine()!)!
//var matrix = [[Character]]()
//for _ in 0..<N {
//    let line = readLine()!.map { $0 }
//    matrix.append(line)
//}
//
//// 방문체크용 배열
//var check = Array(repeating: Array(repeating: false, count: N), count: N)
//
//// 동서남북 좌표 변화
//let dr = [1, -1, 0, 0]
//let dc = [0, 0, 1, -1]
//
//// valid한 좌표인지 👉 color를 인자로 받아서 같은 색일 때만 true 반환
//func isValid(r: Int, c: Int, color: Character) -> Bool {
//    return r >= 0 && r < N && c >= 0 && c < N && matrix[r][c] == color ? true : false
//}
//
//// dfs 👉 마찬가지로 color를 인자로 받아서 같은 색만 재귀 돌도록
//func dfs(r: Int, c: Int, color: Character) {
//    check[r][c] = true
//
//    for i in 0..<4 {
//        let nr = r + dr[i]
//        let nc = c + dc[i]
//        if isValid(r: nr, c: nc, color: color) && !check[nr][nc] {
//            dfs(r: nr, c: nc, color: color)
//        }
//    }
//
//}
//
//// 결과 저장 변수
//var result1 = 0
//var result2 = 0
//
//// 비적록색약 dfs
//for r in 0..<N {
//    for c in 0..<N {
//        if !check[r][c] {
//            dfs(r: r, c: c, color: matrix[r][c])
//            result1 += 1
//        }
//    }
//}
//
//// 적록색약이 보이는 그림으로 변형
//for r in 0..<N {
//    for c in 0..<N {
//        if matrix[r][c] == "G" {
//            matrix[r][c] = "R"
//        }
//    }
//}
//
//// 방문 배열 reset
//check = Array(repeating: Array(repeating: false, count: N), count: N)
//
//// 적록색약 dfs
//for r in 0..<N {
//    for c in 0..<N {
//        if !check[r][c] {
//            dfs(r: r, c: c, color: matrix[r][c])
//            result2 += 1
//        }
//    }
//}
//
//// 결과 출력
//print(result1, result2)
