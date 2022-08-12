//
//  20220812.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/12.
//

//// N과 M (6)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// 입력 배열 with 정렬
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//
//// 결과 및 방문 배열
//var result = [Int]()
//
//// dfs 구현
//func dfs(_ now: Int) {
//    // 탈출 조건
//    if result.count == M {
//        print(result.map { String($0) }.joined(separator: " "))
//        return
//    }
//
//    // 오름차순이어야 하므로 now부터 순환
//    for i in now..<N {
//        // 오름차순 예외 처리 (오름차순이어야 한다.)
//        guard array[now] < array[i] else { continue }
//        result.append(array[i])
//        dfs(i)
//        _ = result.removeLast()
//    }
//}
//
//dfs(0)

//// N과 M (5)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//
//// 결과 저장 & 방문체크
//var result = [Int]()
//var visited = Array(repeating: false, count: N)
//
//// dfs 구현
//func dfs() {
//    // 탈출 조건
//    if result.count == M {
//        print(result.map { String($0) }.joined(separator: " "))
//        return
//    }
//
//    // 반복문 (방문체크해야함!)
//    for i in 0..<N {
//        if !visited[i] {
//            visited[i] = true
//            result.append(array[i])
//            dfs()
//            visited[i] = false
//            _ = result.removeLast()
//        }
//    }
//}
//
//dfs()

//// N과 M (4)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// 결과 저장 배열
//var result = [Int]()
//
//// dfs 구현
//func dfs(_ now: Int) {
//    // 탈출조건 (수열의 길이 == M)
//    if result.count == M {
//        print(result.map{ String($0) }.joined(separator: " "))
//        return
//    }
//
//    // 반복문 (Range의 범위에 주의!)
//    for i in now...N {
//        guard now <= i else { continue } //👉 비오름차순 예외 처리
//        result.append(i)
//        dfs(i)
//        _ = result.popLast()!
//    }
//}
//
//dfs(1)
