//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 문제가 너무 막막할 때는 작은 조각으로 나누어서 구현하자!
 다 구해놓고 세려고 하지말고 세면서 구하자!
 */



// 초기값 넣기
for i in 1...N {
    cache[i][0] = 1 // 각 행의 처음과
    cache[i][i] = 1 // 마지막은 1
}

// 점화식을 통해서 cache 채워 나가기
for i in 1...N {
    for j in 0...N {
        if j == 0 || j == i {
            cache[i][j] = 1
        } else if cache[i][j] < 0 {
            cache[i][j] = (cache[i - 1][j - 1] + cache[i - 1][j]) % 10007
        }
    }
}

// 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]

// 이항 계수를 구해서 저장해놓을 이차원 배열 선언
var cache = Array(repeating: Array(repeating: -1, count: N + 1), count: N + 1)

// 재귀함수로 cache 채우기
func f(_ n: Int, _ k: Int) -> Int {
    // 이미 답을 구한 경우 cache에 있는 값 리턴
    if cache[n][k] != -1 {
        return cache[n][k]
    }
    
    // 각행의 첫 수, 마지막 수는 1
    if k == 0 || n == k {
        cache[n][k] = 1
    // 아니라면 점화식 사용
    } else {
        cache[n][k] = (f(n - 1, k - 1) + f(n - 1, k)) % 10007
    }
    
    // 모든 cache를 채우고 나서 원하는 값 리턴
    return cache[n][k]
}

print(f(N, K))

