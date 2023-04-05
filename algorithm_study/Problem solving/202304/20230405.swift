//
//  20230405.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/05.
//

//func time(from string: String) -> Int {
//    let h = Int(string.prefix(2))!
//    let m = Int(string.suffix(2))!
//    return h * 60 + m
//}
//
//struct Event: Comparable {
//    let isIn: Bool
//    let time: Int
//
//    static func < (lhs: Event, rhs: Event) -> Bool {
//        if lhs.time != rhs.time {
//            return lhs.time < rhs.time
//        } else {
//            return rhs.isIn
//        }
//    }
//}
//
//func solution(_ book_time:[[String]]) -> Int {
//
//    let bookTime = book_time.map { $0.map { time(from: $0) } }.map { [$0[0], $0[1] + 10] }
//    var events = [Event]()
//
//    for time in bookTime {
//        let checkIn = Event(isIn: true, time: time[0])
//        let checkOut = Event(isIn: false, time: time[1])
//        events.append(checkIn)
//        events.append(checkOut)
//    }
//
//    events.sort()
//
//    var ans = 1
//    var vacancy = 1
//
//    for event in events {
//        if event.isIn {
//            if vacancy > 0 {
//                vacancy -= 1
//            } else {
//                ans += 1
//            }
//        } else {
//            vacancy += 1
//        }
//        print("\(event) \(vacancy) \(ans)")
//    }
//
//    return ans
//}
//
//print(solution([["15:00", "17:00"], ["16:40", "18:20"], ["14:20", "15:20"], ["14:10", "19:20"], ["18:20", "21:20"]]))
//print(solution([["09:10", "10:10"], ["10:20", "12:20"]]))
//print(solution([["10:20", "12:30"], ["10:20", "12:30"], ["10:20", "12:30"]]))
