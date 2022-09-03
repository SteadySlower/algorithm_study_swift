//
//  20220903.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/03.
//

//// 알고리즘 종류를 먼저 떠올리면?
//    // dfs라는 것을 알아차릴 수 있다.
//
//import Foundation
//
//func solution(_ word:String) -> Int {
//    // 반복문을 위한 배열
//    let vowels = ["A", "E", "I", "O", "U"]
//
//    // dfs할 때마다 + 1할 변수
//    var cnt = 0
//
//    // 정답
//    var ans = 0
//
//    func dfs(_ s: String) {
//
//        // 현재 탐색한 문자열이 word와 같으면 ans를 cnt로 업데이트
//        if s == word { ans = cnt; return }
//
//        // s의 길이가 5보다 짧을 때만 뒤에 알파벳을 붙임
//        if s.count < 5 {
//            for i in 0..<vowels.count {
//                cnt += 1
//                dfs(s + vowels[i])
//            }
//        }
//    }
//
//    dfs("")
//
//    return ans
//}
