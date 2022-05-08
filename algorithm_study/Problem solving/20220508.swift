//
//  20220508.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/08.
//

//let A = Int(readLine()!)!
//let B = Int(readLine()!)!
//let C = Int(readLine()!)!
//
//let resultArray = String(A * B * C).map { Int(String($0))! }
//
//var countArray = [Int](repeating: 0, count: 10)
//
//for num in resultArray {
//    countArray[num] += 1
//}
//
//for num in countArray {
//    print(num)
//}

//var result = 1
//
//(0..<3).forEach { _ in
//    result *= Int(readLine()!)!
//}
//
//var countArray = [Int](repeating: 0, count: 10)
//
//while result > 0 {
//    let digit = result % 10
//    countArray[digit] += 1
//    result /= 10
//}
//
//countArray.forEach{ print($0) }

//var nums = [Int]()
//
//(0..<10).forEach { _ in
//    nums.append(Int(readLine()!)!)
//}
//
//var remainders = Set<Int>()
//
//nums.forEach { num in
//    remainders.insert(num % 42)
//}
//
//print(remainders.count)
