//
//  20220713.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/13.
//

//// 비슷한 단어
//
//// Array의 "-" 연산 구현
//    // 차집합 연산과 비슷하지만 중복을 허용한다는 점에서 다르다.
//extension Array where Element == Character {
//    static func -(lhs: Array, rhs: Array) -> Array {
//        var result = lhs
//        // lhs에 존재하는 원소가 rhs에 존재할 때마다 빼준다.
//        for char in rhs {
//            if result.contains(char) {
//                result.remove(at: result.firstIndex(of: char)!)
//            }
//        }
//        return result
//    }
//}
//
//// 두 문자열이 비슷한지 판단하는 함수
//    // (긴 문자열) - (짧은 문자열) 했을 때의 배열의 길이가 1 이하라면 비슷한 문자열
//    // case 1: 완전히 동일한 알파벳을 사용할 경우 = 길이 0
//    // case 2: 길이는 동일하고 알파벳이 하나만 다른 경우 = 길이 1
//    // case 3: 긴 문자열의 길이가 1 길고 나머지 알파벳은 동일한 경우 = 길이 1
//func isSimilar(string1: String, string2: String) -> Bool {
//    let array1 = string1.map { $0 }
//    let array2 = string2.map { $0 }
//
//    var substract: Array<Character>
//
//    if array1.count > array2.count {
//        substract = array1 - array2
//    } else {
//        substract = array2 - array1
//    }
//
//    return substract.count <= 1 ? true : false
//}
//
//// 입력 받기
//let T = Int(readLine()!)!
//let word1 = readLine()!
//var cnt = 0
//
//// 비슷한 문자열 세기
//for _ in 0..<(T - 1) {
//    if isSimilar(string1: word1, string2: readLine()!) {
//        cnt += 1
//    }
//}
//
//print(cnt)

//// 비슷한 단어
//
//// check 배열의 index를 구하는 함수
//extension Character {
//    var checkIndex: Int {
//        Int(self.asciiValue! - Character("A").asciiValue!)
//    }
//}
//
//// 유사한 단어인지 구하는 함수
//    // case 1: 완전히 동일한 알파벳 -> plus = 0, minus = 0
//    // case 2: 길이는 동일한데 하나만 다른 경우 -> plus = 1, minus = 1
//    // case 3: 길이가 한쪽이 1 길지만 나머지 알파벳은 다른 경우 -> plus = 1, minus = 0 혹은 plus = 0, minus = 1
//func isSimilar(string1: String, string2: String) -> Bool {
//    var check = Array(repeating: 0, count: 26)
//    
//    for char in string1 {
//        check[char.checkIndex] += 1
//    }
//    
//    for char in string2 {
//        check[char.checkIndex] -= 1
//    }
//    
//    var plus = 0
//    var minus = 0
//    
//    for c in check {
//        if c > 0 {
//            plus += c
//        } else if c < 0 {
//            minus -= c
//        }
//    }
//    
//    return plus <= 1 && minus <= 1 ? true : false
//}
//
//// 입력 받기
//let T = Int(readLine()!)!
//let word1 = readLine()!
//var cnt = 0
//
//// 비슷한 문자열 세기
//for _ in 0..<(T - 1) {
//    if isSimilar(string1: word1, string2: readLine()!) {
//        cnt += 1
//    }
//}
//
//print(cnt)
