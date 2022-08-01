//
//  20220702.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/02.
//

// Maximum Subarray

/*
 정의: f(i, j) = X[i] + ... + X[j]
 초기값: f(i, i) = X[i]
 점화식: f(i, j) = f(i, j - 1) + X[j]
 */


//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let N = Int(readLine()!)!
//    let X = readLine()!.split(separator: " ").map { Int(String($0))! }
//    var cache = Array(repeating: Array(repeating: 0, count: N), count: N)
//
//    // 모든 부분 수열의 합 구하기
//    for i in 0..<N {
//        for j in 0..<N {
//            if i > j {
//                continue
//            } else if i == j {
//                cache[i][j] = X[i]
//            } else {
//                cache[i][j] = cache[i][j - 1] + X[j]
//            }
//        }
//    }
//
//    // 완전탐색을 통해서 최댓값 구하기
//    var result = Int.min //👉 최댓값을 구할 때는 Int의 가장 작은 값과 비교
//    for i in 0..<N {
//        for j in 0..<N {
//            if i > j { continue }
//            result = max(cache[i][j], result)
//        }
//    }
//    print(result)
//}

//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let N = Int(readLine()!)!
//    let X = readLine()!.split(separator: " ").map { Int(String($0))! }
//    var cache = [X[0]]
//    for i in 1..<N {
//        cache.append(max(cache[i - 1] + X[i], X[i]))
//    }
//
//    var result = Int.min
//    for i in 0..<N {
//        result = max(cache[i], result)
//    }
//    print(result)
//}

