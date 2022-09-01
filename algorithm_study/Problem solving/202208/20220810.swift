//
//  20220810.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/10.
//

//// N과 M (2)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//// dfs를 구현할 때 전역 변수를 통해서 함수에 전달한 인자를 줄일 수 있다.
//    // depth는 result의 길이로 대체 가능
//var result = [String]()
//
//// 중복되면 안되니까 방문 배열이 필요함
//var visited = Array(repeating: false, count: N + 1)
//
//// dfs 구현
//func dfs(_ now: Int) {
//    // 탈출 조건
//    if result.count == M {
//        print(result.joined(separator: " "))
//        return
//    }
//
//    // 오름차순으로 출력되게 now ~ N까지 반복문 설정
//    for i in now...N {
//        if !visited[i] {
//            visited[i] = true
//            result.append("\(i)")
//            dfs(i)
//            visited[i] = false
//            _ = result.popLast()
//        }
//    }
//}
//
//dfs(1)
