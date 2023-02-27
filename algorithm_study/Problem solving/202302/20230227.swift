//
//  20230227.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/27.
//

//func solution(_ order:[Int]) -> Int {
//
//    // 선입선출 보조벨트 = 스택
//    var stack = [Int]()
//
//    // 현재 컨테이너 벨트에서 나오고 있는 상자
//    var now = 1
//
//    // 트럭에 실은 짐의 수
//    var count = 0
//
//    // now는 최대 order의 길이
//    while now <= order.count {
//        // 일단 스택에 넣는다.
//        stack.append(now)
//        // 보조벨트의 마지막이 현재 트럭에 실을 짐의 번호와 동일하면 count에 +1
//        while let last = stack.last,
//              last == order[count] {
//            _ = stack.popLast()!
//            count += 1
//        }
//
//        // 다음 짐을 싣는다.
//        now += 1
//    }
//
//    return count
//}

//print(solution([4, 3, 1, 2, 5]))
//print(solution([5, 4, 3, 2, 1]))


//func solution(_ order:[Int]) -> Int {
//
//    var stack = [Int]()
//    var now = 1
//    var count = 0
//
//    while count < order.count {
//        // 1. 일단 보조벨트에서 꺼낼 것 있는지 확인
//        if let last = stack.last,
//           last == order[count] {
//            _ = stack.popLast()!
//            count += 1
//        // 2. 보조벨트에 꺼낼 것 없으면 현재 상자를 실을 수 있는 지 확인
//        } else if now == order[count] {
//            now += 1
//            count += 1
//        // 3. 현재 실을 것이 없다면 보조벨트에 올린다.
//        } else {
//            if now <= order.count {
//                stack.append(now)
//                now += 1
//            } else {
//                break
//            }
//        }
//
//    }
//
//    return count
//}
//
//print(solution([4, 3, 1, 2, 5]))
//print(solution([5, 4, 3, 2, 1]))

//func isValid(_ rc1: (Int, Int), _ rc2: (Int, Int)) -> Bool {
//
//    let manDistance = abs(rc1.0 - rc2.0) + abs(rc1.1 - rc2.1)
//
//    return (0...4).contains(rc2.0) && (0...4).contains(rc2.1) && manDistance > 0 && manDistance <= 2
//}
//
//func findPersion(_ rc: (Int, Int)) {
//
//}
//
//func solution(_ places:[[String]]) -> [Int] {
//
//    let places = places.map { $0.map { $0.map { String($0) } } }
//
//    return []
//}
//
//print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))
