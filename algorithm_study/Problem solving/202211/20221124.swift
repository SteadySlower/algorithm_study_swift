//
//  20221124.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/28.
//

//func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
//
//    func isValid(_ dict: [String: Int]) -> Bool {
//        dict.values.reduce(0, +) == 0
//    }
//
//    var dict = [String:Int]()
//    var ans = 0
//
//    for i in 0..<want.count {
//        dict[want[i]] = number[i]
//    }
//
//    for i in 0..<(discount.count - 10 + 1) {
//        var dict = dict
//        var index = i
//        for _ in 0..<10 {
//            if dict[discount[index]] != nil && dict[discount[index]]! > 0 {
//                dict[discount[index]]! -= 1
//            }
//            index += 1
//        }
//        if isValid(dict) { ans += 1 }
//    }
//
//    return ans
//}

//func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
//    func counter(_ array: ArraySlice<String>) -> [String:Int] {
//        var dict = [String:Int]()
//        for item in array {
//            dict[item, default: 0] += 1
//        }
//        return dict
//    }
//
//    var dict = [String:Int]()
//    var ans = 0
//
//    for i in 0..<want.count {
//        dict[want[i]] = number[i]
//    }
//
//    for i in 0..<(discount.count - 10 + 1) {
//        var slice = discount[i..<i + 10]
//        var sliceDict = counter(slice)
//        if dict == sliceDict { ans += 1 }
//    }
//
//    return ans
//}
//
//print(solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]))
//
//print(solution(["apple"], [10], ["banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana"]))
