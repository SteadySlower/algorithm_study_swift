//
//  20230420.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/20.
//

//func solution(_ a:[Int]) -> Int {
//
//    let sorted = a.sorted()
//    var left = a[0]
//    var index = 0
//    var right = sorted[index]
//    var table = [Int:Bool]()
//    table[left] = true
//    table[right] = true
//
//    print(sorted)
//    var ans = 0
//
//    for i in 0..<a.count {
//        if i == 0 || i == (a.count - 1) { ans += 1; continue }
//        // 오른쪽에서 가장 작은 것 구하는 로직을 O(1)로 만들어야 함
//        if a[i] == right {
//            while !table[sorted[index], default: false] {
//                index += 1
//            }
//            right = sorted[index]
//            table[right] = true
//        }
//        if !(a[i] > left && a[i] > right) { ans += 1 }
//        if a[i] < left {
//            left = a[i]
//            table[left] = true
//        }
//    }
//
//    return ans
//}
//
//print(solution([9,-1,-5]))
//print("------")
//print(solution([-16,27,65,-2,58,-92,-71,-68,-61,-33]))
