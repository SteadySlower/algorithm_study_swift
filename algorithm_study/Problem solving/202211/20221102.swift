//
//  20221102.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/02.
//

//import Foundation
//
//extension Int {
//    var isPrime: Bool {
//        // 2보다 작은 수 (1혹은 자연수가 아닌 수)는 소수가 아니다
//        if self < 2 { return false }
//        // 2는 소수이다.
//        if self == 2 { return true }
//        // 짝수는 소수가 아니다.
//        if self % 2 == 0 { return false }
//        
//        // self의 최대 약수는 self의 제곱근 (그 보다 큰 수는 나누지지 않으므로 확인할 필요가 없음)
//            // 3에서 시작해서 홀수만 나누어 떨어지는 것이 없는지 확인하면 됨 (짝수는 이미 2로 나누어봐서 확인함)
//            // 시간복잡도 O(sqrt(N)/2)
//        return !stride(from: 3, through: Int(sqrt(Double(self))), by: 2).contains { self % $0 == 0 }
//    }
//}
//
//
//func toRadix(_ n: Int, _ k: Int) -> String {
//    var s = ""
//    var n = n
//    
//    while n > 0 {
//        s += String(n % k)
//        n = n / k
//    }
//    return String(s.reversed())
//}
//
//func solution(_ n:Int, _ k:Int) -> Int {
//    
//    let arr = String(n, radix: k).split(separator: "0").map { Int($0)! }
//    var cnt = 0
//
//    for num in arr {
//        if num.isPrime { cnt += 1 }
//    }
//    
//    return cnt
//}
