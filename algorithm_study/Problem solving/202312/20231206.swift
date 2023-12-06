//
//  20231206.swift
//  algorithm_study
//
//  Created by JW Moon on 12/6/23.
//

//class Solution {
//    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
//        var words = paragraph
//            .lowercased() // 소문자로
//            .split(whereSeparator: { !$0.isLetter }) // 알파벳이 아닌 것을 기준으로 split
//            .map { String($0) } // String으로 파싱
//            .filter({ !banned.contains($0) }) // banned에 들어간 것은 필터링
//
//        let counter = Dictionary(grouping: words, by: { $0 }).mapValues { $0.count } // 단어들을 그룹핑해서 카운트
//
//        return counter.sorted { $0.value > $1.value }.map { $0.key }[0] // value 기준 내림차순으로 정렬해서 가장 큰 값의 key를 리턴
//    }
//}
//
//print(Solution().mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]))
//
//print(Dictionary(grouping: [1, 2, 3, 4, 5, 6], by: { $0 % 2 == 0 ? "짝수" : "홀수" }))
