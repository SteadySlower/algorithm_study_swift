//
//  20221117.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/17.
//

/*
 그리디
 적팀의 약체를 최대한 싼 비용으로 막고 무조건 지면 그냥 가장 약한 애를 내보내서 진다
 
 1 3 5 7
 
 2 2 6 8
 2 6 2 8
 2 6 8 2
 
 1 6 7 8
 
 1 2 3 8
 2 1 3 8
 2 8 3 1
 */

// 🚫 정답은 맞았는데 효율성 떨어짐 -> O(N^2)
//func solution(_ a:[Int], _ b:[Int]) -> Int {
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

//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    var aArray = a.sorted()
//    let bArray = b.sorted()
//    var ans = 0
//
//    for i in 0..<a.count {
//        for j in 0..<(a.count - i) {
//            if aArray[i + j] < bArray[i] {
//                aArray.swapAt(i, i + j)
//                ans += 1
//                break
//            }
//        }
//    }
//
//    return ans
//}

// stack을 활용한 풀이법
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    var stackA = a.sorted(by: >)
//    var stackB = b.sorted(by: >)
//    var ans = 0
//
//    while !stackA.isEmpty {
//        let a = stackA.popLast()!
//        while !stackB.isEmpty {
//            let b = stackB.popLast()!
//            if b > a {
//                ans += 1
//                break
//            }
//        }
//    }
//    return ans
//}
//
//
//print(solution([5,1,3,7], [2,2,6,8]))
//print(solution([2, 2, 2, 2], [1, 1, 1, 1]))
