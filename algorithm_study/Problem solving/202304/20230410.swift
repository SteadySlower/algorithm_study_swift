//
//  20230410.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/10.
//

//struct CD {
//    let isA: Bool
//    let value: Int
//}
//
//// 최대 공약수를 구하는 함수
//func gcd(_ a: Int, _ b: Int) -> Int {
//    if b == 0 {
//        return a
//    } else {
//        return gcd(b, a % b)
//    }
//}
//
//func isAns(_ cd: Int, _ array: [Int]) -> Bool {
//    for num in array {
//        if num % cd == 0 { return false }
//    }
//    return true
//}
//
//func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
//
//    let gcdA = arrayA.reduce(arrayA[0]) { gcd($0, $1) }
//    let gcdB = arrayB.reduce(arrayB[0]) { gcd($0, $1) }
//    let cdA = (1...gcdA).filter { gcdA % $0 == 0 }
//    let cdB = (1...gcdB).filter { gcdB % $0 == 0 }
//
//    var cds = [CD]()
//
//    for cd in cdA {
//        cds.append(CD(isA: true, value: cd))
//    }
//
//    for cd in cdB {
//        cds.append(CD(isA: false, value: cd))
//    }
//
//    cds.sort { $0.value > $1.value }
//
//    for cd in cds {
//        if cd.isA {
//            if isAns(cd.value, arrayB) { return cd.value }
//        } else {
//            if isAns(cd.value, arrayA) { return cd.value }
//        }
//    }
//
//    return 0
//}

//// 최대 공약수를 구하는 함수
//func gcd(_ a: Int, _ b: Int) -> Int {
//    if b == 0 {
//        return a
//    } else {
//        return gcd(b, a % b)
//    }
//}
//
//// 최대공약수가 다른 배열을 나눌 수 있으면 최대공약수를, 없으면 0을 리턴하는 함수
//func getAns(_ gcd: Int, _ array: [Int]) -> Int {
//    for num in array {
//        if num % gcd == 0 { return 0 }
//    }
//    return gcd
//}
//
//func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
//
//    let gcdA = arrayA.reduce(arrayA[0]) { gcd($0, $1) }
//    let gcdB = arrayB.reduce(arrayB[0]) { gcd($0, $1) }
//
//    return max(getAns(gcdA, arrayB), getAns(gcdB, arrayA))
//}
//
//print(solution([14, 35, 119], [18, 30, 102]))
