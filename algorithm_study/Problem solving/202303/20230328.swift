//
//  20230328.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/28.
//

//func parseTime(_ s: String) -> Int {
//    let hm = s.split(separator: ":")
//    return Int(hm[0])! * 60 + Int(hm[1])!
//}
//
//func parseInt(_ i: Int) -> String {
//    let h = i / 60 < 10 ? "0\(i / 60)" : "\(i / 60)"
//    let m = i % 60 < 10 ? "0\(i % 60)" : "\(i % 60)"
//    return h + ":" + m
//
//}
//
//func busTimes(_ n: Int, _ t: Int) -> [Int] {
//    let start = 540
//    var result = [Int]()
//
//    for i in 0..<n {
//        result.append(start + t * i)
//    }
//
//    return result
//}
//
//// 가장 늦게 나와야 한다 = 최대한 막차를 타야 한다 = (첫차가 아니라) 막차부터 탈 수 있는지 고려해야 한다
//// 근데 막차부터 고려하려고 했더니 최대 m 명까지 탈 수 있으므로 막차의 앞차에 몇명이 타고 나가는지 고려해야함.
//// 따라서 결국 각각의 차 별로 몇명이 타고 나가는지 알아야 함
//
//// 콘의 목표 = 막차를 최대한 늦게 타고 나가는 것!
//
//func solution(_ n:Int, _ t:Int, _ m:Int, _ timetable:[String]) -> String {
//
//    let people = timetable.map { parseTime($0) }.sorted()
//    let buses = busTimes(n, t)
//    var rideTable = [[Int]]()
//    var p = 0
//    var b = 0
//
//    while b < buses.count {
//        let startP = p
//        let nowB = buses[b]
//        var nowRide = [Int]()
//        while p < people.count && (p - startP + 1) <= m && people[p] <= nowB {
//            nowRide.append(people[p])
//            p += 1
//        }
//        rideTable.append(nowRide)
//        b += 1
//    }
//
//    if rideTable[n - 1].count < m {
//        return parseInt(buses[n - 1])
//    } else {
//        return parseInt(rideTable[n - 1][m - 1] - 1)
//    }
//}
//
//print(solution(1, 1, 5, ["08:00", "08:01", "08:02", "08:03"]))
//print(solution(2, 10, 2, ["09:10", "09:09", "08:00"]))
//print(solution(10, 60, 45, ["23:59","23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59"]))c
