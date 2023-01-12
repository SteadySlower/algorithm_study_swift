//
//  20230112.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/12.
//

//func solution(_ sticker:[Int]) -> Int {
//    let count = sticker.count
//
//    // sticker의 길이가 2 이하일 때 index out of range를 방지하기 위한 guard문
//    guard count > 2 else {
//        if count == 1 {
//            return sticker[0]
//        } else {
//            return max(sticker[0], sticker[1])
//        }
//    }
//
//    // 0번 스티커를 떼는 경우와 떼지 않는 경우로 구분해서 dp를 2개 선언
//    var dp = Array(repeating: Array(repeating: 0, count: count), count: 2)
//
//    // 0번 스티커를 떼는 경우의 초기값 세팅
//    dp[0][0] = sticker[0]
//    dp[0][1] = sticker[0]
//    // 0번 스티커를 떼지 않는 경우 초기값 세팅
//    dp[1][1] = sticker[1]
//
//    // 0번 스티커를 떼는 경우 마지막 스티커를 뗄 수 없으므로 (count-2)번 스티커까지만 고려
//    for i in 2..<(count - 1) {
//        dp[0][i] = max(dp[0][i - 1], dp[0][i - 2] + sticker[i])
//    }
//
//    // 0번 스티커를 떼지 않는 경우 마지막 스티커까지 고려
//    for i in 2..<count {
//        dp[1][i] = max(dp[1][i - 1], dp[1][i - 2] + sticker[i])
//    }
//
//    return max(dp[0][count - 2], dp[1][count - 1])
//}
