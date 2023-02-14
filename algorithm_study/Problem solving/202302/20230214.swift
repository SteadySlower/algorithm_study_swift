//
//  20230214.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/14.
//

///*
// 1 1 : 1
// 2 1 : 2
// 1 2 : 2
// 2 2 : 2
// 3 2 : 4
// 2 3 : 4
// 3 3 : 3
// 4 3 : 4
// 3 4 : 4
// 4 4 : 4
// 
// w or h가 1이면 1이 아닌 값
// abs(w - h)가 짝수이면 max(w, h)
// abs(w - h)가 홀수이면 max(w, h) + 1
// 
// 🚫 위 아니고 겹치는 부분 = 한라인에서 2개 나가는 부분 잘 계산해보기!
// */
//
//func solution(_ w:Int, _ h:Int) -> Int64 {
//    
//    if w == 1 || h == 1 {
//        return 0
//    }
//    
//    if (w - h) % 2 == 0 {
//        return Int64(w * h - max(w, h))
//    } else {
//        return Int64(w * h - (max(w, h) + 1))
//    }
//
//    return 0
//}
