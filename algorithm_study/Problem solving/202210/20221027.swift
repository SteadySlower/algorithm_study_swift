//
//  20221027.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/27.
//

//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    // arr2에서 n번째 열을 구하는 함수
//    func col(_ n: Int) -> [Int] {
//        var result = [Int]()
//        for i in 0..<arr2.count {
//            result.append(arr2[i][n])
//        }
//        return result
//    }
//
//    // 두 배열을 곱하는 함수
//    func multiplyArray(_ a: [Int], _ b: [Int]) -> Int {
//        var result = 0
//        for i in 0..<a.count {
//            result += a[i] * b[i]
//        }
//        return result
//    }
//
//    var ans = [[Int]]()
//
//    // arr1의 행과 arr2의 열을 순회하면서 서로 곱함
//    for i in 0..<arr1.count {
//        // arr1의 n행과 각 열을 곱한 값의 배열이 결과의 n행이 됨
//        var arr = [Int]()
//        for j in 0..<arr2[0].count {
//            let result = multiplyArray(arr1[i], col(j))
//            arr.append(result)
//        }
//        ans.append(arr)
//    }
//
//    return ans
//}
//
//print(solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]))

//enum PType {
//    case large, medium, small
//}
//
//extension Character {
//    var pType: PType {
//        switch self {
//        case "[": return .large
//        case "]": return .large
//        case "{": return .medium
//        case "}": return .medium
//        case "(": return .small
//        case ")": return .small
//        default: return .large
//        }
//    }
//}
//
//func isRight(_ s: String) -> Bool {
//    let open: [Character] = ["[", "{", "("]
//
//    var stack = [Character]()
//
//    for c in s {
//        if open.contains(c) {
//            stack.append(c)
//        } else {
//            if stack.isEmpty {
//                return false
//            }
//            let popped = stack.popLast()!
//            if popped.pType != c.pType {
//                return false
//            }
//        }
//    }
//
//    return stack.isEmpty ? true : false
//}
//
//func solution(_ s:String) -> Int {
//    var s = s
//    var ans = 0
//
//    func moveLeft() {
//        let left = s.removeFirst()
//        s = s + String(left)
//    }
//
//    if isRight(s) { ans += 1 }
//
//    for _ in 1..<s.count {
//        moveLeft()
//        if isRight(s) { ans += 1 }
//    }
//
//    return ans
//}
//
//print(solution("["))ㅋ
