//
//  20230613.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/13.
//

//struct Task {
//    let name: String
//    let start: Int
//    var time: Int
//
//    init(_ input: [String]) {
//        self.name = input[0]
//        let parsedStart = input[1].split(separator: ":").map { Int($0)! }
//        self.start = parsedStart[0] * 60 + parsedStart[1]
//        self.time = Int(input[2])!
//    }
//}
//
//func solution(_ plans:[[String]]) -> [String] {
//
//    var tasks = plans.map { Task($0) }.sorted(by: { $0.start > $1.start })
//    var hold = [Task]()
//
//    var nowTask = tasks.popLast()!
//    var nowTime = nowTask.start
//
//    var result = [String]()
//
//    while !tasks.isEmpty {
//
//        let nextTask = tasks.last!
//
//        // 현재 끝 == 다음 시작 -> 바로 다음 과제 시작
//        if nowTime + nowTask.time == nextTask.start {
//            result.append(nowTask.name)
//            nowTask = tasks.popLast()!
//            nowTime = nowTask.start
//        // 현재 끝 > 다음 시작 -> 현재 과제 남은 시간 기록 후 hold에 넣어두기
//        } else if nowTime + nowTask.time > nextTask.start {
//            nowTask.time -= nextTask.start - nowTime
//            hold.append(nowTask)
//            nowTask = tasks.popLast()!
//            nowTime = nowTask.start
//        // 현재 끝 < 다음 시작 -> hold된 과제 수행
//        } else {
//            result.append(nowTask.name)
//            guard let lastestHold = hold.popLast() else {
//                // hold된 과제 없으면 다음 과제 바로 진행
//                nowTask = tasks.popLast()!
//                nowTime = nowTask.start
//                continue
//            }
//            nowTime += nowTask.time
//            nowTask = lastestHold
//        }
//    }
//
//    // 마지막 과제 끝까지 진행
//    result.append(nowTask.name)
//
//    // hold된 과제 최신순으로 진행
//    for holdTask in hold.reversed() {
//        result.append(holdTask.name)
//    }
//
//    return result
//}
//
//print(solution([["korean", "11:40", "30"], ["english", "12:10", "20"], ["math", "12:30", "40"]]))
//print(solution([["science", "12:40", "50"], ["music", "12:20", "40"], ["history", "14:00", "30"], ["computer", "12:30", "100"]]))
