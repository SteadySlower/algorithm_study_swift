//
//  20221201.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/03.
//

//func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
//    var ans = 0
//
//    var apts = Array(repeating: false, count: n)
//
//    for station in stations {
//        let coverage = (station - 1 - w...station - 1 + w)
//        for i in coverage {
//            if 0..<n ~= i { apts[i] = true }
//        }
//    }
//
//    var left = 0
//
//    func makeStation(_ i: Int) {
//        for j in 0...w {
////            if 0..<n ~= (i - j) { apts[i - j] = true }
//            if 0..<n ~= (i + j) { apts[i + j] = true }
//        }
//        left = 0
//        ans += 1
//    }
//
//    for i in 0..<apts.count {
//        if apts[i] == true {
//            if left == 0 { continue }
//            makeStation(i)
//            continue
//        }
//        left += 1
//        if left > w {
//            makeStation(i)
//        }
//    }
//
//    return ans
//}

//func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
//    var ans = 0
//
//    var apts = Array(repeating: false, count: n)
//    let stations = stations.map { $0 - 1 }
//
//    for station in stations {
//        let coverage = (station - w...station + w)
//        for i in coverage {
//            if 0..<n ~= i { apts[i] = true }
//        }
//    }
//
//    var left = 0
//    var index = 0
//
//    while index < n {
//        if apts[index] == false {
//            if left == w {
//                index += w + 1
//                ans += 1
//                left = 0
//            } else {
//                left += 1
//                index += 1
//            }
//        } else {
//            if left != 0 {
//                index += 1
//                ans += 1
//                left = 0
//            } else {
//                index += 1
//            }
//        }
//    }
//
//    return ans
//}
//
//print(solution(11, [4, 11], 1))
