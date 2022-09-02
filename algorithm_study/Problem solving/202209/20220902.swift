//
//  20220902.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/02.
//

//// Swift로 Queue 구현
//struct Queue {
//    var index = 0
//    var queue: [Int]
//
//    init(_ array: [Int]) {
//        self.queue = array
//    }
//
//    var isEmpty: Bool {
//        index == queue.count
//    }
//
//    mutating func push(_ n: Int) {
//        queue.append(n)
//    }
//
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//import Foundation
//
//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//    var time = 0 //👉 소요된 시간
//    var bridgeWeight = 0 //👉 다리 위에 올라간 트럭의 무게
//    var index = 0 //👉 이제 입장할 트럭의 index
//
//    // 다리: bridge_length개의 0으로 구현
//    var bridge = Queue(Array(repeating: 0, count: bridge_length))
//
//    while index < truck_weights.count {
//
//        //✅ 1단계: 다리 위에 트럭들이 한칸 이동
//        bridgeWeight -= bridge.pop() //👉 맨 처음에 있던 트럭이 빠짐
//        time += 1
//
//        //✅ 2단계: 만약에 추가 트럭이 다리에 진입할 수 있으면 진입
//        if truck_weights[index] + bridgeWeight <= weight {
//            bridgeWeight += truck_weights[index]
//            bridge.push(truck_weights[index])
//            index += 1
//        } else {
//            bridge.push(0) //👉 트럭 진입 안되면 그냥 빈공간 0
//        }
//    }
//
//    // 마지막 트럭이 진입하면 집입한 시간 + 다리의 길이 리턴
//    return time + bridge_length
//}

//import Foundation
//
//// 트럭
//struct Truck {
//    // 트럭의 위치
//    var position = 0
//    let weight: Int
//
//    // 트럭을 다리 위에서 1 이동 시킴
//    mutating func move() {
//        position += 1
//    }
//}
//
//// 다리
//struct Bridge {
//    // 내부적으로 index queue의 구조를 가짐
//    var index = 0
//    var queue = [Truck]()
//
//    // 길이와 최대 무게
//    let length: Int
//    let maxWeight: Int
//
//    // 다리가 비었는지
//    var isEmpty: Bool {
//        queue.count == index
//    }
//
//    // 다리 위에 있는 모든 트럭의 무게
//    var totalWeight: Int {
//        queue[index..<queue.count].reduce(0, { $0 + $1.weight })
//    }
//
//    // 맨 앞에 있는 트럭이 다리에서 내리는지
//    var shouldFirstTruckPopped: Bool {
//        if self.isEmpty { return false }
//        return queue[index].position == length
//    }
//
//    // 다음 트럭이 다리 위에 올라올 수 있는지
//    func isAvailable(_ t: Truck) -> Bool {
//        totalWeight + t.weight <= maxWeight
//    }
//
//    // 시간이 1초 지나면 다리 위에 트럭을 1씩 이동
//    mutating func passTime() {
//        for i in index..<queue.count {
//            queue[i].move()
//        }
//    }
//
//    // 새 트럭 push
//    mutating func push(_ truck: Truck) {
//        queue.append(truck)
//    }
//
//    // 다 도착한 트럭 pop
//    mutating func pop() {
//        index += 1
//    }
//
//}
//
//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//    var trucks = truck_weights.reversed().map { Truck(weight: $0) }
//    var bridege = Bridge(length: bridge_length, maxWeight: weight)
//    var time = 0
//
//    while true {
//        // 기다리는 트럭도 없고 다리도 비면 리턴
//        if trucks.isEmpty && bridege.isEmpty {
//            break
//        }
//
//        // 마지막 트럭이 pop 되어야 하면 pop
//        if bridege.shouldFirstTruckPopped {
//            bridege.pop()
//        }
//
//        // 새로운 트럭이 올라갈 수 있으면 push
//        if !trucks.isEmpty && bridege.isAvailable(trucks.last!) {
//            bridege.push(trucks.popLast()!)
//        }
//
//        // 다리 위에 트럭들 이동
//        bridege.passTime()
//        time += 1
//    }
//
//
//    return time
//}
//
//print(solution(2, 10, [7,4,5,6]))
//print(solution(100, 100, [10]))

//import Foundation
//
//func solution(_ citations:[Int]) -> Int {
//
//    // 이진 탐색을 위한 양 끝 설정
//    var start = 0
//    var end = citations.max()!
//    //👉 h-index는 가장 많이 인용된 논문의 인용 횟수를 넘을 수 없음!
//    var ans = 0
//
//    // 이진 탐색
//    while start <= end {
//        let mid = (start + end) / 2
//        var cnt = 0
//
//        // mid 이상 인용된 논문 갯수 세기
//        for citation in citations {
//            if citation >= mid { cnt += 1 }
//        }
//
//        // mid 이상 인용된 논문이 mid개 이상이라면 h-index의 조건 부합하므로
//            // ans 갱신하고 더 높은 mid 탐색
//        if cnt >= mid {
//            start = mid + 1
//            ans = mid
//        // h-index의 조건에 부합하지 않으면 더 낮은 mid 탐색
//        } else {
//            end = mid - 1
//        }
//    }
//
//    return ans
//}
