//
//  20220831.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/31.
//

//// Swift로 큐 구현
//struct Queue {
//    private var queue = [(Int, Int)]()
//    private var index = 0
//
//    init(_ array: [Int]) {
//        for (i, v) in array.enumerated() {
//            self.queue.append((i, v))
//        }
//    }
//
//    mutating func push(_ t: (Int, Int)) {
//        queue.append(t)
//    }
//
//    mutating func pop() -> (Int, Int) {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//func solution(_ priorities:[Int], _ location:Int) -> Int {
//    // 중요도를 정렬해서 별도의 배열
//        // last가 최고 중요도
//        // 최고 중요도 인쇄되면 pop
//    var priorityRank = priorities.sorted()
//    var printer = Queue(priorities)
//    // 인쇄 횟수 count
//    var cnt = 0
//
//    while !priorityRank.isEmpty {
//        // printer의 맨 앞에 있는 문서
//        let now = printer.pop()
//
//        // 최고 중요도 문서라면 출력
//        if now.1 == priorityRank.last! {
//            cnt += 1 //👉 출력 횟수 늘리고
//            _ = priorityRank.popLast() //👉 중요도 배열에서도 pop
//            if now.0 == location { return cnt } //👉그 문서가 location이라면 return
//        // 최고 중요도가 아니라면 맨 뒤로 보내기
//        } else {
//            printer.push(now)
//        }
//    }
//
//    return cnt
//}
