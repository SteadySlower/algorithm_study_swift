//
//  20230629.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/29.
//

//enum Lang {
//    case any, cpp, java, python
//
//    init(_ s: String) {
//        switch s {
//        case "cpp":
//            self = .cpp
//        case "java":
//            self = .java
//        case "python":
//            self = .python
//        default:
//            self = .any
//        }
//    }
//
//    func isMatching(_ query: Lang) -> Bool {
//        query == .any || query == self
//    }
//}
//
//enum Field {
//    case any, frontend, backend
//
//    init(_ s: String) {
//        switch s {
//        case "frontend":
//            self = .frontend
//        case "backend":
//            self = .backend
//        default:
//            self = .any
//        }
//    }
//
//    func isMatching(_ query: Field) -> Bool {
//        query == .any || query == self
//    }
//}
//
//enum Rank {
//    case any, junior, senior
//
//    init(_ s: String) {
//        switch s {
//        case "junior":
//            self = .junior
//        case "senior":
//            self = .senior
//        default:
//            self = .any
//        }
//    }
//
//    func isMatching(_ query: Rank) -> Bool {
//        query == .any || query == self
//    }
//}
//
//enum Food {
//    case any, pizza, chicken
//
//    init(_ s: String) {
//        switch s {
//        case "pizza":
//            self = .pizza
//        case "chicken":
//            self = .chicken
//        default:
//            self = .any
//        }
//    }
//
//    func isMatching(_ query: Food) -> Bool {
//        query == .any || query == self
//    }
//}
//
//struct Query {
//    let lang: Lang
//    let field: Field
//    let rank: Rank
//    let food: Food
//    let score: Int
//
//    init(_ query: String) {
//        let queryArray = query.split(separator: " ").map { String($0) }.filter { $0 != "and" }
//        self.lang = .init(queryArray[0])
//        self.field = .init(queryArray[1])
//        self.rank = .init(queryArray[2])
//        self.food = .init(queryArray[3])
//        self.score = Int(queryArray[4])!
//    }
//}
//
//
//struct Candidate {
//    let lang: Lang
//    let field: Field
//    let rank: Rank
//    let food: Food
//    let score: Int
//
//    init(_ input: String) {
//        let inputArray = input.split(separator: " ").map { String($0) }
//        self.lang = .init(inputArray[0])
//        self.field = .init(inputArray[1])
//        self.rank = .init(inputArray[2])
//        self.food = .init(inputArray[3])
//        self.score = Int(inputArray[4])!
//    }
//
//    func isMatching(_ query: Query) -> Bool {
//        if lang.isMatching(query.lang)
//            && field.isMatching(query.field)
//            && rank.isMatching(query.rank)
//            && food.isMatching(query.food)
//            && score >= query.score
//        {
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//func solution(_ info:[String], _ query:[String]) -> [Int] {
//
//    let candidates = info.map { Candidate($0) }
//    let queries = query.map { Query($0) }
//
//    var result = [Int]()
//
//    for query in queries {
//        var queried = candidates
//            .filter { $0.score >= query.score }
//
//        if query.lang != .any {
//            queried = queried.filter { $0.lang == query.lang }
//        }
//
//        if query.field != .any {
//            queried = queried.filter { $0.field == query.field }
//        }
//
//        if query.rank != .any {
//            queried = queried.filter { $0.rank == query.rank }
//        }
//
//        if query.food != .any {
//            queried = queried.filter { $0.food == query.food }
//        }
//
//        result.append(queried.count)
//    }
//
//    return result
//}
//
//print(solution(["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"], ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"]))
//
