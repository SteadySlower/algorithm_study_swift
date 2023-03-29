//
//  20230329.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/29.
//

//func parseTime(_ s: String) -> Int {
//    let h = Int(s.prefix(2))!
//    let m = Int(s.suffix(2))!
//    return h * 60 + m
//}



//import Foundation
//
//// 시간: String을 Int로
//func parseTime(_ s: String) -> Int {
//    let hm = s.split(separator: ":").map { Int($0)! }
//    return hm[0] * 60 + hm[1]
//}
//
//// 시간: Int를 String으로
//func parseInt(_ time: Int) -> String {
//    String(format: "%02d:%02d", time / 60, time % 60) //👉 import Foundation 해야 함!
//}
//
//// 버스 시간표 만들어주는 함수 (각각 몇시에 출발하는지)
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
//func solution(_ n:Int, _ t:Int, _ m:Int, _ timetable:[String]) -> String {
//
//    // 사람들이 줄 서는 시간을 파싱 & 정렬
//    let people = timetable.map { parseTime($0) }.sorted()
//    // 버스 시간표
//    let buses = busTimes(n, t)
//    // i번째 버스에 누가 타는지 나타내는 배열
//        // ex) rideTable[0] = 가장 처음 버스에 타는 사람들
//    var rideTable = [[Int]]()
//
//    // 지금 버스를 탈 사람의 index
//    var p = 0
//
//    // 모든 버스를 순환
//    for bus in buses {
//        // 이번 버스를 탈 사람들의 Array
//        var nowRide = [Int]()
//        // 버스를 한 명씩 태운다
//        while p < people.count // 사람이 모두 타면 stop
//                && nowRide.count < m // 지금 탈 버스가 꽉 차면 stop
//                && people[p] <= bus { // 다음 사람이 버스 시간 보다 늦게 오면 stop
//            nowRide.append(people[p])
//            p += 1
//        }
//        // 이번 버스에 탄 사람을 rideTable에 저장
//        rideTable.append(nowRide)
//    }
//
//    // 셔틀에 자리가 있을 때 -> 마지막 버스 시간에 딱 맞춰 간다
//    if rideTable[n - 1].count < m {
//        return parseInt(buses[n - 1])
//    // 마지막 셔틀에 자리가 없을 때 -> 마지막 버스의 마지막 자리에 탄 사람보다 1분 일찍 간다
//    } else {
//        return parseInt(rideTable[n - 1][m - 1] - 1)
//    }
//}
//
//print(solution(1, 1, 5, ["08:00", "08:01", "08:02", "08:03"]))
//print(solution(2, 10, 2, ["09:10", "09:09", "08:00"]))
//print(solution(10, 60, 45, ["23:59","23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59"]))
