//
//  20231011.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/11.
//

/*
 - 원형이기 때문에 발생하는 case 구분
 첫번째꺼 무조건 떼고 마지막꺼 무조건 안뗀다
 첫번째꺼 무조건 안떼고 마지막꺼 무조건 뗀다
 둘 다 안뗀다
 */

//func solution(_ sticker:[Int]) -> Int {
//    let count = sticker.count
//
//    // sticker의 길이가 1이면 나는 index out of range를 방지하기 위한 guard문
//    guard count > 1 else { return sticker[0] }
//
//    // 각 dp별 최대값을 담는 배열
//    var results = [Int]()
//
//    // case 1: 첫 번째꺼 무조건 떼는 경우
//    // i번째 스티커를 떼었을 때 최대 점수
//    var dp1 = Array(repeating: sticker[0], count: count)
//    // i번째 스티커를 안 떼었을 때 최대 점수
//    var dp2 = Array(repeating: sticker[0], count: count)
//
//    // 첫번째 스티커는 무조건
//    var i = 2
//
//    while i < count - 1 {
//        // i번째를 떼는 경우: i - 1번째 스티커는 뗄 수 없음
//        dp1[i] = dp2[i - 1] + sticker[i]
//        // i번째를 안 떼는 경우: i - 1까지 스티커를
//        dp2[i] = dp1[i - 1] > dp2[i - 1] ? dp1[i - 1] : dp2[i - 1]
//        i += 1
//    }
//
//    results.append(dp1[i - 1])
//    results.append(dp2[i - 1])
//
//    // case 2: 마지막 스티커를 무조건 떼는 경우
//    // i번째 스티커를 떼었을 때 최대 점수
//    var dp3 = Array(repeating: sticker[count - 1], count: count)
//    // i번째 스티커를 안 떼었을 때 최대 점수
//    var dp4 = Array(repeating: sticker[count - 1], count: count)
//
//    i = 1
//
//    while i < count - 2 {
//        dp3[i] = dp4[i - 1] + sticker[i]
//        dp4[i] = dp3[i - 1] > dp4[i - 1] ? dp3[i - 1] : dp4[i - 1]
//        i += 1
//    }
//
//    results.append(dp3[i - 1])
//    results.append(dp4[i - 1])
//
//    // case 3: 둘 다 안뗀다.
//    // i번째 스티커를 떼었을 때 최대 점수
//    var dp5 = Array(repeating: 0, count: count)
//    // i번째 스티커를 안 떼었을 때 최대 점수
//    var dp6 = Array(repeating: 0, count: count)
//
//    i = 1
//
//    while i < count - 1 {
//        dp5[i] = dp6[i - 1] + sticker[i]
//        dp6[i] = dp5[i - 1] > dp6[i - 1] ? dp5[i - 1] : dp6[i - 1]
//        i += 1
//    }
//
//    results.append(dp5[i - 1])
//    results.append(dp6[i - 1])
//
//    return results.max()!
//}
//
//print(solution([14, 6, 5, 11, 3, 9, 2, 10]))
