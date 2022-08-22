//
//  20220822.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/22.
//

// 입국 심사

//import Foundation
//
//func solution(_ n:Int, _ times:[Int]) -> Int64 {
//    var start = 1
//    // 최대 범위는 모든 사람들이 가장 느린 심사관에게 검사를 받을 때
//    var end = times.max()! * n
//    var ans = 0
//
//    // 파라메트릭 서치
//    while start <= end {
//        let mid = (start + end) / 2
//        var count = 0
//
//        // 심사관 별로 mid 시간동안 검사할 수 있는 사람의 수 세기
//        for time in times {
//            count += mid / time
//
//            // 빠른 심사관들이 전부 처리할 수 있으면 break
//            if count >= n { break }
//        }
//
//        // mid 시간 안에 심사할 수 있는 경우
//        if count >= n {
//            ans = mid
//            end = mid - 1
//        // mid 시간 안에 심사할 수 없는 경우
//        } else {
//            start = mid + 1
//        }
//    }
//
//    return Int64(ans)
//}


////기능 개발
//
//import Foundation
//
//// Swift로 큐 구현
//struct Queue {
//    private var index = 0
//    var queue: [Int]
//
//    init(_ queue: [Int]) {
//        self.queue = queue
//    }
//
//    var count: Int {
//        queue.count
//    }
//
//    var isEmpty: Bool {
//        return queue.count == index
//    }
//
//    // 맨 처음 작업이 끝났는지 알아보기 위해 필요한 변수
//        //❗️ index out of range를 조심!
//    var first: Int {
//        !self.isEmpty ? queue[index] : 0
//    }
//
//    // push 없이 pop만 구현해도 된다.
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//
//    var queue = Queue(progresses)
//    var result = [Int]()
//
//    while !queue.isEmpty {
//        // 현재 작업 중에서 가장 첫번째 작업의 진행도가 100이 넘을 때까지 작업을 진행한다.
//        while queue.first < 100 {
//            for i in 0..<queue.count {
//                queue.queue[i] += speeds[i]
//            }
//        }
//
//        // 이번에 배포되는 작업을 세는 변수
//        var count = 0
//
//        // 앞에서부터 100이 넘은 작업들을 모두 배포한다.
//        while queue.first >= 100 {
//            _ = queue.pop()
//            count += 1
//        }
//
//        // 이번에 배포된 작업들을 결과에 더한다.
//        result.append(count)
//
//    }
//
//    return result
//}


//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//
//    var queue = progresses
//    var index = 0
//    var result = [Int]()
//
//    while index < queue.count {
//        // 현재 작업 중에서 가장 첫번째 작업의 진행도가 100이 넘을 때까지 작업을 진행한다.
//        while queue[index] < 100 {
//            for i in index..<queue.count {
//                queue[i] += speeds[i]
//            }
//        }
//
//        // 이번에 배포되는 작업을 세는 변수
//        var count = 0
//
//        // 앞에서부터 100이 넘은 작업들을 모두 배포한다.
//        while index < queue.count && queue[index] >= 100 {
//            index += 1
//            count += 1
//        }
//
//        // 이번에 배포된 작업들을 결과에 더한다.
//        result.append(count)
//
//    }
//
//    return result
//}
