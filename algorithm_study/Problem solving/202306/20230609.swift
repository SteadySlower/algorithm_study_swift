//
//  20230609.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/09.
//

//func solution(_ scores:[[Int]]) -> Int {
//
//    var wanho = scores[0]
//    var wanhoScore = wanho.reduce(0, +)
//    var sorted = scores.sorted(by: { s1, s2 in
//        if s1[0] != s2[0] {
//            return s1[0] > s2[0]
//        } else {
//            return s1[1] < s2[1]
//        }
//    })
//
//    var ans = 1
//    var highestPeer = 0
//
//    for score in sorted {
//        if score[0] > wanho[0] && score[1] > wanho[1] {
//            return -1
//        }
//
//        if score[1] <= highestPeer {
//
//        }
//
//        if score.reduce(0, +) > wanhoScore {
//
//        }
//    }
//
//    return 0
//}
