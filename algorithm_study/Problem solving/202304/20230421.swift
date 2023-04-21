//
//  20230421.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/21.
//

//func solution(_ a:[Int]) -> Int {
//
//    // left[i] = 0 ~ i까지의 수 중에 최솟값
//    var left = Array(repeating: Int.max, count: a.count)
//    left[0] = a[0]
//    for i in 1..<a.count {
//        left[i] = a[i] < left[i - 1] ? a[i] : left[i - 1]
//    }
//
//    // right[i] = i ~ (a.count - 1)까지의 수 중에 최솟값
//    var right = Array(repeating: Int.max, count: a.count)
//    right[a.count - 1] = a[a.count - 1]
//    for i in 2...a.count {
//        let index = a.count - i
//        right[index] = a[index] < right[index + 1] ? a[index] : right[index + 1]
//    }
//
//    // a[0]와 a[a.count - 1]은 무조건 최후에 터뜨릴 수 있음
//    var ans = 2
//
//    // 왼쪽에 위치한 풍선들의 최솟값, 오른쪽에 위치한 풍선들의 최솟값 보다 모두 크지 않으면 최후에 터뜨릴 수 있음.
//    for i in 1..<(a.count - 1) {
//        if !(a[i] > left[i - 1] && a[i] > right[i + 1]) { ans += 1 }
//    }
//
//    return ans
//}
//
//print(solution([9,-1,-5]))
//print("------")
//print(solution([-16,27,65,-2,58,-92,-71,-68,-61,-33]))
