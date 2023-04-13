//
//  20230413.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/13.
//

//func solution(_ enroll:[String], _ referral:[String], _ seller:[String], _ amount:[Int]) -> [Int] {
//
//    var indexTable = [String:Int]()
//
//    for i in 0..<enroll.count {
//        indexTable[enroll[i]] = i
//    }
//
//    var ans = Array(repeating: 0, count: enroll.count)
//
//    var refer = [Int]()
//
//    for i in 0..<referral.count {
//        if referral[i] == "-" {
//            refer.append(-1)
//        } else {
//            refer.append(indexTable[referral[i]]!)
//        }
//    }
//
//    var sells = Array(repeating: 0, count: enroll.count)
//
//    for i in 0..<seller.count {
//        let index = indexTable[seller[i]]!
//        let amount = amount[i]
//        sells[index] = amount
//    }
//
//    for i in 0..<sells.count {
//        var now = i
//        var money = Array(repeating: 0, count: enroll.count)
//        money[now] = sells[now] * 100
//        while true {
//            let r = refer[now]
//            if r < 0 {
//                money[now] = money[now]  - (money[now] / 10)
////                print("to center: from \(enroll[now]) \(money[now])")
//                break
//            }
//            money[r] = money[now] / 10
//            money[now] = money[now] - money[r]
////            print("now: \(enroll[now]), \(money[now]) to \(enroll[r]), \(money[r])")
//            now = r
//        }
//        for i in 0..<money.count {
//            ans[i] += money[i]
//        }
//    }
//
//
//    return ans
//}
//
//
//print(solution(["john", "mary", "edward", "sam", "emily", "jaimie", "tod", "young"],
//               ["-", "-", "mary", "edward", "mary", "mary", "jaimie", "edward"],
//               ["young", "john", "tod", "emily", "mary"],
//               [12, 4, 2, 5, 10]))
//
//
////[360, 958, 108, 0, 450, 18, 180, 1080]
////[360, 958, 108, 0, 450, 18, 180, 1080]
