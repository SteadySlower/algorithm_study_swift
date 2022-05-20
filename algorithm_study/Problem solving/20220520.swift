//
//  20220520.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/20.
//

//import Foundation
//
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let input = readLine()!.split(separator: " ").map { Double(String($0))! }
//    let (x1, y1, r1, x2, y2, r2) = (input[0], input[1], input[2], input[3], input[4], input[5])
//    
//    // 원의 중심 사이의 거리
//    let d = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))
//    
//    //👉 Case 1: 두 원이 일치하는 경우 = 접점 무한대
//    if x1 == x2 && y1 == y2 && r1 == r2 {
//        print(-1)
//    //👉 Case 2: 두 원이 접하는 경우 (외접 or 내접) = 접점 1개
//    } else if d == r1 + r2 || d == abs(r1 - r2) {
//        print(1)
//    //👉 Case 3: 접점 2개
//    } else if d < r1 + r2 && d > abs(r1 - r2) {
//        print(2)
//    // 👉 Case 4: 접하지 않는 경우
//    } else {
//        print(0)
//    }
//}

//func factorial(_ n: Int) -> Int {
//    if n <= 1 {
//        return 1
//    }
//    return n * factorial(n - 1)
//}
//
//let n = Int(readLine()!)!
//
//print(factorial(n))

//import Foundation
//
//let n = Int(readLine()!)!
//
//if n == 0 {
//    print(1)
//    exit(0)
//}
//
//var result = 1
//
//for i in 1...n {
//    result *= i
//}
//
//print(result)
