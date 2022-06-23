//
//  20220623.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/23.
//

//// 부분 수열의 합
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], S = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//func combination(of array: [Int], length: Int) -> [[Int]] {
//    var result = [[Int]]()
//    
//    func combi(_ nowIndex: Int, _ now: [Int]) {
//        if now.count == length { result.append(now); return }
//        
//        for i in nowIndex..<array.count {
//            combi(i + 1, now + [array[i]])
//        }
//    }
//    
//    combi(0, [])
//    
//    return result
//}
//
//var cnt = 0
//
//for length in 1...N {
//    let results = combination(of: array, length: length)
//    for result in results {
//        if result.reduce(0, +) == S { cnt += 1 }
//    }
//}
//
//print(cnt)

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], S = input[1]
//let array = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//var cnt = 0
//var sum = 0
//
//func dfs(now: Int, length: Int) {
//    if sum == S && length > 0 { cnt += 1 }
//    
//    for i in now..<array.count {
//        sum += array[i]
//        dfs(now: i + 1, length: length + 1)
//        sum -= array[i]
//    }
//}
//
//dfs(now: 0, length: 0)
//print(cnt)

//// 이미 구한 피보나치 수열을 저장할 배열 만들기 (n + 1의 크기만큼)
//var cache = Array(repeating: -1, count: n + 1)
//
//// 피보나치 수열의 초기값
//cache[0] = 0
//cache[1] = 1
//
//// 이전에 구한 수를 이용해서 다음 수를 구한다 (ex. 0과 1을 이용해서 2의 수를 구한다)
//for i in 2..<(n + 1) {
//    cache[i] = cache[i - 2] + cache[i - 1]
//}
//
//print(cache[n])

// 재귀함수 구현

//let n = Int(readLine()!)!
//var cache = Array(repeating: -1, count: n + 1)
//cache[0] = 0
//cache[1] = 1
//
//func fibo(_ n: Int) -> Int {
//    if cache[n] < 0 {
//        cache[n] = fibo(n - 2) + fibo(n - 1)
//    }
//
//    return cache[n]
//}
//
//print(fibo(n))
