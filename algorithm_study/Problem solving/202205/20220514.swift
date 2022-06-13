//
//  20220514.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/14.
//

/*
 1 : 1층 1호
 2 : 2층 1호
 
 ...
 
 H: H층 1호
 
 H + 1: 1층 2호
 
 층수가 나머지, 몫이 호수
 
 
 */

//let T = Int(readLine()!)!
//
//(0..<T).forEach { _ in
//    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let H = inputs[0]
//    let _ = inputs[1]
//    let n = inputs[2]
//    let h = (n - 1) % H + 1
//    let w = (n - 1) / H + 1
//    let wString = w < 10 ? "0\(w)" : "\(w)"
//    print("\(h)\(wString)")
//}
