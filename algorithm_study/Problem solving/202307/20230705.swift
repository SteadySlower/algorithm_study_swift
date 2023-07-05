//
//  20230705.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/05.
//

//// 각각의 개발자의 특성으로 key를 만드는 함수
//func makeKeys(dev: [String]) -> [String] {
//    var result = [String]()
//
//    // 각각의 특성마다 dev의 특성 혹은 "-"(관계없음)을 조합하여 key를 만든다 -> dfs
//    func combi(_ now: [String]) {
//        if now.count == 4 {
//            result.append(now.joined())
//            return
//        }
//
//        let index = now.count
//
//        combi(now + [dev[index]])
//        combi(now + ["-"])
//    }
//
//    combi([])
//
//    return result
//}
//
//// binary Search를 통해서 score이상의 사람들이 몇명인지 찾는 함수
//func binarySearch(_ scores: [Int], _ score: Int) -> Int {
//    // 목표: scores[s]가 score보다 크거나 같은 수 중에 가장 작은 수를 찾는 것
//    var s = 0, e = scores.count
//
//    while s != e {
//        // 현재 영역의 중간이 score보다 큰 경우
//        if scores[(s + e) / 2] >= score {
//            e = (s + e) / 2 // 더 낮은 점수대 검색
//        } else {
//            s = (s + e) / 2 + 1 // 더 높은 점수대 검색
//        }
//    }
//
//    if s < scores.count {
//        return scores.count - s
//    } else { // s == scores.count인 경우: 모든 사람은 점수가 score보다 낮은 경우
//        return 0
//    }
//
//}
//
//func solution(_ info:[String], _ query:[String]) -> [Int] {
//
//    var dict = [String:[Int]]()
//    let info = info.map { $0.split(separator: " ").map { String($0) } }
//
//    // dev를 key들로 바꾸고 각각의 value에 dev의 점수를 append
//    for dev in info {
//        let keys = makeKeys(dev: dev), score = Int(dev[4])!
//        for key in keys {
//            dict[key, default: []].append(score)
//        }
//    }
//
//    // 이진 검색을 위한 value 정렬
//    for key in dict.keys {
//        dict[key]!.sort()
//    }
//
//    let queries = query.map { $0.split(separator: " ").map { String($0) }.filter { $0 != "and" } }
//
//    var ans = [Int]()
//    for query in queries {
//        let key = Array(query[0..<4]).joined() // query를 key로
//        let score = Int(query[4])!
//        guard let scores = dict[key] else {
//            ans.append(0)
//            continue
//        }
//        ans.append(binarySearch(scores, score)) // 이진검색을 통해서 갯수 세기
//    }
//
//    return ans
//}
//
//print(
//    solution(
//        ["java backend junior pizza 150",
//         "python frontend senior chicken 210",
//         "python frontend senior chicken 150",
//         "cpp backend senior pizza 260",
//         "java backend junior chicken 80",
//         "python backend senior chicken 50"],
//        ["java and backend and junior and pizza 100",
//         "python and frontend and senior and chicken 200",
//         "cpp and - and senior and pizza 250",
//         "- and backend and senior and - 150",
//         "- and - and - and chicken 100",
//         "- and - and - and - 150"]
//    )
//)
//
//
//
//
