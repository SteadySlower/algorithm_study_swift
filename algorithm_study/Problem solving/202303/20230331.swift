//
//  20230331.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/31.
//

//// 조합을 구하는 함수
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
//// 최소성을 확인하는 함수
//    // 기존의 이미 구한 키의 속성을 모두 포함하고 있으면 안된다.
//    // = 기존의 구한 키는 이미 꼭 필요한 속성만으로 구성되어 있으므로
//func isMinimal(_ now: [Int], _ keys: [[Int]]) -> Bool {
//    for key in keys {
//        if Set(key).isSubset(of: Set(now)) { return false }
//    }
//    return true
//}
//
//// 유일성을 확인하는 함수
//func isUnique(_ combi: [Int], _ relation: [[String]]) -> Bool {
//    // combi에 있는 column에 맞추어서 각각의 row의 속성을 합쳐서 string으로 만든다.
//    // 그리고 해당 string을 set에 넣어서 중복은 제거한다.
//    var set = Set<String>()
//    for row in relation {
//        var key = ""
//        for c in combi {
//            key += row[c]
//        }
//        set.insert(key)
//    }
//
//    // set의 길이와 row의 길이가 동일하다면 유일성 만족
//    return set.count == relation.count
//}
//
//func solution(_ relation:[[String]]) -> Int {
//
//    // 후보키가 될 수 있는 column의 모든 조합 구하기
//        // 최소성 확인을 위해서 길이 순서대로 정렬되도록
//    let numOfColumn = relation[0].count
//    var combi = [[Int]]()
//    for i in 1...numOfColumn {
//        combi += combination(Array(0..<numOfColumn), i)
//    }
//
//    var ans = [[Int]]()
//
//    // 모든 조합이 각각 후보키가 될 수 있는지 확인
//    for c in combi {
//        // 최소성 확인
//        if !isMinimal(c, ans) { continue }
//
//        // 유일성 확인
//        if isUnique(c, relation) { ans.append(c) }
//    }
//
//    return ans.count
//}

//func combination(_ array: [Int], _ length: Int) -> [Set<Int>] {
//
//    var result = [Set<Int>]()
//
//    func combi(_ now: Set<Int>, _ index: Int) {
//        if now.count == length {
//            result.append(now)
//            return
//        }
//
//        for i in index..<array.count {
//            combi(now.union([array[i]]), i + 1)
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
//func solution(_ relation:[[String]]) -> Int {
//
//    func makeKeys(_ combi: Set<Int>) -> Set<String> {
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
//    var combi = [Set<Int>]()
//
//    for i in 1...numOfColumn {
//        combi += combination(Array(0..<numOfColumn), i)
//    }
//
//    var ans = [Set<Int>]()
//
//    OuterLoop: for c in combi {
//        // 서브셋인지 확인
//        for a in ans {
//            if Set(a).isSubset(of: Set(c)) { continue OuterLoop }
//        }
//
//        let keys = makeKeys(c)
//
//        if keys.count == relation.count {
//            ans.append(c)
//        }
//    }
//
//    return ans.count
//}
//
//print(solution([["100","ryan","music","2"],["200","apeach","math","2"],["300","tube","computer","3"],["400","con","computer","4"],["500","muzi","music","3"],["600","apeach","music","2"]]))
