//
//  20220928.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/28.
//

/*
 n     fn
 01    10
 
 010   011
 011   101
 
 0100  0101
 0101  0110
 0110  0111
 0111  1011
 
 01000  01001
 01001  01010
 ...
 */

//func solution(_ numbers:[Int64]) -> [Int64] {
//
//    // 비트 차이를 비교하는 함수
//    func bitDiff(_ nBit: String, _ fnBit: String) -> Int {
//        var nBit = nBit
//        if nBit.count != fnBit.count {
//            nBit = "0" + nBit
//        }
//
//        var cnt = 0
//
//        let nArray = nBit.map { String($0) }
//        let mArray = fnBit.map { String($0) }
//
//        for i in 0..<nArray.count {
//            if nArray[i] != mArray[i] { cnt += 1 }
//        }
//
//        return cnt
//    }
//
//    // 1씩 더하면서 비트 차이가 2 이하인 fn 값을 찾는 함수
//    func f(_ n: Int64) -> Int64 {
//        let nBit = String(n, radix: 2)
//        var fn = n + 1
//
//        while true {
//            let fnBit = String(fn, radix: 2)
//            if bitDiff(nBit, fnBit) <= 2 {
//                return fn
//            } else {
//                fn += 1
//            }
//        }
//    }
//
//    return numbers.map { f($0) }
//}

//func solution(_ numbers:[Int64]) -> [Int64] {
//
//    func f(_ n: Int64) -> Int64 {
//        // 짝수이면 n + 1 리턴
//        if n % 2 == 0 { return n + 1 }
//
//        // 홀수인 경우
//
//        // 맨 앞에 "0"을 붙여주어서 모든 자릿수가 "1"인 경우에 대비한다.
//        var nArray = ["0"] + String(n, radix: 2).map { String($0) }
//
//        // 역으로 순회하면서 마지막 "0"을 그 다음 "1"과 자리를 바꾸어 준다.
//        for i in (0..<nArray.count).reversed() {
//            if nArray[i] == "0" {
//                nArray.swapAt(i, i + 1)
//                break
//            }
//        }
//
//        return Int64(nArray.joined(), radix: 2)!
//    }
//
//    return numbers.map { f($0) }
//}
