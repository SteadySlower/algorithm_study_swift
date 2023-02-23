//
//  20230223.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/22.
//

//🚫 dfs는 시간초과
//func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
//
//    let operations: [(Int) -> Int] = [
//        { x in x + n },
//        { x in x * 2 },
//        { x in x * 3 }
//    ]
//
//    var cost = Array(repeating: Int.max, count: y + 1)
//
//    var ans = Int.max
//
//    func dfs(_ x: Int, _ count: Int) {
//
//        if x == y {
//            ans = min(ans, count)
//            return
//        }
//
//        for operation in operations {
//            let nx = operation(x)
//            if nx <= y && cost[nx] > count + 1 {
//                cost[nx] = count + 1
//                dfs(nx, count + 1)
//            }
//        }
//    }
//
//    dfs(x, 0)
//
//    return ans == Int.max ? -1 : ans
//}

//func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
//
//    let operations: [(Int) -> Int] = [
//        { x in x + n },
//        { x in x * 2 },
//        { x in x * 3 }
//    ]
//
//    var dp = Array(repeating: Int.max, count: y + 1)
//    dp[x] = 0
//
//    for now in x..<y {
//        guard dp[now] != Int.max else { continue }
//        for operation in operations {
//            let next = operation(now)
//            if next <= y {
//                dp[next] = min(dp[next], dp[now] + 1)
//            }
//        }
//    }
//
//    return dp[y] == Int.max ? -1 : dp[y]
//}
//
//print(solution(10, 40, 5))
//print(solution(10, 40, 30))
//print(solution(2, 5, 4))

