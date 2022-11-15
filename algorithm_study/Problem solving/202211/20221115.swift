//
//  20221115.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/15.
//

//
//func combination(_ array: [Int], _ length: Int) -> [[Int]] {
//    var result = [[Int]]()
//
//    func combi(_ index: Int, _ now: [Int]) {
//        if now.count == length {
//            result.append(now)
//            return
//        }
//
//        for i in index..<array.count {
//            combi(i + 1, now + [array[i]])
//        }
//    }
//
//    combi(0, [])
//
//    return result
//}
//
//
//func solution(_ elements:[Int]) -> Int {
//    var result = Set<Int>()
//
//    for i in 1...elements.count {
//        var combis = combination(elements, i)
//        for combi in combis {
//            result.insert(combi.reduce(0, +))
//        }
//    }
//
//    print(result.sorted())
//    return result.count
//}
//
//print(solution([7, 9, 1, 1, 4]))

// ⭐️ 이거는 통과됨
//func solution(_ elements:[Int]) -> Int {
//    func nextIndex(_ i: Int) -> Int {
//        if i + 1 < elements.count {
//            return i + 1
//        } else {
//            return i + 1 - elements.count
//        }
//    }
//
//    var result = Set<Int>()
//
//    for l in 1...elements.count {
//        for i in 0..<elements.count {
//            var i = i
//            var temp = elements[i]
//            for _ in 0..<(l - 1) {
//                i = nextIndex(i)
//                temp += elements[i]
//            }
//            result.insert(temp)
//        }
//    }
//
//    return result.count
//}
//
//print(solution([7, 9, 1, 1, 4]))

//extension Array where Element == Int {
//    subscript (round range: Range<Int>) -> [Int] {
//
//    }
//}
//

// 🚫 이거는 시간초과
//func solution(_ elements:[Int]) -> Int {
//    func roundArray(_ range: Range<Int>) -> [Int] {
//        if range.last! < elements.count {
//            return Array(elements[range])
//        } else {
//            return Array(elements[range.first!..<elements.count] + elements[0..<(range.last! - elements.count + 1)])
//        }
//    }
//
//
//    var result = Set<Int>()
//
//    for l in 1...elements.count {
//        for i in 0..<elements.count {
//            result.insert(roundArray(i..<(i + l)).reduce(0, +))
//        }
//    }
//
//    return result.count
//}
//
//print(solution([7, 9, 1, 1, 4]))


// ⭐️ 이거 시간초과 나는데 왜? (파이썬은 이렇게 풀던데...)
//func solution(_ elements:[Int]) -> Int {
//    let cnt = elements.count
//    let round = elements + elements //👉 회전일 때 쉽게 index out of range 피하는 방법
//    var result = Set<Int>()
//
//    for l in 1...cnt {
//        for i in 0..<cnt {
//            result.insert(round[i..<(i + l)].reduce(0, +))
//        }
//    }
//
//    return result.count
//}
//
//print(solution([7, 9, 1, 1, 4]))

//⭐️ subscript의 cost에 대해서 알아보고 정리
//func solution(_ elements:[Int]) -> Int {
//    var result = Set<Int>()
//    let cnt = elements.count
//    let elements = elements + elements
//
//    for l in 1...cnt {
//        for i in 0..<cnt {
//            var temp = 0
//            for j in 0..<l {
//                let index = i + j
//                temp += elements[index]
//            }
//            result.insert(temp)
//        }
//    }
//
//    return result.count
//}
//
//print(solution([7,9,1,1,4]))
