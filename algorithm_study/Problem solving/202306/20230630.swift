//
//  20230630.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/30.
//

//func solution(_ info:[String], _ query:[String]) -> [Int] {
//
//    func queryToKeysAndScore(_ query: String) -> ([String], Int) {
//        func addKey(to keys: [String], from query: String, allChoices: [String]) -> [String] {
//            keys
//            .map { key in query == "-" ? allChoices.map { key + $0 } : [key + query] }
//            .reduce([], +)
//        }
//
//        var keys = [""]
//
//        let query = query.split(separator: " ")
//            .map { String($0) }
//            .filter { $0 != "and" }
//
//        let allChoicesArray = [
//            ["cpp", "java", "python"],
//            ["frontend", "backend"],
//            ["junior", "senior"],
//            ["chicken", "pizza"]
//        ]
//
//        for i in 0..<4 {
//            keys = addKey(to: keys, from: query[i], allChoices: allChoicesArray[i])
//        }
//
//        let score = Int(query[4])!
//
//        return (keys, score)
//    }
//
//    var dict = [String:[Int]]()
//
//    info.map { $0.split(separator: " ").map { String($0) } }
//        .map { ("\($0[0])\($0[1])\($0[2])\($0[3])", Int($0[4])!) }
//        .forEach { dict[$0.0, default: []].append($0.1) }
//
//    return query
//            .map { queryToKeysAndScore($0) }
//            .map { (keys, score) in
//                keys.map { dict[$0, default: []] }
//                    .reduce([], +)
//                    .filter { $0 >= score }
//                    .count
//            }
//}
//
//print(solution(["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"], ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"]))
