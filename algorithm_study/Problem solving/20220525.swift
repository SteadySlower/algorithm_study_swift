//
//  20220525.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/25.
//

// 유레카 이론
//
///*
// ❓ 수열로 접근을 해볼까?
// 3개의 삼각수로 표현할 수 있는 수
// T1 T1 T1 = 3
// T1 T1 T2 = 5 -> + 2
// T1 T2 T2 = 7 -> + 2
// T2 T2 T2 = 9 -> + 2
// T2 T2 T3 = 12 -> + 3
// 🚫 이렇게 하는 경우에는 T1 + T1 + T1000 -> 같은 경우의 수가 빠짐
//
// ❗️Tn들을 array에 넣어두고 조합으로 3개 뽑아서 더해야 함
// */
//
//let T = Int(readLine()!)!
//
////✅ 1000 이하의 모든 삼각수를 array에 넣는다.
//var triNumArray = [Int]()
//var n = 1
//var triNum: Int
//
//repeat {
//    triNum = n * (n + 1) / 2
//    n += 1
//    triNumArray.append(triNum)
//} while triNum <= 1000
//
////✅ 삼각수 3개를 조합 (combination)하여 만들 수 있는 1000이하의 수를 array에 넣는다.
//var sumArray = [Int]()
//var sum: Int
//
//for i in 0..<triNumArray.count {
//    for j in i..<triNumArray.count {
//        for k in j..<triNumArray.count {
//            sum = triNumArray[i] + triNumArray[j] + triNumArray[k]
//            if sum <= 1000 {
//                sumArray.append(sum)
//            }
//        }
//    }
//}
//
////✅ 주어진 입력값 k가 sumArray에 있는지 확인한다.
//for _ in 0..<T {
//    let k = Int(readLine()!)!
//    print(sumArray.contains(k) ? 1 : 0)
//}
