//
//  20220818.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/18.
//

// 위장

//import Foundation
//
//func solution(_ clothes:[[String]]) -> Int {
//    var dict = [String:Int]()
//
//    for clothes in clothes {
//        dict[clothes[1], default: 0] += 1
//    }
//
//    var cases = dict.values.map { $0 + 1 }
//
//    return cases.reduce(1, *) - 1
//}

// import Foundation

//// 조합 구현
//func combination(_ array: [Int], _ length: Int) -> [[Int]] {
//    var result = [[Int]]()
//
//    func combi(_ now: [Int], _ index: Int) {
//        if now.count == length {
//            result.append(now)
//            return
//        }
//
//        for i in index..<array.count {
//            combi(now + [array[i]], i + 1)
//        }
//    }
//
//    combi([], 0)
//
//    return result
//}
//
//func solution(_ clothes:[[String]]) -> Int {
//    var dict = [String:Int]()
//
//    // dictionary에 카테고리별 갯수 저장
//    for clothes in clothes {
//        dict[clothes[1], default: 0] += 1
//    }
//
//    var cnt = 0
//
//    // 1개의 카테고리 ~ 모든 카테고리의 옷을 입는 경우의 각각의 경우의 수를 계산해서 더한다.
//    for i in 1...dict.keys.count {
//        for combi in combination(Array(dict.values), i) {
//            cnt += combi.reduce(1, *)
//        }
//    }
//
//    return cnt
//}

//// 올바른 괄호
//
//import Foundation
//
//func solution(_ s:String) -> Bool {
//    var stack = [Character]()
//
//    for p in s {
//        if p == "(" {
//            stack.append(p)
//        } else {
//            guard let _ = stack.popLast() else { return false }
//        }
//    }
//
//    return stack.isEmpty ? true : false
//}


//// K번째수
//
//import Foundation
//
//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    func operation(_ command: [Int]) -> Int {
//        array[(command[0] - 1)..<command[1]].sorted()[command[2] - 1]
//        //👉 i ~ j까지 자르고 / 정렬한 다음 / k번째 수를 리턴한다.
//    }
//
//    var result = [Int]()
//
//    for command in commands {
//        result.append(operation(command))
//    }
//
//    return result
//}
