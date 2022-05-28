//
//  20220528.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/28.
//

//// 조합을 구하는 함수
//    // array: 조합을 구하고자 하는 대상 (정수, 문자열)등을 배열에 담아 전달
//    // length: 원하는 조합의 길이
//func combination<T: Comparable>(of array: Array<T>, length: Int) -> [[T]] {
//    var result = [[T]]() // 👉 결과를 담을 배열
//    
//    // dfs를 수행하는 함수
//    func combi(nowIndex index: Int, _ now: Array<T>) {
//        // 재귀함수 탈출 조건 = 현재의 조합의 길이가 원하는 조합의 길이와 동일
//        if now.count == length {
//            result.append(now)
//            return
//        }
//        
//        // array를 전부 순환하는 것이 아니라 index부터 순회하므로
//        // 순열과는 달리 방문 체크하는 배열 없이도 중복되지 않게 할 수 있다.
//        for i in index..<array.count {
//            combi(nowIndex: i + 1, now + [array[i]])
//        }
//    }
//    
//    combi(nowIndex: 0, [])
//    
//    return result
//}
//
//// 부분 수열의 합
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], S = input[1]
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//var result = 0
//
//for length in 1...N {
//    let combinations = combination(of: nums, length: length)
//    for combination in combinations {
//        if combination.reduce(0, +) == S {
//            result += 1
//        }
//    }
//}
//
//print(result)
