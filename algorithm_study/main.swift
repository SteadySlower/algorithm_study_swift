//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

import Foundation


// 백준 10950 A + B - 3

let T = Int(readLine()!)!

for _ in 0..<T {
    let inputs = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let a = inputs[0]
    let b = inputs[1]
    print(a + b)
}
