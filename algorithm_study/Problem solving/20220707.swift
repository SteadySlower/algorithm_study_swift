//
//  20220707.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/07.
//

//// 숫자 카드
//
//// 입력 받기
//let N = Int(readLine()!)!
//let cards = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
//let M = Int(readLine()!)!
//let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//// 이진 탐색 구현
//func binarySearch(_ n: Int) {
//    var start = 0
//    var end = N - 1
//    
//    while start <= end {
//        let mid = (start + end) / 2
//        if cards[mid] == n { print("1", terminator: " "); return }
//        
//        if cards[mid] < n {
//            start = mid + 1
//        } else {
//            end = mid - 1
//        }
//    }
//    
//    print("0", terminator: " ")
//}
//
//for num in nums {
//    binarySearch(num)
//}
