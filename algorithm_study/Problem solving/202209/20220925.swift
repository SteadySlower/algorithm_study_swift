//
//  20220925.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/25.
//

///*
// 1
// 10
// 100
// 1000
//
// 11
//
// 101
// 110
//
// 1001
// 1010
// 1100
//
// 111
// 1011
// 1101
// 1110
//
// 10011
// 10101
// 10110
// */
//
//
//func solution(_ n:Int) -> Int {
//    // 다음 숫자는 n보다 크므로 1을 더한다.
//    var ans = n + 1
//    // n의 "1" 갯수
//    let oneCount = String(n, radix: 2).filter { $0 == "1" }.count
//
//    // n의 "1" 갯수와 ans의 "1" 갯수가 동일해질 때까지 ans를 늘리기
//    while true {
//        let ansOneCount = String(ans, radix: 2).filter { $0 == "1" }.count
//        if ansOneCount == oneCount {
//            break
//        }
//        ans += 1
//    }
//
//    return ans
//}
//
//print(solution(78))
