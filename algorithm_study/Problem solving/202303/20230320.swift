//
//  20230320.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/20.
//

//func solution(_ s:String) -> Int {
//
//    let s = s.map { $0 }
//    var dp = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
//    var ans = 1
//
//
//    // 초기 값: 길이가 1 혹은 2인 펠린드롬
//    for i in 0..<s.count {
//        dp[i][i] = true
//        if i + 1 < s.count && s[i] == s[i + 1] {
//            dp[i][i + 1] = true
//            ans = 2
//        }
//    }
//
//    // 길이 3인 펠린드롬 부터 구하기
//    var length = 3
//
//    // 각각의 길이별로 펠린드롬 점화식으로 펠린드롬 여부 확인
//    while length <= s.count {
//        var i = 0
//        while i + length - 1 < s.count {
//            if dp[i + 1][i + length - 2] == true && s[i] == s[i + length - 1] {
//                dp[i][i + length - 1] = true
//                ans = length
//            }
//            i += 1
//        }
//        length += 1
//    }
//
//    return ans
//}
//
//
//print(solution("abcdcba"))
//print(solution("abacde"))
//print(solution("abba"))
