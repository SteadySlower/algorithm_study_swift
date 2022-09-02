//
//  20220901.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/01.
//

//func solution(_ number:String, _ k:Int) -> String {
//    let nums = number.map { Int(String($0))! }
//    var stack = [Int]()
//    var cnt = k
//
//    // 모든 숫자를 순회하면서 stack을 통해 큰 수의 순서대로 정렬
//    for num in nums {
//        // case 1: 모든 숫자를 순회하기 전에 cnt가 0이 된 경우
//        if cnt == 0 {
//            stack.append(num) //👉 남은 숫자를 그냥 stack에 넣는다.
//            continue
//        }
//
//        // stack의 마지막과 비교하면서
//            // stack의 마지막 보다 크면 stack을 pop
//            // stack이 비었거나 마지막 보다 작으면 push (or cnt가 0 보다 작으면)
//        while true {
//            if let last = stack.last, last < num, cnt > 0 {
//                stack.removeLast()
//                cnt -= 1
//            } else {
//                stack.append(num)
//                break
//            }
//        }
//    }
//
//    // case 2: 모든 숫자를 순회했는데도 cnt가 0보다 큰 경우
//    if cnt > 0 {
//        stack.removeLast(cnt) //👉 stack에 내림차순으로 정렬되어 있으므로 마지막 cnt개를 제거한다.
//    }
//
//    return stack.reduce("") { $0 + "\($1)" }
//}
//
//print(solution("1924", 2))
//
//
//import Foundation
//
//func highesWhenRemovedOne(_ number: String) -> String {
//    var result = 0
//
//    for i in 0..<number.count {
//        var removed = number
//        let index = number.index(number.startIndex, offsetBy: i)
//        removed.remove(at: index)
//        result = max(Int(removed)!, result)
//    }
//
//
//    return String(result)
//}
//
//func solution(_ number:String, _ k:Int) -> String {
//
//    var result = number
//
//    for _ in 0..<k {
//        result = highesWhenRemovedOne(result)
//    }
//
//    return result
//}
//
//print(solution("1924", 3))


//
//let string = "abcde"
//let fromIndex = string.index(string.startIndex, offsetBy: 1)
//let toIndex = string.index(string.startIndex, offsetBy: 3 + 1)
//print(string[fromIndex..<toIndex])
