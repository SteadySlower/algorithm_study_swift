//
//  20220816.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/16.
//

//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//var result = [String]()
//var visited = Array(repeating: false, count: N + 1)
//
//
//// 재귀로 dfs 구현
//func dfs() {
//    // 탈출 조건 (길이 M일 때)
//    if result.count == M {
//        print(result.joined(separator: " "))
//        return
//    }
//
//    // 방문체크하면서 1 ~ N 순회
//    for i in 1...N {
//        if !visited[i] {
//            visited[i] = true
//            result.append(String(i))
//            dfs()
//            visited[i] = false
//            _ = result.popLast()
//        }
//    }
//}
//
//dfs()

//// N과 M (12)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//
//// 결과 저장 배열
//var result = [String]()
//
//// 중복 체크 Set
//var check = Set<String>()
//
//func dfs(_ index: Int) {
//    if result.count == M {
//        let resultString = result.joined(separator: " ")
//        if !check.contains(resultString) {
//            check.insert(resultString)
//            print(resultString)
//        }
//        return //👉 if절이 실행되지 않더라도 return 되어야 함!
//    }
//
//    for i in index..<N {
//        result.append(String(array[i]))
//        dfs(i)
//        _ = result.popLast()
//    }
//}
//
//dfs(0)

// N과 M (11)

//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//
//// 결과 저장 배열
//var result = [String]()
//
//// 중복 체크 Set
//var check = Set<String>()
//
//func dfs() {
//    if result.count == M {
//        let resultString = result.joined(separator: " ")
//        if !check.contains(resultString) {
//            check.insert(resultString)
//            print(resultString)
//        }
//        return //👉 if절이 실행되지 않더라도 return 되어야 함!
//    }
//
//    for i in 0..<N {
//        result.append(String(array[i]))
//        dfs()
//        _ = result.popLast()
//    }
//}
//
//dfs()

// N과 M (10)

//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//    //👉 숫자는 정렬하기
//
//// 방문 체크 배열
//var visited = Array(repeating: false, count: N)
//// 탐색 결과 저장 배열
//var result = [String]()
//// 수열이 중복되는지 체크하는 배열
//var check = Set<String>()
//
//// dfs 구현
//func dfs(_ index: Int) {
//    // 탈출 조건
//    if result.count == M {
//        // 중복 체크해서 중복되지 않으면 출력
//        let resultString = result.joined(separator: " ")
//        if !check.contains(resultString) {
//            check.insert(resultString)
//            print(resultString)
//        }
//        return
//    }
//
//    // index부터 방문체크 하면서 완전탐색
//        // index부터 탐색을 하면 array가 정렬되어 있기 때문에 자동으로 비오름차순으로 수열이 만들어짐
//    for i in index..<N {
//        if !visited[i] {
//            visited[i] = true
//            result.append(String(array[i]))
//            dfs(i)
//            visited[i] = false
//            _ = result.popLast()
//        }
//    }
//}
//
//dfs(0)



//// N과 M (9)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//    //👉 숫자는 정렬하기
//
//// 방문 체크 배열
//var visited = Array(repeating: false, count: N)
//// 탐색 결과 저장 배열
//var result = [String]()
//// 수열이 중복되는지 체크하는 배열
//var check = Set<String>()
//
//// dfs 구현
//func dfs() {
//    // 탈출 조건
//    if result.count == M {
//        // 중복 체크해서 중복되지 않으면 출력
//        let resultString = result.joined(separator: " ")
//        if !check.contains(resultString) {
//            check.insert(resultString)
//            print(resultString)
//        }
//        return
//    }
//
//    // 방문체크 하면서 완전탐색
//    for i in 0..<N {
//        if !visited[i] {
//            visited[i] = true
//            result.append(String(array[i]))
//            dfs()
//            visited[i] = false
//            _ = result.popLast()
//        }
//    }
//}
//
//dfs()
