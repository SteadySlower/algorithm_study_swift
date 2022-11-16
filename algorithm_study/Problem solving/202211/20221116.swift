//
//  20221116.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/16.
//

//func solution(_ elements:[Int]) -> Int {
//    let cnt = elements.count //👉 원형 수열의 길이
//    let round = elements + elements //👉 원형 자료구조일 때 쉽게 index out of range 피하는 방법
//    var result = Set<Int>() //👉 중복 제거를 위한 Set
//
//        // 1 ~ cnt의 길이의 연속 수열을 구한다.
//    for l in 1...cnt {
//                // 원형 수열의 i번째 숫자에서 연속 수열 시작
//        for i in 0..<cnt {
//                        // i에서 시작해서 길이가 l인 수열의 합 구하기
//            result.insert(round[i..<(i + l)].reduce(0, +))
//        }
//    }
//
//    return result.count
//}
//
//func solution(_ elements:[Int]) -> Int {
//    let cnt = elements.count //👉 원형 수열의 길이
//    let round = elements + elements //👉 원형 자료구조일 때 쉽게 index out of range 피하는 방법
//    var result = Set<Int>() //👉 중복 제거를 위한 Set
//
//        // 1 ~ cnt의 길이의 연속 수열을 구한다.
//    for l in 1...cnt {
//                // 원형 수열의 i번째 숫자에서 연속 수열 시작
//        for i in 0..<cnt {
//                        // i부터 시작해서 l개의 숫자 더해서 연속수열의 합 구하기
//            var temp = 0
//            for j in 0..<l {
//                let index = i + j
//                temp += round[index]
//            }
//            result.insert(temp)
//        }
//    }
//
//    return result.count
//}
//
//let array = [7,9,1,1,4]
//var arraySlice = array[1..<3]
//arraySlice.append(100)
//
//print(type(of: arraySlice)) // ArraySlice<Int>
//print(arraySlice) // [9, 1, 100]
//
//print(arraySlice[0]) //🚫 index out of range
//print(arraySlice.startIndex) // 1
//print(arraySlice[1]) // 9
