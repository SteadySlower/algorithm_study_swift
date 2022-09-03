//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 문제가 너무 막막할 때는 작은 조각으로 나누어서 구현하자!
 다 구해놓고 세려고 하지말고 세면서 구하자!
 이해 안되면 쓰던가 그려보자!
 알고있는 알고리즘들을 쭉 떠올려보면 방법이 생각날 수도 있다!
 */




//extension String {
//    func next() -> String {
//        switch self {
//        case "A": return "E"
//        case "E": return "I"
//        case "I": return "O"
//        case "O": return "U"
//        default: return ""
//        }
//    }
//}
//
//func next(_ s: String) -> String {
//    if s.count < 5 {
//        return s + "A"
//    }
//
//    var array = s.map { String($0) }
//
//    for i in stride(from: 4, to: 0, by: -1) {
//        if array[i] != "U" {
//            array[i] = array[i].next()
//            break
//        } else {
//            _ = array.removeLast()
//            array[i - 1] = array[i - 1].next()
//            break
//        }
//    }
//
//    return array.reduce("", +)
//}
//
//import Foundation
//
//func solution(_ word:String) -> Int {
//    var from = "A"
//    var cnt = 1
//
//    while from != word {
//        from = next(from)
//        cnt += 1
//    }
//
//    return cnt
//}


