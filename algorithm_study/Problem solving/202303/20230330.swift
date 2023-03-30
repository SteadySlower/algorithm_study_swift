//
//  20230330.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/30.
//

//func combination(_ array: [Int], _ length: Int) -> [[Int]] {
//
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
//
//    }
//
//    combi([], 0)
//
//    return result
//
//}
//
//func isSubSet(_ small: [Int], _ big: [Int]) -> Bool {
//    Set(small).isSubset(of: Set(big))
//}
//
//func solution(_ relation:[[String]]) -> Int {
//
//    func makeKeys(_ combi: [Int]) -> Set<String> {
//        var set = Set<String>()
//        for row in relation {
//            var key = ""
//            for c in combi {
//                key += row[c]
//            }
//            set.insert(key)
//        }
//        return set
//    }
//
//    let numOfColumn = relation[0].count
//
//    var combi = [[Int]]()
//
//    for i in 1...numOfColumn {
//        combi += combination(Array(0..<numOfColumn), i)
//    }
//
//    var ans = [[Int]]()
//
//    OuterLoop: for c in combi {
//        // 서브셋인지 확인
//        for a in ans {
//            if isSubSet(a, c) { continue OuterLoop }
//        }
//
//        let keys = makeKeys(c)
//        if keys.count == relation.count {
//            ans.append(c)
//        }
//    }
//
//    return ans.count
//}
//
//print(solution([["100","ryan","music","2"],["200","apeach","math","2"],["300","tube","computer","3"],["400","con","computer","4"],["500","muzi","music","3"],["600","apeach","music","2"]]))
