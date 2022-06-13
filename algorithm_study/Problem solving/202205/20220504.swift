//
//  20220504.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/04.
//

//// 백준 2588 곱셈
//
//let nString = readLine()!
//let mString = readLine()!
//
//let n = Int(nString)!
//let m = Int(mString)!
//
//let mArray = mString.map { Int(String($0))! }
//
//print(n * mArray[2])
//print(n * mArray[1])
//print(n * mArray[0])
//print(n * m)

//// 백준 1330 두 수 비교하기
//
//let inputArray = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let A = inputArray[0]
//let B = inputArray[1]
//
//if A > B {
//    print(">")
//} else if A < B {
//    print("<")
//} else {
//    print("==")
//}

//// 백준 2753 윤년
//
//let year = Int(readLine()!)!
//
//if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
//    print(1)
//} else {
//    print(0)
//}

//// 백준 2739 구구단
//
//let n = Int(readLine()!)!
//
//for i in 1...9 {
//    print("\(n) * \(i) = \(n * i)")
//}
