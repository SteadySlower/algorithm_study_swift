//
//  20221003.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/03.
//

//func solution(_ arr:[Int]) -> Int {
//
//    func isLCM(_ lcm: Int) -> Bool {
//        for n in arr {
//            if lcm % n != 0 { return false }
//        }
//        return true
//    }
//
//    var lcm = arr.max()!
//
//    while !isLCM(lcm) {
//        lcm += 1
//    }
//
//    return lcm
//}
//
//print(solution([2,6,8,14]))


//func solution(_ s:String) -> Int {
//    func f() {
//        if sArray.count == 0 {
//            flag = false
//            return
//        }
//
//        for i in 0..<(sArray.count - 1) {
//            if sArray[i] == sArray[i + 1] {
//                sArray.removeSubrange(i...(i + 1))
//                return
//            }
//        }
//        flag = false
//        return
//    }
//
//
//    var sArray = s.map { String($0) }
//    var flag = true
//
//    while flag {
//        f()
//    }
//
//    return sArray.count == 0 ? 1 : 0
//}
//
//print(solution("baabaa"))
//print(solution("cdcd"))
