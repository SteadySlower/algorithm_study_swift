//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

import Foundation

// 백준 2588 곱셈

let nString = readLine()!
let mString = readLine()!

let n = Int(nString)!
let m = Int(mString)!

let mArray = Array(arrayLiteral: mString).map { Int($0)! }

print(mArray)
