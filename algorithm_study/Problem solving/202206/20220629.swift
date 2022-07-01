//
//  20220628.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/29.
//

//// 정수 삼각형
//
//// 입력 받기
//let n = Int(readLine()!)!
//var matrix = [[Int]]()
//
//// DP를 수행하기 위한 캐시
//var cache = Array(repeating: Array(repeating: -1, count: n), count: n)
//
//// 입력을 받는데 matrix가 n * n이 되도록 사각형의 빈칸에는 0 채우기 (index error 방지)
//    //👉 갈 수 없는 칸은 0으로 처리해서 경로의 합에 영향이 없도록 한다!
//for i in 0..<n {
//    matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! } + Array(repeating: 0, count: n - i - 1))
//}
//
//// DP 수행
//func f(r: Int, c: Int) -> Int {
//    // matrix의 범위에서 벗어나면 갈 수 없는 길 (= 0)
//    if r < 0 || r >= n || c < 0 || c >= n {
//        return 0
//    }
//
//    // 점화식 활용
//    if cache[r][c] < 0 {
//        cache[r][c] = matrix[r][c] + max(f(r: r - 1, c: c - 1), f(r: r - 1, c: c))
//    }
//
//    return cache[r][c]
//}
//
//// 결과를 저장할 변수
//var result = 0
//
//// 최종 목적지 n열의 최댓값을 구하기
//for c in 0..<n {
//    result = max(f(r: n - 1, c: c), result)
//}
//
//print(result)
