//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

let N = Int(readLine()!)!
var array = Array(repeating: 0, count: 10001)

(0..<N).forEach { _ in
    let i = Int(readLine()!)!
    array[i] += 1
}

for i in 0..<10001 {
    if array[i] > 0 {
        for _ in 0..<array[i] {
            print(i)
        }
    }
}
