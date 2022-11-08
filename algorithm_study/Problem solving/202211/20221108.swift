//
//  20221108.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/08.
//

//func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
//    // 필요한 길이만큼 미리 n진수를 나열한 String을 구하고 시작
//    var fullRadix = [String]()
//    var i = 0
//
//    // m명의 멤버기 t번 말하는 동안 필요하므로 길이가 t * m 이상이 될 때까지 i를 늘려가며 구한다.
//    while fullRadix.count < t * m {
//        fullRadix.append(contentsOf: String(i, radix: n).map { String($0) })
//        i += 1
//    }
//
//    // 튜브가 말할 숫자
//    var ans = ""
//    // index는 0부터 시작하므로 순서에서 -1
//    var p = p - 1
//
//    // t개 만큼 튜브가 말할 문자를 ans에 더한다.
//    for _ in 0..<t {
//        ans += fullRadix[p].uppercased()
//        p += m
//    }
//
//    return ans
//}
//
//print(solution(2, 4, 2, 1))
//print(solution(16, 16, 2, 1))
