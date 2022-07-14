//
//  20220714.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/14.
//

//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// 2차원 배열에 입력 저장하기
//var matrix = [[Int]]()
//for _ in 0..<N {
//    matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! })
//}
//
//// 각 case 별로 이중 반복문으로 합 구하기
//let T = Int(readLine()!)!
//for _ in 0..<T {
//    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let i = line[0], j = line[1], x = line[2], y = line[3]
//    var sum = 0
//    for r in i...x {
//        for c in j...y {
//            sum += matrix[r - 1][c - 1]
//        }
//    }
//    print(sum)
//}

//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// 이차원 배열 및 cache 이차원 배열 만들기
//    //👉 0행과 0열에 0으로 한 줄씩 추가해서 예외처리를 편하게 할 수 있도록 (0은 합에 영향 없음)
//var matrix = [[Int]]()
//matrix.append(Array(repeating: 0, count: M + 1))
//    // 0 * (M + 1)의 행을 추가
//var cache: [[Int?]] = Array(repeating: Array(repeating: nil, count: M + 1), count: N + 1)
//for _ in 0..<N {
//    matrix.append([0] + readLine()!.split(separator: " ").map { Int(String($0))! })
//    //각 행의 맨 앞에 0 추가 (0열을 모두 0으로)
//}
//
//// (0, 0) ~ (r, c)의 합을 구하는 함수
//func dp(_ r: Int, _ c: Int) -> Int {
//    // 0행 혹은 0열이면 0
//    if r == 0 || c == 0 {
//        cache[r][c] = 0
//    }
//
//    // 초기값 세팅 (1, 1) ~ (1, 1)의 합은 matrix[1][1]
//    if r == 1 && c == 1 {
//        cache[r][c] = matrix[r][c]
//    }
//
//    // 점화식
//    if cache[r][c] == nil {
//        cache[r][c] = dp(r - 1, c) + dp(r, c - 1) - dp(r - 1, c - 1) + matrix[r][c]
//    }
//
//    return cache[r][c]!
//}
//
//// 각 case 별로 합 구하기
//let T = Int(readLine()!)!
//for _ in 0..<T {
//    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let i = line[0], j = line[1], x = line[2], y = line[3]
//    print(dp(x, y) - dp(x, j - 1) - dp(i - 1, y) + dp(i - 1, j - 1))
//}
