//
//  20230628.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/28.
//

//// 이모티콘, 할인율의 쌍을 나타내는 구조체
//struct Sell {
//    let emoticon: Int
//    let discount: Int
//
//    // 할인율을 감안한 이모티콘 가격
//    var price: Int {
//        Int(emoticon * (100 - discount) / 100)
//    }
//}
//
//// 이모티콘 종류 x 할인율의 조합을 구하는 함수
//func combination(emoticons: [Int]) -> [[Sell]] {
//
//    // 모든 케이스를 리턴할 배열
//    var result = [[Sell]]()
//
//    // 할인율
//    let discounts = [10, 20, 30, 40]
//
//    // 재귀함수 구현
//    func combi(now: [Sell]) {
//        // 탈출 조건
//        if now.count == emoticons.count {
//            result.append(now)
//            return
//        }
//
//        // 다음 이모티콘의 index
//        let next = now.count
//
//        // 할인율은 중복 가능하므로 10 ~ 40까지 모든 케이스에 대해서 탐색
//        for i in 0..<4 {
//            var now = now
//            now.append(Sell(emoticon: emoticons[next], discount: discounts[i]))
//            combi(now: now)
//        }
//    }
//
//    combi(now: [])
//
//    return result
//}
//
//func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
//    // 결과 배열: [가입자수, 판매액]
//    var results = [[Int]]()
//
//    // 모든 이모티콘-할인율 조합 구하기
//    let sellCases = combination(emoticons: emoticons)
//
//    // 모든 케이스에 대해서
//    for sells in sellCases {
//        // 각 user별 구매액: sales[i] = users[i]의 이모티콘 구매 금액
//        var sales = Array(repeating: 0, count: users.count)
//        // 모든 이모티콘에 대해서 구매 여부 결정
//        for i in 0..<sells.count {
//            for j in 0..<users.count {
//                // 원하는 할인율 이상이면 구입
//                if users[j][0] <= sells[i].discount {
//                    sales[j] += sells[i].price
//                }
//            }
//        }
//        // 결과 배열: [가입자수, 판매액]
//        var result = [0, 0]
//
//        for i in 0..<sales.count {
//            // 원하는 금액 이상이면 이모티콘 플러스 가입
//            if sales[i] >= users[i][1] {
//                result[0] += 1
//            // 원하는 금액 이하면 그냥 구입
//            } else {
//                result[1] += sales[i]
//            }
//        }
//        results.append(result)
//    }
//
//    // 가입자수, 판매액 기준 내림차순으로 정렬
//    results.sort { r1, r2 in
//        if r1[0] == r2[0] {
//            return r1[1] > r2[1]
//        } else {
//            return r1[0] > r2[0]
//        }
//    }
//
//    return results[0]
//}

//import Foundation
//
//struct Candidate {
//    let lang: String
//    let field: String
//    let rank: String
//    let food: String
//    let score: Int
//
//    init(_ input: String) {
//        let inputArray = input.split(separator: " ").map { String($0) }
//        self.lang = inputArray[0]
//        self.field = inputArray[1]
//        self.rank = inputArray[2]
//        self.food = inputArray[3]
//        self.score = Int(inputArray[4])!
//    }
//
//    func isMatching(_ query: String) -> Bool {
//        let queryArray = query.components(separatedBy: " and ").map { String($0) }
//
//        if queryArray[0] != "-" && queryArray[0] != lang {
//            return false
//        }
//
//        if queryArray[1] != "-" && queryArray[1] != field {
//            return false
//        }
//
//        if queryArray[2] != "-" && queryArray[2] != rank {
//            return false
//        }
//
//        if queryArray[3] != "-" && queryArray[3] != food {
//            return false
//        }
//
//        if Int(queryArray[4])! > score {
//            return false
//        }
//
//        return true
//    }
//}
//
//func solution(_ info:[String], _ query:[String]) -> [Int] {
//
//    let candidates = info.map { Candidate($0) }
//
//    var result = [Int]()
//
//    for q in query {
//        let queried = candidates.map { $0.isMatching(q) }.filter { $0 == true }.count
//        result.append(queried)
//    }
//
//    return result
//}
//
