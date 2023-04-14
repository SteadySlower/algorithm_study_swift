//
//  20230414.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/14.
//

//func solution(_ enroll:[String], _ referral:[String], _ seller:[String], _ amount:[Int]) -> [Int] {
//
//    var indexTable = [String:Int]()
//
//    for i in 0..<enroll.count {
//        indexTable[enroll[i]] = i
//    }
//
//    var referByIndex = [Int]()
//
//    for i in 0..<referral.count {
//        if referral[i] == "-" {
//            referByIndex.append(-1)
//        } else {
//            referByIndex.append(indexTable[referral[i]]!)
//        }
//    }
//
//    // 중복 판매가 일어날 수 있다.
//    // 한번에 다 합치면 안된다고 한다.
//    // 가격을 전부 합치고 분배를 하면 -> 한단계 더 올라가는 경우가 발생할 수 있음 (원단위 절삭하기 때문에)
//    var sells = [(Int, Int)]()
//
//    for i in 0..<seller.count {
//        let index = indexTable[seller[i]]!
//        let amount = amount[i]
//        sells.append((index, amount))
//    }
//
//    var ans = Array(repeating: 0, count: enroll.count)
//    // 이 부분에서 시간초과 해결하기!
//    for (person, amount) in sells {
//        var now = person
//        var money = Array(repeating: 0, count: enroll.count)
//        money[now] = amount * 100
//        while true {
//            let give = money[now] / 10
//            if give == 0 { break }
//            let r = referByIndex[now]
//            let take = money[now]  - give
//            if r < 0 {
//                money[now] = take
//                break
//            }
//            money[r] = give
//            money[now] = take
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
//               [12, 4, 2, 5, 10]) == [360, 958, 108, 0, 450, 18, 180, 1080])
//
//print(solution(["john", "mary", "edward", "sam", "emily", "jaimie", "tod", "young"],
//               ["-", "-", "mary", "edward", "mary", "mary", "jaimie", "edward"],
//               ["sam", "emily", "jaimie", "edward"],
//               [2, 3, 5, 4]) == [0, 110, 378, 180, 270, 450, 0, 0])
