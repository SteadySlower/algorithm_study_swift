//
//  20230126.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/26.
//

//struct Route {
//    let cost: Int
//    let route: [Int]
//}
//
//struct Queue<T> {
//    private var index = 0
//    private var queue = [T]()
//
//    var isEmpty: Bool {
//        queue.count - index == 0
//    }
//
//    mutating func push(_ e: T) {
//        queue.append(e)
//    }
//
//    mutating func pop() -> T {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//
//}
//
//func solution(_ n:Int, _ s:Int, _ a:Int, _ b:Int, _ fares:[[Int]]) -> Int {
//
//    var matrix = Array(repeating: Array(repeating: Int.max, count: n + 1), count: n + 1)
//
//    for fare in fares {
//        let c = fare[0]
//        let d = fare[1]
//        let f = fare[2]
//        matrix[c][d] = f
//        matrix[d][c] = f
//    }
//
////    var routes = Array(repeating: Route(cost: Int.max, route: []), count: n + 1)
//
//    // DFS 테스트로 구현
//
//    var visitA = Array(repeating: false, count: n + 1)
//    var visitB = Array(repeating: false, count: n + 1)
//
//    var ans = Int.max
//
//    func dfs(_ nowA: Int, _ nowB: Int, isTogether: Bool, _ cost: Int) {
//        print("in")
//        if nowA == a && nowB == b {
//            ans = min(ans, cost)
//            return
//        }
//
//        if isTogether {
//            for i in 1...n {
//                for j in 1...n {
//                    if !visitA[i] && matrix[nowA][i] < Int.max && !visitB[j] && matrix[nowB][j] < Int.max {
//                        if i == j {
//                            visitA[i] = true
//                            visitB[j] = true
//                            dfs(i, j, isTogether: true, cost + matrix[nowA][i])
//                        } else {
//                            visitA[i] = true
//                            visitB[j] = true
//                            dfs(i, j, isTogether: false, cost + matrix[nowA][i] + matrix[nowB][j])
//                        }
//                    }
//                }
//            }
//        } else {
//            for i in 1...n {
//                for j in 1...n {
//                    if !visitA[i] && matrix[nowA][i] < Int.max && !visitB[j] && matrix[nowB][j] < Int.max {
//                        visitA[i] = true
//                        visitB[j] = true
//                        dfs(i, j, isTogether: false, cost + matrix[nowA][i] + matrix[nowB][j])
//                    }
//                }
//            }
//        }
//    }
//
//    dfs(s, s, isTogether: true, 0)
//
//    return ans
//}
//
//print(solution(6, 4, 6, 2, [[4, 1, 10], [3, 5, 24], [5, 6, 2], [3, 1, 41], [5, 1, 24], [4, 6, 50], [2, 4, 66], [2, 3, 22], [1, 6, 25]]))
