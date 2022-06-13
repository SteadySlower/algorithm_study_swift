//
//  20220510.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/10.
//

//func isHan(n: Int) -> Bool {
//    let array = String(n).map { Int(String($0))! }
//    if array.count == 1 { return true }
//    let diff = array[1] - array[0]
//    for i in 1..<(array.count - 1) {
//        if diff != array[i + 1] - array[i] {
//            return false
//        }
//    }
//    return true
//}
//
//let N = Int(readLine()!)!
//var result = 0
//
//(1...N).forEach { n in
//    if isHan(n: n) {
//        result += 1
//    }
//}
//
//print(result)

//print(Character(readLine()!).asciiValue!)

//let a = Character("a").asciiValue!
//
//let inputArray = readLine()!.map { $0.asciiValue! - a }
//
//(0..<26).forEach { i in
//    let askii = UInt8(i)
//    if inputArray.contains(askii) {
//        print(inputArray.firstIndex(of: askii)!, terminator: " ")
//    } else {
//        print(-1, terminator: " ")
//    }
//}

//let T = Int(readLine()!)!
//
//(0..<T).forEach { _ in
//    let input = readLine()!.split(separator: " ")
//    let R = Int(input[0])!
//    let S = input[1]
//    S.forEach { s in
//        print(String(repeating: s, count: R), terminator: "")
//    }
//    print() //👉 Test case 별로 구분이 되도록 띄어쓰기 해주어야 한다!
//}

//var check: [Character: Int] = [:]
//let word = readLine()!.uppercased()
//
//for char in word {
//    if let value = check[char] {
//        check[char] = value + 1
//
//    } else {
//        check[char] = 1
//    }
//}
//
//let max = check.values.max()!
//let most = check.filter { $0.value == max }
//
//if most.count != 1 {
//    print("?")
//} else {
//    print(most.first!.key)
//}
//
//var check: [Character: Int] = [:]
//let word = readLine()!.uppercased()
//for char in word {
//    if let value = check[char] {
//        check[char] = value + 1
//
//    } else {
//        check[char] = 1
//    }
//}
//let max = check.values.max()!
//let most = check.filter { $0.value == max }
//
//if most.count != 1 {
//    print("?")
//} else {
//    print(most.first!.key)
//}
