//
//  20221125.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/29.
//

//func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
//    // discount에서 연속된 10개의 상품을 dict의 형태로 리턴하는 함수
//    func counter(_ array: ArraySlice<String>) -> [String:Int] {
//        var dict = [String:Int]()
//        for item in array {
//            dict[item, default: 0] += 1
//        }
//        return dict
//    }
//
//    // want와 number로 dict 구하기
//    var dict = [String:Int]()
//    for i in 0..<want.count {
//        dict[want[i]] = number[i]
//    }
//
//    // 회원가입할 수 있는 날짜 수
//    var ans = 0
//    for i in 0..<(discount.count - 10 + 1) {
//        var slice = discount[i..<i + 10]
//        var sliceDict = counter(slice)
//        if dict == sliceDict { ans += 1 } //👉 일치하면 +1
//    }
//
//    return ans
//}
//
//print(solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]))
//
//print(solution(["apple"], [10], ["banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana"]))
