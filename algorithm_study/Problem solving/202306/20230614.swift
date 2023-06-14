//
//  20230614.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/14.
//

//// 과제 구조체
//struct Task {
//    let name: String // 이름
//    let start: Int // 시작 시간 -> "시간:분"을 "분"의 형태로만
//    var time: Int // 과제를 마치는데 걸리는 시간 👉 중간에 멈추는 경우 업데이트해야 하므로 변수로 선언
//
//    init(_ input: [String]) {
//        self.name = input[0]
//        // "시간:분" -> 분
//        let parsedStart = input[1].split(separator: ":").map { Int($0)! }
//        self.start = parsedStart[0] * 60 + parsedStart[1]
//        self.time = Int(input[2])!
//    }
//}
//
//func solution(_ plans:[[String]]) -> [String] {
//
//    // 시작시간이 늦은 순으로 정렬한다.
//        // array에서는 popLast가 O(1)이기 때문에
//    var tasks = plans.map { Task($0) }.sorted(by: { $0.start > $1.start })
//    // 중단된 과제를 저장하는 stack
//    var hold = [Task]()
//
//    // 현재 수행 중인 과제와 현재 시간
//    var nowTask = tasks.popLast()!
//    var nowTime = nowTask.start
//
//    // 과제가 끝난 순서대로 이름을 저장하는 배열
//    var result = [String]()
//
//    // 모든 과제를 수행할 때까지 반복
//    while !tasks.isEmpty {
//
//        // 다음 과제의 시작 시간과 현재 과제가 끝나는 시간을 비교
//        let nextTask = tasks.last!
//
//        // 현재 끝 == 다음 시작 -> 바로 다음 과제 시작
//        if nowTime + nowTask.time == nextTask.start {
//            result.append(nowTask.name)
//            nowTask = tasks.popLast()!
//            nowTime = nowTask.start
//        // 현재 끝 > 다음 시작 -> 현재 과제 남은 시간 기록 후 hold에 넣어두기
//        } else if nowTime + nowTask.time > nextTask.start {
//            // 남은 시간 기록하고 stack에 넣어 두기
//            nowTask.time -= nextTask.start - nowTime
//            hold.append(nowTask)
//            // 다음 과제 시작
//            nowTask = tasks.popLast()!
//            nowTime = nowTask.start
//        // 현재 끝 < 다음 시작 -> hold된 과제 수행
//        } else {
//            // 현재 과제 끝내고
//            result.append(nowTask.name)
//            // 다음 과제 진행
//            guard let lastestHold = hold.popLast() else {
//                // hold된 과제 없으면 다음 과제 바로 진행
//                nowTask = tasks.popLast()!
//                nowTime = nowTask.start
//                continue
//            }
//            nowTime += nowTask.time // 현재 시간 + 현재 과제 진행한 시간
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
