//
//  20230110 알고리즘 문제 풀이.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/10.
//

//func solution(_ sticker:[Int]) -> Int{
//    let count = sticker.count
//    let stickers = sticker + sticker + sticker
//    // 처음거 무조건 떼고 + 떼어서 최대값
//    var dp1 = Array(repeating: 0, count: count)
//    dp1[0] = sticker[0]
//    // 처음거 무조건 떼고 + 안떼어서 최대값
//    var dp2 = Array(repeating: 0, count: count)
//
//    var i = 1
//
//    while i < count {
//        let index = i + count
//        dp1[i] = dp2[i - 1] + stickers[index]
//        dp2[i] = dp1[i - 1]
//        i += 1
//    }
//
//    var sticker = sticker
//    sticker.append(sticker.removeFirst())
//
//    // 마지막거 무조건 떼고 + 떼어서 최대값
//    var dp3 = Array(repeating: 0, count: count)
//    dp3[0] = sticker[0]
//    // 마지막거 무조건 떼고 + 안 떼어서 최대값
//    var dp4 = Array(repeating: 0, count: count)
//
//    i = 1
//
//    while i < count {
//        let index = i + count
//        dp3[i] = dp3[i - 1] + stickers[index]
//        dp4[i] = dp4[i - 1]
//        i += 1
//    }
//
//    var answers = [dp1.last!, dp2.last!, dp3.last!, dp4.last!]
//
//
//    return answers.max()!
//}
//
//print(solution([14, 6, 5, 11, 3, 9, 2, 10]))
//print(solution([1, 3, 2, 5, 4]))
