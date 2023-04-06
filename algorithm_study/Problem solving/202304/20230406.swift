//
//  20230406.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/06.
//

//// string으로 표현된 시간을 int로 파싱하는 함수
//func time(from string: String) -> Int {
//    let h = Int(string.prefix(2))!
//    let m = Int(string.suffix(2))!
//    return h * 60 + m
//}
//
//// 체크인 혹은 체크아웃을 나타내는 객체
//struct Event: Comparable {
//    // 체크인인 경우 true
//    let isIn: Bool
//    // 시간
//    let time: Int
//
//    // 시간 순으로 정렬하기 위한 < 정의
//    static func < (lhs: Event, rhs: Event) -> Bool {
//        // 시간이 다른 경우 시간이 작은 것이 앞으로
//        if lhs.time != rhs.time {
//            return lhs.time < rhs.time
//        // 시간이 같은 경우
//            // 둘 다 in인 경우 -> 상관 없음
//            // 둘 다 out인 경우 -> 상관 없음
//            // 하나는 in, 다른 것은 out인 경우 -> out이 먼저 (out한 방에 in이 같은 시간에 들어갈 수 있으므로)
//                // 따라서 rhs.isIn이 true인 경우 <, false인 경우는 >
//        } else {
//            return rhs.isIn
//        }
//    }
//}
//
//func solution(_ book_time:[[String]]) -> Int {
//
//    // 시간을 int로 파싱하고 나가는 시간에는 청소시간 10분을 더해준다.
//    let bookTime = book_time.map { $0.map { time(from: $0) } }.map { [$0[0], $0[1] + 10] }
//
//    // 주어진 체크인, 체크아웃 시간을 각각 하나의 Event 객체로 바꾸어준다
//    var events = [Event]()
//    for time in bookTime {
//        let checkIn = Event(isIn: true, time: time[0])
//        let checkOut = Event(isIn: false, time: time[1])
//        events.append(checkIn)
//        events.append(checkOut)
//    }
//
//    // Event 객체를 정렬 (시간순, 시간이 같은 경우 out이 먼저)
//    events.sort()
//
//    // 필요한 방의 수
//    var ans = 1
//
//    // 현재 남은 방의 수
//    var vacancy = 1
//
//    for event in events {
//        // 1. 현재 event가 체크인인 경우
//        if event.isIn {
//            // 1-1. 빈방이 있는 경우: 빈방 - 1
//            if vacancy > 0 {
//                vacancy -= 1
//            // 1-2. 빈방이 없는 경우: 방이 하나 더 필요함
//            } else {
//                ans += 1
//            }
//        // 2. 현재 event가 체크 아웃인 경우: 방을 비움
//        } else {
//            vacancy += 1
//        }
//    }
//
//    return ans
//}

//// string으로 표현된 시간을 int로 파싱하는 함수
//func time(from string: String) -> Int {
//    let h = Int(string.prefix(2))!
//    let m = Int(string.suffix(2))!
//    return h * 60 + m
//}
//
//func solution(_ book_time:[[String]]) -> Int {
//
//    // 시간을 int로 파싱하고 나가는 시간에는 청소시간 10분을 더해준다.
//    let bookTime = book_time.map { $0.map { time(from: $0) } }.map { [$0[0], $0[1] + 10] }
//
//    // 수직선: 하루 1440분 + 청소시간 10분
//    var timeLine = Array(repeating: 0, count: 1450)
//
//    // 수직선에 해당 시간에 존재하는 투숙객 표시
//    for time in bookTime {
//        for i in time[0]..<time[1] { //👉 청소시간의 마지막 시간에는 체크인 할 수 있으므로 마지막 시간은 표시하지 않음
//            timeLine[i] += 1
//        }
//    }
//
//    // 수직선 상의 가장 큰 수 = 동시에 투숙하는 손님의 최댓값 = 필요한 방의 수
//    return timeLine.max()!
//}

//// string으로 표현된 시간을 int로 파싱하는 함수
//func time(from string: String) -> Int {
//    let h = Int(string.prefix(2))!
//    let m = Int(string.suffix(2))!
//    return h * 60 + m
//}
//
//func solution(_ book_time:[[String]]) -> Int {
//
//    // 시간을 int로 파싱하고 나가는 시간에는 청소시간 10분을 더해준다.
//    let bookTime = book_time.map { $0.map { time(from: $0) } }.map { [$0[0], $0[1] + 10] }
//
//    // 수직선: 하루 1440분 + 청소시간 10분
//    var timeLine = Array(repeating: 0, count: 1450)
//
//    // 누적합: 시작점에 +1, 끝점에 -1 표시
//    for time in bookTime {
//        timeLine[time[0]] += 1
//        timeLine[time[1]] -= 1
//    }
//
//    // 누적합: i는 i - 1까지의 합
//    for i in 1..<timeLine.count {
//        timeLine[i] += timeLine[i - 1]
//    }
//
//    // 수직선 상의 가장 큰 수 = 동시에 투숙하는 손님의 최댓값 = 필요한 방의 수
//    return timeLine.max()!
//}
//
//print(solution([["15:00", "17:00"], ["16:40", "18:20"], ["14:20", "15:20"], ["14:10", "19:20"], ["18:20", "21:20"]]))
//print(solution([["09:10", "10:10"], ["10:20", "12:20"]]))
//print(solution([["10:20", "12:30"], ["10:20", "12:30"], ["10:20", "12:30"]]))
