//
//  20230616.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/16.
//

// 누적합으로 구하는 것은 알겠음
// 다만 가장 큰 구간을 구하는데 어떻게 시간 복잡도를 줄일 것인가?
    // 투 포인터?!

//import Foundation
//
//func parseTime(_ s: String) -> Int {
//    let hms = s.split(separator: ":").map { Int($0)! }
//    return hms[0] * 3600 + hms[1] * 60 + hms[2]
//}
//
//func parseTime(_ i: Int) -> String {
//    var i = i
//    let hour = i / 3600
//    i %= 3600
//    let minute = i / 60
//    let second = i % 60
//    return "\(hour < 10 ? "0\(hour)" : "\(hour)"):\(minute < 10 ? "0\(minute)" : "\(minute)"):\(second < 10 ? "0\(second)" : "\(second)")"
//}
//
//func solution(_ play_time:String, _ adv_time:String, _ logs:[String]) -> String {
//
//    let playTime = parseTime(play_time)
//    let advTime = parseTime(adv_time)
//
//    var times = Array(repeating: 0, count: playTime + 1)
//
//    for log in logs {
//        let se = log.split(separator: "-").map { parseTime(String($0)) }
//        let s = se[0], e = se[1]
//        times[s] += 1
//        times[e] -= 1
//    }
//
//    for i in 1..<times.count {
//        times[i] += times[i - 1]
//    }
//
//    var s = 0
//    var e = times.count - 1
//
//    while e - s != advTime {
//        if times[s] >= times[e] {
//            e -= 1
//        } else {
//            s += 1
//        }
//    }
//
//    print(s)
//
////    return parseTime(s)
//    return "\(parseTime(s))-\(parseTime(e))"
//}
//
//print(solution("02:03:55", "00:14:15", ["01:20:15-01:45:14", "00:40:31-01:00:00", "00:25:50-00:48:29", "01:30:59-01:53:29", "01:37:44-02:02:30"]))
//print(solution("99:59:59", "25:00:00", ["69:59:59-89:59:59", "01:00:00-21:00:00", "79:59:59-99:59:59", "11:00:00-31:00:00"]))
