//
//  20220613.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/13.
//

//// 프린터 큐
//
////✅ 큐 구현
//struct Queue {
//    // index 큐를 사용 (N이 적으므로)
//    var queue = [(Int, Int)]() //👉 처음 문서 위치를 기억해야하므로 (처음 위치, 중요도)의 튜플
//    var index = 0
//
//    // 입력을 받아서 튜플의 배열로 바꾸어 저장한다.
//    init(_ array: Array<Int>) {
//        for (i, num) in array.enumerated() {
//            queue.append((i, num))
//        }
//    }
//
//    var count: Int {
//        return queue.count - index
//    }
//
//    mutating func push(_ tuple: (Int, Int)) {
//        queue.append(tuple)
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
//let T = Int(readLine()!)!
//
//// 테스트 케이스 만큼 반복
//for _ in 0..<T {
//    let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let M = input1[1] //👉 추적하고자 하는 문서 위치
//    let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
//    var queue = Queue(input2)
//    var priorities = input2.sorted() //👉 중요도를 오름차순으로 정리
//    var cnt = 0 //👉 현재까지 출력된 문서 갯수
//    while queue.count > 0 {
//        let now = queue.pop()
//        if now.1 == priorities.last {
//            cnt += 1
//            priorities.removeLast()
//            if now.0 == M { break }
//        } else {
//            queue.push(now)
//        }
//    }
//    print(cnt)
//}

