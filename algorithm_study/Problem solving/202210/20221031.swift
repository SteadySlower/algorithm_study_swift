//
//  20221031.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/31.
//

//func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//
//    var array = [Int]()
//
//    for i in left...right {
//        let i = Int(i)
//        array.append(max(i / n, i % n) + 1)
//    }
//
//    return array
//}

// 123 223 333
// 1234 2234 3334 4444

// n = 3
// left = 0 이면 0행 0열
// left = 1 이면 0행 1열

// left = 3이면 1행 0열

// left = x이면 x // n 행, x % n 열
