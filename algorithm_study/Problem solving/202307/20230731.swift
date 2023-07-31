//
//  20230731.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/31.
//

//func find111(_ s: [String]) -> Int? {
//    guard s.count > 3 else { return nil }
//
//    for i in 0..<(s.count - 2) {
//        if s[i] == "1" && s[i + 1] == "1" && s[i + 2] == "1" { return i }
//    }
//
//    return nil
//}
//
//func find110(_ s: [String]) -> Int? {
//    guard s.count > 3 else { return nil }
//
//    var result = [Int]()
//
//    for i in 0..<(s.count - 2) {
//        if s[i] == "1" && s[i + 1] == "1" && s[i + 2] == "0" { result.append(i) }
//    }
//
//    return result.last
//}
//
//// 110과 111의 자리를 바꾸는 법 (without array에서 넣고 빼고)
//
//func solution(_ s:[String]) -> [String] {
//
//    let strings = s.map { $0.map { String($0) } }
//
//    var ans = [String]()
//
//    for s in strings {
//        var s = s
//
//        while let indexOf111 = find111(s),
//              let indexOf110 = find110(s),
//              indexOf111 < indexOf110 {
//
//            s[indexOf111 + 2] = "0"
//            s[indexOf110 + 2] = "1"
//        }
//
////        print("s: \(s), 111: \(find111(s)), 110: \(find110(s))")
//
//        ans.append(s.joined())
//    }
//
//    return ans
//}
//
//print(solution(["1110","100111100","0111111010"]))
