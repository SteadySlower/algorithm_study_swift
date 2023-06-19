//
//  20230617.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/19.
//

//import Foundation
//
//// 시간 파싱 String -> Int
//func parseTime(_ timeString: String) -> Int {
//    let hms = timeString.split(separator: ":").map { Int($0)! }
//    return hms[0] * 3600 + hms[1] * 60 + hms[2]
//}
//
//func parseTime(_ time: Int) -> String {
//    let hour = time / 3600
//    let min = (time % 3600) / 60
//    let sec = time % 3600 % 60
//    // %02d: 정수(d)를 2자리 출력을 하는데 빈 부분은 0으로 채워서
//    return String(format: "%02d:%02d:%02d", hour, min, sec)
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
//    for i in 1..<times.count {
//        times[i] += times[i - 1]
//    }
//
//    var ans = 0
//    var sum = times[advTime - 1]
//
//    for i in advTime..<times.count {
//        if sum < times[i] - times[i - advTime] {
//            sum = times[i] - times[i-advTime]
//            ans = i - advTime + 1
//        }
//    }
//
//    return parseTime(ans)
//}
//
////print(solution("02:03:55",
////               "00:14:15",
////               ["01:20:15-01:45:14",
////                "00:40:31-01:00:00",
////                "00:25:50-00:48:29",
////                "01:30:59-01:53:29",
////                "01:37:44-02:02:30"]))
//print(solution("99:59:59",
//               "25:00:00",
//               ["69:59:59-89:59:59",
//                "01:00:00-21:00:00",
//                "79:59:59-99:59:59",
//                "11:00:00-31:00:00"]))
////print(solution("50:00:00",
////               "50:00:00",
////               ["15:36:51-38:21:49",
////                "10:14:18-15:36:51",
////                "38:21:49-42:51:45"]))
