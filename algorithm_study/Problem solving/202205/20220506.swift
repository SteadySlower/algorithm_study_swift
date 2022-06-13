//
//  20220506.swift
//  algorithm_study
//
//  Created by Jong Won Moon on 2022/05/06.
//


//// 백준 10950 A + B - 3
//
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let inputs = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    let a = inputs[0]
//    let b = inputs[1]
//    print(a + b)
//}

//// 백준 2741
//
//let N = Int(readLine()!)!
//
//for i in 1...N {
//    print(i)
//}

//// https://www.acmicpc.net/problem/2742
//
//let N = Int(readLine()!)!
//
//for i in (1...N).reversed() {
//    print(i)
//}
//

//// https://www.acmicpc.net/problem/11021
//
//let T = Int(readLine()!)!
//
//for i in 1...T {
//    let inputArray = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    let a = inputArray[0]
//    let b = inputArray[1]
//    print("Case #\(i): \(a + b)")
//}

//// https://www.acmicpc.net/problem/2438
//
//let N = Int(readLine()!)!
//
//for i in 1...N {
//    print(String(repeating: "*", count: i))
//}

//var toPrint = ""
//
//for _ in 1...N {
//    toPrint += "*"
//    print(toPrint)
//}

//for i in 1...N {
//    for _ in 0..<i {
//        print("*", terminator: "")
//    }
//    print()
//}

//// https://www.acmicpc.net/problem/2439
//
//let N = Int(readLine()!)!

//for i in 1...N {
//    var toPrint = ""
//    for _ in stride(from: N - i, to: 0, by: -1) {
//        toPrint += " "
//    }
//    for _ in 0..<i {
//        toPrint += "*"
//    }
//    print(toPrint)
//}

//let N = Int(readLine()!)!
//
//for i in 1...N {
//    print(String(repeating: " ", count: N - i), terminator: "")
//    print(String(repeating: "*", count: i))
//}

//// https://www.acmicpc.net/problem/10871
//
//let inputArray = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//let N = inputArray[0]
//let X = inputArray[1]
//
//let nums = readLine()!.components(separatedBy: " ").map { Int($0)! }.filter { num in
//    num < X
//}
//
//for num in nums {
//    print(num, terminator: " ")
//}

//// https://www.acmicpc.net/problem/10952
//
//while let inputs = readLine() {
//    let inputArray = inputs.components(separatedBy: " ").map{ Int($0)! }
//    let a = inputArray[0]
//    let b = inputArray[1]
//    print(a + b)
//}
