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

//✅ Swift로 dfs 구현하기

// 재귀함수로 dfs 구현
func dfs(_ node: Int) {
    check[node] = true //👉 현재 node 방문 체크
    
    // 현재 node와 연결된 정점들을 순회하면서
    for i in edgeList[node] {
        if !check[i] { //👉 아직 방문하지 않았다면
            dfs(i) //👉 dfs 실행
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var edgeList = Array(repeating: [Int](), count: N + 1)
var check = Array(repeating: false, count: N + 1)

for _ in 0..<M {
    let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
    edgeList[edge[0]].append(edge[1])
    edgeList[edge[1]].append(edge[0])
}

var cnt = 0

for i in 1..<(N + 1) {
    if !check[i] {
        cnt += 1
        dfs(i)
    }
}

print(cnt)

