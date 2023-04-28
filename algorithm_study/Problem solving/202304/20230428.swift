//
//  20230428.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/28.
//

//func solution(_ sequence:[Int]) -> Int64 {
//
//    var ans = Int.min
//    // 현재 곱하는 pulse를 정의
//    var pulse = 1
//    // sum1: 1부터 곱한 부분합
//    // sum2: -1부터 곱한 부분합
//    // min1: 1부터 곱한 부분합 중에 (i - 1)까지의 최솟값
//    // min2: -1부터 곱한 부분합 중에 (i - 1)까지의 최솟값
//    var sum1 = 0, sum2 = 0, min1 = 0, min2 = 0
//
//    for i in 0..<sequence.count {
//
//        // 현재 pulse를 곱해서 부분합 구하기
//        sum1 += sequence[i] * pulse
//        sum2 += sequence[i] * -pulse
//
//        // 부분합의 최댓값 갱신
//        // (i를 마지막으로 하는 부분수열합의 최댓값) = (i까지의 누적합) - ((i - 1)까지의 누적합 중에 최소값)
//        ans = max(sum1 - min1, sum2 - min2, ans)
//
//        // (i + 1)의 최댓값 구하기 전에 i까지의 최솟값 갱신
//        min1 = min(sum1, min1)
//        min2 = min(sum2, min2)
//
//        // 원소 바뀔 때 pulse의 부호도 바꾸어 주기
//        pulse *= -1
//    }
//
//    return Int64(ans)
//}
//
//print(solution([2, 3, -6, 1, 3, -1, 2, 4]))
