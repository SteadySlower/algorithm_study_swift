//
//  20220814.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/14.
//

//// N과 M (8)

//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//
//// 결과 저장 배열 & 문자열
//var result = [String]()
//var toPrint = ""
//
//// dfs 구현
//func dfs(_ index: Int) {
//    if result.count == M {
//        toPrint += result.joined(separator: " ") + "\n"
//        return
//    }
//
//    // array를 정렬했으므로 현재 index부터 순회하면 자동으로 비오름차순
//    for i in index..<N {
//        result.append(String(array[i]))
//        dfs(i)
//        _ = result.removeLast()
//    }
//}
//
//// 함수 실행 & 답 출력
//dfs(0)
//print(toPrint)
//// N과 M (7)
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//    //👉 정렬해서 입력 받기!
//
//// 중간 결과를 저장하는 배열
//var result = [String]()
//
//// print문을 한번만 쓰기 위한 String
//var toPrint = ""
//
//// dfs 구현
//func dfs() {
//    // 탈출 조건
//    if result.count == M {
//        toPrint += result.joined(separator: " ") + "\n"
//        return
//    }
//
//    // 중복이 가능하므로 중복 배열 없이 0 ~ N까지 순회
//    for i in 0..<N {
//        result.append(String(array[i]))
//        dfs()
//        _ = result.removeLast()
//    }
//}
//
//// 함수 실행
//dfs()
//print(toPrint)
