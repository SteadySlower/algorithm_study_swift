//
//  20231205.swift
//  algorithm_study
//
//  Created by JW Moon on 12/5/23.
//

//// 로그 자료형
//struct Log: Comparable {
//    
//    let originalString: String
//    let id: String
//    let logs: String
//    let isLetter: Bool
//    
//    init(_ s: String) {
//        self.originalString = s
//        // " "를 기준으로 split
//        let array = s.split(separator: " ").map { String($0) }
//        self.id = array[0]
//        self.logs = array.dropFirst().joined(separator: " ")
//        //✋ 그냥 Int로 하면 너무 커서 nil됨
//        self.isLetter = Int(String(array[1].first!)) == nil
//    }
//    
//    static func < (lhs: Log, rhs: Log) -> Bool {
//        // 둘의 로그 타입이 일치하지 않는 경우
//        guard lhs.isLetter == rhs.isLetter else {
//            return lhs.isLetter // 문자 로그가 앞에 온다
//        }
//        
//        // 둘 다 숫자 로그인 경우
//        guard lhs.isLetter else {
//            return false // 입력 순서대로
//        }
//        
//        // 둘 다 문자 로그이고 둘이 로그가 일치하지 않는 경우
//        guard lhs.logs == rhs.logs else {
//            return lhs.logs < rhs.logs // 로그의 사전순
//        }
//        
//        // 둘 다 문자 로그이고 둘의 로그가 일치하는 경우
//        return lhs.id < rhs.id // id의 사전순
//    }
//    
//}
//
//class Solution {
//    func reorderLogFiles(_ logs: [String]) -> [String] {
//        return logs.map { Log($0) }.sorted(by: <).map { $0.originalString }
//    }
//}
//
//struct Number: Comparable {
//    let num: Int
//    
//    static func < (lhs: Number, rhs: Number) -> Bool {
//        print(lhs.num, rhs.num)
//        return false
//    }
//}
//
//print([1, 2, 3, 4, 5].map { Number(num: $0) }.sorted(by: <).map { $0.num })
//
///*
// 🖨️ 출력 결과
// 4 5
// 3 4
// 2 3
// 1 2
// [5, 4, 3, 2, 1]
// */
//
//print(Int.max)
//print(Int("9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999"))
