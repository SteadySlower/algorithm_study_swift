//
//  20220927.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/27.
//

//func solution(_ A:[Int], _ B:[Int]) -> Int {
//    var ans = 0
//
//    let sortedA = A.sorted(by: >)
//    let sortedB = B.sorted(by: <)
//
//    let count = A.count
//
//    for i in 0..<count {
//        ans += sortedA[i] * sortedB[i]
//    }
//
//    return ans
//}

// 시간초과...

//func solution(_ stones:[Int], _ k:Int) -> Int {
//
//    var bridges = stones
//    var cnt = 0
//
//    func isAvailable() -> Bool {
//        var maxGap = 0
//        var temp = 0
//
//        for i in 0..<bridges.count {
//            if bridges[i] == 0 {
//                temp += 1
//            } else {
//                maxGap = max(temp, maxGap)
//                temp = 0
//            }
//        }
//
//        return maxGap < k
//    }
//
//    func crossBridge() {
//        for i in 0..<bridges.count {
//            if bridges[i] > 0 { bridges[i] -= 1 }
//        }
//        cnt += 1
//    }
//
//    while isAvailable() {
//        crossBridge()
//    }
//
//    return cnt
//}

//func solution(_ stones:[Int], _ k:Int) -> Int {
//
//    // n명의 인원이 다리를 건널 수 있는지 확인하는 함수
//    func isAvailable(_ n: Int) -> Bool {
//        // (n - 1)명이 건너고 난 이후에 n번째 사람이 건널 수 있는지
//        var gap = 0
//
//        // 뛰어넘어야 하는 디딤돌이 연속으로 k개 이상이면 건널 수 없음.
//        for i in 0..<stones.count {
//            if stones[i] - (n - 1) <= 0 {
//                gap += 1
//                if gap > k - 1 { return false }
//            } else {
//                gap = 0
//            }
//        }
//
//        return true
//    }
//
//    // 이분 탐색을 활용한 Parametric Search
//    var start = 0
//    var end = 200000000
//    var ans = 0
//
//    while start <= end {
//        let mid = (start + end) / 2
//
//        if isAvailable(mid) {
//            start = mid + 1
//            ans = mid
//        } else {
//            end = mid - 1
//        }
//
//    }
//
//    return ans
//}
//
//print(solution([2, 4, 5, 3, 2, 1, 4, 2, 5, 1], 3))
