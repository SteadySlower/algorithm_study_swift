//
//  20220819.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/19.
//

//// 모의고사

//import Foundation
//
//func solution(_ answers:[Int]) -> [Int] {
//    // 찍는 패턴을 저장하는 배열
//    let checks = [
//        [1, 2, 3, 4, 5],
//        [2, 1, 2, 3, 2, 4, 2, 5],
//        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
//    ]
//
//    // 찍었는데 맞은 갯수를 저장하는 배열
//    var counts = Array(repeating: 0, count: checks.count)
//
//    // 모든 답을 순회하면서 채점
//    for (ansIndex, answer) in answers.enumerated() {
//        // 각각의 찍는 패턴에 따라서
//        for (checkIndex, check) in checks.enumerated() {
//            if answer == check[ansIndex % check.count] { counts[checkIndex] += 1 }
//            // check[ansIndex % check.count] = 그 정답에 찍은 답
//        }
//    }
//
//    return counts.enumerated().filter{ $0.element == counts.max()! }.map { $0.offset + 1 }
//    // counts를 enumberated한 후에
//    // 최댓값만 filter하고
//    // 최종적으로 index + 1해서 리턴
//}

//
//import Foundation
//
//func solution(_ answers:[Int]) -> [Int] {
//    // 찍은 답을 계산하는 함수
//    func countAns(_ check: [Int]) -> Int {
//        // 찍은 답과 답지의 index
//        var checkIndex = 0
//        var ansIndex = 0
//
//        // 맞은 문제 count
//        var cnt = 0
//
//        // 모든 정답을 체크할 때까지
//        while ansIndex < answers.count {
//            if check[checkIndex] == answers[ansIndex] {
//                cnt += 1
//            }
//            ansIndex += 1
//            // 찍은 답은 계속 반복되므로 마지막 index에 가면 다시 0으로 리셋
//            checkIndex = (checkIndex + 1) % check.count
//        }
//
//        return cnt
//    }
//
//    // 각각의 학생이 찍는 패턴
//    let checks = [
//        [1, 2, 3, 4, 5],
//        [2, 1, 2, 3, 2, 4, 2, 5],
//        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
//    ]
//
//    // 각 학생 별로 맞은 갯수를 저장
//    var counts = [Int]()
//
//    // 계산해서 counts에 담아 놓는다.
//    for check in checks {
//        counts.append(countAns(check))
//    }
//
//    // 최고 점수를 받은 사람을 result 배열에 저장한다.
//    let max = counts.max()!
//    var result = [Int]()
//    for i in 1...3 {
//        if counts[i - 1] == max { result.append(i) }
//    }
//
//    return result
//}



//// 타겟 넘버
//
//import Foundation
//
//func solution(_ numbers:[Int], _ target:Int) -> Int {
//    var cnt = 0
//    var result = 0
//
//    func dfs(_ index: Int) {
//        // 탈출 조건
//        if index == numbers.count {
//            if result == target { cnt += 1 }
//            return
//        }
//
//        // 순서를 유지해야 하므로 현재 index만 탐색을 실행한다.
//        result += numbers[index]
//        dfs(index + 1)
//        result -= numbers[index]
//
//        result -= numbers[index]
//        dfs(index + 1)
//        result += numbers[index]
//    }
//
//    dfs(0)
//
//    return cnt
//}
