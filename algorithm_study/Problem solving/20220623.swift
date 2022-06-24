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

//// 초기값 넣기
//for i in 1...N {
//    cache[i][0] = 1 // 각 행의 처음과
//    cache[i][i] = 1 // 마지막은 1
//}
//
//// 점화식을 통해서 cache 채워 나가기
//for i in 1...N {
//    for j in 0...N {
//        if j == 0 || j == i {
//            cache[i][j] = 1
//        } else if cache[i][j] < 0 {
//            cache[i][j] = (cache[i - 1][j - 1] + cache[i - 1][j]) % 10007
//        }
//    }
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], K = input[1]
//
//// 이항 계수를 구해서 저장해놓을 이차원 배열 선언
//var cache = Array(repeating: Array(repeating: -1, count: N + 1), count: N + 1)
//
//// 재귀함수로 cache 채우기
//func f(_ n: Int, _ k: Int) -> Int {
//    // 이미 답을 구한 경우 cache에 있는 값 리턴
//    if cache[n][k] != -1 {
//        return cache[n][k]
//    }
//
//    // 각행의 첫 수, 마지막 수는 1
//    if k == 0 || n == k {
//        cache[n][k] = 1
//    // 아니라면 점화식 사용
//    } else {
//        cache[n][k] = (f(n - 1, k - 1) + f(n - 1, k)) % 10007
//    }
//
//    // 모든 cache를 채우고 나서 원하는 값 리턴
//    return cache[n][k]
//}
//
//print(f(N, K))
