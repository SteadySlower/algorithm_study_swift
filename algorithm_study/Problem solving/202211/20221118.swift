//
//  20221118.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/22.
//

// 🚫 정답은 맞았는데 효율성 떨어짐 -> O(N^2)
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    // 약한 순서대로 정렬
//    let aArray = a.sorted()
//    let bArray = b.sorted()
//    var check = [Int:Bool]()
//    var ans = 0
//
//    for a in aArray {
//        var flag = false
//        for b in bArray {
//            if b > a && !check[b, default: false] {
//                ans += 1
//                check[b] = true
//                flag = true
//                break
//            }
//        }
//        if !flag {
//            for b in bArray {
//                if check[b, default: false] { check[b] = true }
//            }
//        }
//    }
//
//    return ans
//}

//// stack을 활용한 풀이법
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    // a, b를 stack으로 만들기 (약한 선수가 위로 오도록)
//        //👉 array로 stack을 구현하는 경우 내림차순으로 정렬해야 약한 선수가 위로 오게됨.
//    var stackA = a.sorted(by: >)
//    var stackB = b.sorted(by: >)
//    // B팀이 이기는 횟수
//    var ans = 0
//
//    while !stackA.isEmpty {
//        let a = stackA.popLast()! //👉 현재 a에서 가장 약한 선수
//        while !stackB.isEmpty {
//            let b = stackB.popLast()! //👉 현재 b에서 가장 약한 선수
//            if b > a { //👉 b에서 가장 약한 선수가 a에서 가장 약한 선수를 이길 수 있을 때까지 pop
//                ans += 1 //👉 이기면 점수 +1
//                break
//            }
//        }
//    }
//    return ans
//}
//
//print(solution([5,1,3,7], [2,2,6,8]))
