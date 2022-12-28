//
//  20221228.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/28.
//

//// 전체 메뉴를 구하지 않고 부분의 메뉴만을 구한 방법
//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    // 주문으로 만들 수 있는 세트의 조합
//    var candidates = [String:Int]()
//
//    // 주문을 받아서 세트를 만드는 함수
//        //👉 dfs릃 활용해서 조합(combination)을 방법과 동일한 원리
//    func findCandidates(_ index: Int, order: [String], now: String) {
//
//        // 세트가 course의 최대 길이보다 커지면 리턴
//        if now.count > course.last! {
//            return
//        }
//
//        for i in index..<order.count {
//            let new = now + order[i]
//            // 세트의 길이가 course 안에 있다면
//            if course.contains(new.count) {
//                candidates[new, default: 0] += 1 //👉 candidates에 += 1
//            }
//            findCandidates(i + 1, order: order, now: new)
//        }
//
//    }
//
//    // 주문들을 가지고 세트의 조합을 모두 구하기
//    for order in orders {
//        findCandidates(0, order: order.map { String($0) }.sorted(), now: "")
//        //❗️주문이 알파벳 순서대로 주어지는 것이 아니므로 정렬해야 함!
//    }
//
//    // 세트의 길이별 최대 값을 저장하는 배열 (세트의 최대 길이 10)
//    var max = Array(repeating: 0, count: 11)
//
//    // 모든 세트를 순회하면서 세트의 길이별로 최댓값을 구한다
//        //👉 최댓값을 가진 세트가 2개 이상인 경우에 모두 출력해야 하므로
//    for candidate in candidates.keys {
//        if max[candidate.count] < candidates[candidate]! {
//            max[candidate.count] = candidates[candidate]!
//        }
//    }
//
//    return candidates.keys.filter { max[$0.count] > 1 && candidates[$0] == max[$0.count] }.sorted()
//        //👉 세트 후보 중에서 1번만 선택된 세트는 제외하고
//        //👉 세트 후보 중에서 가장 많이 선택된 세트만 filter
//        //👉 그리고 정렬해서 정답으로 리턴
//}
//
//
//print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
//print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2, 3, 5]))
//print(solution(["XYZ", "XWY", "WXA"], [2, 3, 4]))
