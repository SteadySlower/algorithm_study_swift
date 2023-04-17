//
//  20230417.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/17.
//

//func solution(_ enroll:[String], _ referral:[String], _ seller:[String], _ amount:[Int]) -> [Int] {
//
//    // 이름 - 인덱스
//    var indexTable = [String:Int]()
//
//    for (i, name) in enroll.enumerated() {
//        indexTable[name] = i
//    }
//
//    // 정답 배열
//    var ans = Array(repeating: 0, count: enroll.count)
//
//    // 판매 건당 반복
//    for (s, a) in zip(seller, amount) {
//        var now = indexTable[s]!
//        var nowMoney = a * 100
//
//        var refer = referral[now]
//        var give = nowMoney / 10
//
//        // 추천인이 없거나 10%가 원단위 절삭일 때까지 반복
//        while refer != "-" && give > 0  {
//            // 현재 사람이 90% 먹는다
//            ans[now] += nowMoney - give
//
//            // 10%는 추천인이 가지고 가서 거기서 다시 분배
//            now = indexTable[refer]!
//            nowMoney = give
//
//            // 새로운 추천인과 추천인이 먹을 돈
//            refer = referral[now]
//            give = nowMoney / 10
//        }
//
//        // 반복문이 끝나면 현재 사람이 남은 돈은 먹는다
//            // 추천인이 없으면 센터에 떼주고
//            // 추천인이 있는데 절삭이면 (= give == 0)이면 다 먹는다
//        ans[now] += nowMoney - give
//    }
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
