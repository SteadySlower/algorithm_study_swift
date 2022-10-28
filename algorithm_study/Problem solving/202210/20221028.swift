//
//  20221028.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/28.
//

// "{{2},{2,1},{2,1,3},{2,1,3,4}}"
// "{2},{2,1},{2,1,3},{2,1,3,4}"

// contain을 사용한 방법
//import Foundation
//
//func solution(_ s:String) -> [Int] {
//
//    // 앞 뒤에 괄호 2개씩 지우기
//    var s = s
//    s.removeFirst(2)
//    s.removeLast(2)
//
//    // String을 [[Int]]로 변형하기
//    let arr = s
//        .components(separatedBy: "},{")
//        .map { $0.split(separator: ",").map{ Int($0)! } }
//        .sorted { $0.count < $1.count }
//        //👉 짧은 배열로 정렬
//
//    // 정답을 담는 배열
//    var ans = [Int]()
//
//    // 길이가 1인 배열 부터 순회하면서
//    for nums in arr {
//        for num in nums {
//            // 기존의 튜플 (= ans)에 없는 원소가 다음 튜플의 원소
//            if !ans.contains(num) {
//                ans.append(num)
//                break
//            }
//        }
//    }
//
//    return ans
//}

//// dict를 사용한 방법
//
//import Foundation
//
//func solution(_ s:String) -> [Int] {
//
//    var s = s
//    s.removeFirst(2)
//    s.removeLast(2)
//
//    let arr = s
//        .components(separatedBy: "},{")
//        .map { $0.split(separator: ",").map{ Int($0)! } }
//        .sorted { $0.count < $1.count }
//
//    var ans = [Int]()
//    var dict = [Int : Bool]()
//
//    for nums in arr {
//        for num in nums {
//            if !dict[num, default: false] {
//                ans.append(num)
//                dict[num] = true
//            }
//        }
//    }
//
//    return ans
//}
//
//// arr로 체크하기
//
//import Foundation
//
//func solution(_ s:String) -> [Int] {
//
//    var s = s
//    s.removeFirst(2)
//    s.removeLast(2)
//
//    let arr = s
//        .components(separatedBy: "},{")
//        .map { $0.split(separator: ",").map{ Int($0)! } }
//        .sorted { $0.count < $1.count }
//
//    print(arr)
//
//    var ans = [Int]()
//    var check = Array(repeating: false, count: 100001)
//
//    for nums in arr {
//        for num in nums {
//            if !check[num] {
//                ans.append(num)
//                check[num] = true
//            }
//        }
//    }
//
//    return ans
//}
//
//
//print(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"))


//// 괄호의 유형 (대, 중, 소)
//enum PType {
//    case large, medium, small
//}
//
//// 괄호의 유형을 리턴해주는 extension
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
//// 올바른 괄호 문자열인지 확인하는 함수
//func isRight(_ s: String) -> Bool {
//    // 여는 괄호
//    let open: [Character] = ["[", "{", "("]
//
//    var stack = [Character]()
//
//    // 괄호 문자열 전체를 순회
//    for c in s {
//        // 여는 괄호일 때 push
//        if open.contains(c) {
//            stack.append(c)
//        // 닫는 괄호라면 pop
//        } else {
//            // stack이 비어 있다면 false
//            if stack.isEmpty {
//                return false
//            }
//            let popped = stack.popLast()!
//            // pop한 괄호가 짝이 맞지 않다면 false
//            if popped.pType != c.pType {
//                return false
//            }
//        }
//    }
//
//    // 순회가 끝냈을 때 stack이 비어있을 때만 true
//    return stack.isEmpty ? true : false
//}
//
//func solution(_ s:String) -> Int {
//    var s = s
//    var ans = 0
//
//    // 괄호를 회전하는 함수
//    func moveLeft() {
//        let left = s.removeFirst()
//        s = s + String(left)
//    }
//
//    // 올바른 괄호 문자열인지 확인하고 회전시키면서 모든 회전 케이스에 대해 확인
//    for _ in 0..<s.count {
//        if isRight(s) { ans += 1 }
//        moveLeft()
//    }
//
//    return ans
//}

//print(solution("["))
