//
//  20230117.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/17.
//

//// Swift로 Queue 구현하기
//struct Queue {
//    private var index: Int = 0
//    private var array: [Int]
//
//    init(array: [Int]) {
//        self.array = array
//    }
//
//    var count: Int {
//        return array.count - index
//    }
//
//    mutating func push(_ num: Int) {
//        array.append(num)
//    }
//
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return array[index]
//    }
//}
//
//func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//
//    // 각각 queue의 초기 합
//    var sum1 = queue1.reduce(0, +)
//    var sum2 = queue2.reduce(0, +)
//
//    // 합이 홀수이면 -1
//    guard (sum1 + sum2) % 2 == 0 else { return -1 }
//
//    var queue1 = Queue(array: queue1)
//    var queue2 = Queue(array: queue2)
//
//    // 최대 수행 횟수
//    let limit = queue1.count * 4
//    // 정답
//    var ans = 0
//
//    // 반복문
//    while sum1 != sum2 && ans < limit {
//        // queue1이 더 큰 경우: queue1 pop -> queue2 push
//        if sum1 > sum2 {
//            let popped = queue1.pop()
//            queue2.push(popped)
//            sum1 -= popped
//            sum2 += popped
//        // queue2가 더 큰 경우: queue2 pop -> queue1 push
//        } else {
//            let popped = queue2.pop()
//            queue1.push(popped)
//            sum1 += popped
//            sum2 -= popped
//        }
//        ans += 1
//    }
//
//    // 반복문을 수행한 결과 합을 동일하게 만들었다면 ans를 아니면 -1을 리턴
//    return sum1 == sum2 ? ans : -1
//}
//
//print(solution([3, 2, 7, 2], [4, 6, 5, 1]))
//print(solution([1, 2, 1, 2], [1, 10, 1, 2]))
//print(solution([1, 1, 1, 1, 1, 1, 1, 1, 1, 10], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]))
