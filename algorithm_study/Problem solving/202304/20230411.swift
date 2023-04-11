//
//  20230411.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/11.
//

//func solution(_ sequence:[Int], _ k:Int) -> [Int] {
//
//    var matrix = Array(repeating: Array(repeating: 0, count: sequence.count), count: sequence.count)
//
//    for i in 0..<sequence.count {
//        matrix[i][i] = sequence[i]
//        if matrix[i][i] == k {
//            return [i, i]
//        }
//    }
//
//    for length in 2...sequence.count {
//        for i in 0..<(sequence.count - length) {
//            let j = i + length - 1
//            matrix[i][j] = matrix[i][j - 1] + matrix[j][j]
//            if matrix[i][j] == k {
//                return [i, j]
//            }
//        }
//    }
//
//    return []
//}
//
//
//func solution(_ sequence:[Int], _ k:Int) -> [Int] {
//
//    var s = 0
//    var e = 0
//    var sum = sequence[0]
//    var ans = [0, 0, sequence.count + 1]
//
//    func updateAns(_ s: Int, _ e: Int) -> [Int] {
//        if e - s + 1 < ans[2] {
//            return [s, e, e - s + 1]
//        } else {
//            return ans
//        }
//    }
//
//    while true {
//        if sum == k {
//            ans = updateAns(s, e)
//            sum -= sequence[s]
//            s += 1
//        } else if sum < k {
//            e += 1
//            if e == sequence.count { break }
//            sum += sequence[e]
//        } else {
//            sum -= sequence[s]
//            s += 1
//        }
//    }
//
//    return ans.dropLast()
//}
//
//print(solution([1, 2, 3, 4, 5], 7))
//print(solution([1, 1, 1, 2, 3, 4, 5], 5))
//print(solution([2, 2, 2, 2, 2], 6))
