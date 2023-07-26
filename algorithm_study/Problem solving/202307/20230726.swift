//
//  20230726.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/26.
//

//func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
//
//    var d = deliveries
//    var p = pickups
//
//    while !d.isEmpty && !p.isEmpty {
//        let dist = max(d.count, p.count)
//        var nowD = 0
//        while nowD < cap && !d.isEmpty  {
//            let last = d.popLast()!
//            if nowD + last <= cap {
//                nowD += last
//            } else {
//                d.append(last - (cap - nowD))
//                nowD = cap
//            }
//        }
//
//    }
//
//    return -1
//}

//// 바로 검색 해보기
//func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
//
//    var cost = 0
//
//    var deliveries = deliveries
//    var pickups = pickups
//
//    var nowD = 0
//    var nowP = 0
//    var nowInCar = 0
//
//    for i in (0..<n).reversed() {
//        let toD = deliveries[i], toP = pickups[i]
//
//    }
//
//
//    return Int64(cost)
//}
