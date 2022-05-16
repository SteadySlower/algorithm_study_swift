//
//  20220515.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/16.
//

//// 부녀회장이 될테야
//
//// i층 j호의 사람을 구하는 함수
//func countPeople(i: Int, j: Int) -> Int {
//    var result = 0
//    for k in 1...j {
//        result += matrix[i - 1][k]
//    }
//    return result
//}
//
//// k와 n의 크기가 최대 14 밖에 안되므로 미리 전체 아파트의 사람수를 구하고 시작합니다.
//
//// 2차원 배열 init
//var matrix = Array(repeating: Array(repeating: 0, count: 15), count: 15)
//
//// 1층의 i호에 i명의 사람이 산다.
//for i in 1..<15 {
//    matrix[0][i] = i
//}
//
//// i층 j호의 사람을 미리 구한다.
//for i in 1..<15 {
//    for j in 1..<15 {
//        matrix[i][j] = countPeople(i: i, j: j)
//    }
//}
//
//// 테스트 케이스를 받아서 출력한다.
//let T = Int(readLine()!)!
//
//(0..<T).forEach { _ in
//    let k = Int(readLine()!)!
//    let n = Int(readLine()!)!
//    print(matrix[k][n])
//}

//func countPeople(k: Int, n: Int) -> Int {
//    //⭐️ 재귀함수 탈출 조건
//        // 0층이라면 n호에는 n명이 산다 or 어떤 층이건 간에 1호라면 무조건 1명이 산다.
//    if k == 0 || n == 1 {
//        return n
//    }
//    
//    //⭐️ k층 n호의 사람 수는 (k - 1)층 n호의 사람 수 + k층 (n - 1)호의 사람수
//        // 왜냐하면 k층 (n - 1)호에는 이미 (k - 1)층 1 ~ (n - 1)호의 사람수가 모두 더해져 있다.
//        // 따라서 (k - 1)층 1 ~ n호까지의 사람을 구하기 위해서는 (k - 1)층 n호의 사람수만 더해주면 된다.
//    return countPeople(k: k - 1, n: n) + countPeople(k: k, n: n - 1)
//}
//
//let T = Int(readLine()!)!
//
//(0..<T).forEach { _ in
//    let k = Int(readLine()!)!
//    let n = Int(readLine()!)!
//    print(countPeople(k: k, n: n))
//}

/*
 ⭐️ 풀이 전략
 1. 이동 횟수별 최대 이동거리를 구하고
 2. x와 y 사이의 거리에 맞추어 최소 이동횟수를 구한다.
 
 ⭐️ 규칙성 찾기 = 직접 적어보기
 이동 횟수별 최대 이동거리
 1회: 1 = 1
 2회: 1 1 = 2
 3회: 1 2 1 = 4
 4회: 1 2 2 1 = 6
 5회: 1 2 3 2 1 = 9
 6회: 1 2 3 3 2 1 = 12
 7회: 1 2 3 4 3 2 1 = 16
 
 ⭐️ 규칙성 = 1씩 증가하는 등차수열을 가운데를 2개 + 홀수/짝수가 규칙성이 다름
    등차수열의 합 공식 = n * (n + 1) / 2
 
 1. 짝수일 때 규칙
    2n회 이동할 때 최대 거리 = (1 ~ n의 합) * 2 = n * (n + 1)
 2. 홀수일 때 규칙
    (2n + 1)회 이동할 때 최대 거리 (1 ~ n의 합) * 2 + (n + 1) = n * (n + 1) + (n + 1) = (n + 1)^2
 */

//import Foundation
//
//let T = Int(readLine()!)!
//
//(0..<T).forEach { _ in
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let x = input[0]
//    let y = input[1]
//    let distance = Double(y - x)
//    var n = 0.0
//
//    while true {
//        if distance <= n * (n + 1) {
//            print(Int(2 * n))
//            break
//        } else if distance <= pow(n + 1, 2) {
//            print(Int(2 * n + 1))
//            break
//        } else {
//            n += 1
//        }
//    }
//}
//
//let T = Int(readLine()!)!
//
//(0..<T).forEach { _ in
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let x = input[0]
//    let y = input[1]
//    let distance = y - x
//    var n = 0
//    
//    while true {
//        if distance <= n * (n + 1) {
//            print(2 * n)
//            break
//        } else if distance <= (n + 1) * (n + 1) {
//            print(2 * n + 1)
//            break
//        } else {
//            n += 1
//        }
//    }
//}
