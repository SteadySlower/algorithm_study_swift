//
//  20230627.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/27.
//

//struct Sell {
//    let emoticon: Int
//    let discount: Int
//
//    var price: Int {
//        Int(emoticon * (100 - discount) / 100)
//    }
//}
//
//func combination(emoticons: [Int]) -> [[Sell]] {
//
//    var result = [[Sell]]()
//
//    let discounts = [10, 20, 30, 40]
//
//    func combi(now: [Sell]) {
//        if now.count == emoticons.count {
//            result.append(now)
//            return
//        }
//
//        let next = now.count
//
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
//
//    let discounts = [10, 20, 30, 40]
//
//    var results = [[Int]]()
//
//    let sellCases = combination(emoticons: emoticons)
//
//    for sells in sellCases {
//        var sales = Array(repeating: 0, count: users.count)
//        for i in 0..<sells.count {
//            for j in 0..<users.count {
//                if users[j][0] <= sells[i].discount {
//                    sales[j] += sells[i].price
//                }
//            }
//        }
//        var result = [0, 0]
//        for i in 0..<sales.count {
//            if sales[i] >= users[i][1] {
//                result[0] += 1
//            } else {
//                result[1] += sales[i]
//            }
//        }
//        results.append(result)
//    }
//
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
//
//print(solution([[40, 10000], [25, 10000]], [7000, 9000]))
