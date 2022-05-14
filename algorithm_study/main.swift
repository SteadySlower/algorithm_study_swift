//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

let T = Int(readLine()!)!

(0..<T).forEach { _ in
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let H = inputs[0]
    let W = inputs[1]
    let n = inputs[2]
    let h = (n - 1) / H + 1
    let w = (n - 1) % 10
    let wStirng = 
    print("\(h)\(wString)")
}
