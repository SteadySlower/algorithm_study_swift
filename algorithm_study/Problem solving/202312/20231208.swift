//
//  20231208.swift
//  algorithm_study
//
//  Created by JW Moon on 12/8/23.
//

//struct Anagram {
//    let origin: String
//    let ordered: String
//
//    init(_ s: String) {
//        self.origin = s
//        self.ordered = String(s.sorted())
//    }
//}
//
//
//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        let anagrams = strs.map { ($0, String($0.sorted())) }
//        // 👉 (원래 단어, 정렬한 알파벳)의 튜플 형태로 변형한다.
//        let dict = Dictionary(grouping: anagrams, by: { $0.1 })
//        // 👉 gruop 사용해서 정렬된 알파벳이 동일한 원소끼리 grouping을 한다.
//        return dict.values.map { $0.map { $0.0 } }
//        // 👉 dict의 value만을 취하고 [(원래 단어, 정렬한 알파벳)]에서 이제 원래 단어만 취해서 리턴한다.
//    }
//}
//
//print(Solution().groupAnagrams(["eat","tea","tan","ate","nat","bat"]))

//func checkIfPanlindrome(_ str: [String]) -> Bool {
//    var s = 0
//    var e = str.count - 1
//
//    while s < e {
//        if str[s] != str[e] {
//            return false
//        }
//        s += 1
//        e -= 1
//    }
//
//    return true
//}
//
//
//
//
//class Solution {
//    func longestPalindrome(_ s: String) -> String {
//        return ""
//    }
//}
