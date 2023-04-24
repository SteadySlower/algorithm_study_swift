//
//  20230424.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/24.
//

//
//func combination(_ array: [Int]) -> [[Int]] {
//    var result = [[Int]]()
//
//    func combi(_ now: [Int], _ index: Int) {
//        if now.count == 2 {
//            result.append(now)
//            return
//        }
//        for i in index..<array.count {
//            combi(now + [array[i]], i + 1)
//        }
//    }
//
//    combi([], 0)
//
//    return result
//}
//
//func isCouple(_ pair: [Int]) -> Bool {
//    let set1 = Set([1, 2, 3, 4].map({ $0 * pair[0] }))
//    let set2 = Set([1, 2, 3, 4].map({ $0 * pair[1] }))
//    return !set1.intersection(set2).isEmpty
//}
//
//
//func solution(_ weights:[Int]) -> Int64 {
//
//    let pairs = combination(weights)
//    var ans = 0
//
//    for pair in pairs {
//        if isCouple(pair) { ans += 1 }
//    }
//
//    return Int64(ans)
//}
//
//print(solution([100,180,360,100,270]))

//
//func solution(_ weights:[Int]) -> Int64 {
//
//    let w1 = weights
//    let w2 = w1.map { $0 * 2 }
//    let w3 = w1.map { $0 * 3 }
//    let w4 = w1.map { $0 * 4 }
//
//    let w = [w1, w2, w3, w4]
//
//    var ans = 0
//
//    for i in 0..<weights.count {
//        for j in (i + 1)..<weights.count {
//            loop: for k in 0..<4 {
//                for l in 0..<4 {
//                    if w[k][i] == w[l][j] { ans += 1; break loop }
//                }
//            }
//        }
//    }
//
//    return Int64(ans)
//}
//
//print(solution([100,180,360,100,270]))
