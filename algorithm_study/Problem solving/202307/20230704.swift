//
//  20230704.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/04.
//

//func makeKeys(dev: [String]) -> [String] {
//    var result = [String]()
//
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
//func binarySearch(_ scores: [Int], _ score: Int) -> Int {
//    guard !scores.isEmpty else { return 0 }
//
//    var s = 0, e = scores.count
//
//    while s != e, s < scores.count {
//        if scores[(s + e) / 2] >= score {
//            e = (s + e) / 2
//        } else {
//            s = (s + e) / 2 + 1
//        }
//    }
//
//    if s == e, scores[s] >= score {
//        return scores.count - s
//    } else {
//        return 0
//    }
//
//}
//
//func solution(_ info:[String], _ query:[String]) -> [Int] {
//
//    var dict = [String:[Int]]()
//
//    let info = info.map { $0.split(separator: " ").map { String($0) } }
//
//    for dev in info {
//        let keys = makeKeys(dev: dev), score = Int(dev[4])!
//        for key in keys {
//            dict[key, default: []].append(score)
//        }
//    }
//
//    for key in dict.keys {
//        dict[key]!.sort()
//    }
//
//    let queries = query.map { $0.split(separator: " ").map { String($0) }.filter { $0 != "and" } }
//
//    var ans = [Int]()
//
//    for query in queries {
//        let key = Array(query[0..<4]).joined()
//        let score = Int(query[4])!
//        let scores = dict[key, default: []]
//        ans.append(binarySearch(scores, score))
//    }
//
//    return ans
//}
