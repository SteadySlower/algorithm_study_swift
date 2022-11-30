//
//  20221128.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/30.
//

//func solution(_ k:Int, _ tangerine:[Int]) -> Int {
//    // 귤을 크기-갯수의 dict로 만들기
//    var dict = [Int:Int]()
//    for t in tangerine {
//        dict[t, default: 0] += 1
//    }
//
//    // 귤의 크기를 갯수가 많은 순서대로 정렬
//    let keys = dict.keys.sorted { dict[$0]! > dict[$1]! }
//
//    // 귤의 크기의 "종류 수"
//    var cnt = 0
//    // 상자에 들어갈 귤의 총합
//    var sum = 0
//
//    // 가장 갯수가 많은 큘의 크기부터 상자에 넣고
//    for key in keys {
//        sum += dict[key]!
//        cnt += 1
//        // 상자에 들아간 귤이 k 이상일 때 break
//        if sum >= k { break }
//    }
//
//    return cnt
//}
//
//print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))
