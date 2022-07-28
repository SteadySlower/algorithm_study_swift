//
//  20220728.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/28.
//

//// 균형잡힌 세상
//
//// 계속 입력을 받아야 하므로 while true
//while true {
//    let input = readLine()!
//
//    // 입력 종료 조건
//    if input == "." { break }
//
//    // 괄호를 넣기 위한 stack
//    var stack = [Character]()
//
//    // 균형 잡힌 문자열인지 저장하는 Bool 변수
//    var isBalanced = true
//
//    // 각각 문자열을 확인하면서 괄호만 체크
//    for char in input {
//        // 여는 괄호인 경우 stack에 저장
//        if char == "(" || char == "[" {
//            stack.append(char)
//        } else if char == ")" { //👉 닫는 소괄호인 경우에 stack에서 pop한 것이 여는 소괄호인지 확인
//            guard let popped = stack.popLast() else { isBalanced = false; break }
//            if popped != "(" { isBalanced = false; break }
//        } else if char == "]" { //👉 닫는 대괄호인 경우 stack에서 pop한 겅이 여는 대괄호인지 확인
//            guard let popped = stack.popLast() else { isBalanced = false; break }
//            if popped != "[" { isBalanced = false; break }
//        }
//    }
//
//    //⭐️ stack에 괄호가 남아 있으면 false
//    if !stack.isEmpty { isBalanced = false }
//
//    print(isBalanced ? "yes" : "no")
//}

//// 색종이
//
//// 색종이를 붙이는 함수 👉 이차원 배열에 붙여진 부분을 1로 바꾼다.
//func putPaper(_ x: Int, _ y: Int) {
//    for i in x..<(x + 10) {
//        for j in y..<(y + 10) {
//            matrix[i][j] = 1
//        }
//    }
//}
//
//// 색종이가 붙여진 부분을 구하는 함수 👉 1의 갯수를 모두 더하면 된다.
//func printAns() {
//    var sum = 0
//    for i in 0..<100 {
//        for j in 0..<100 {
//            sum += matrix[i][j]
//        }
//    }
//    print(sum)
//}
//
//// 도화지를 이차원 배열로
//var matrix = Array(repeating: Array(repeating: 0, count: 100), count: 100)
//
//// 입력 받기
//let n = Int(readLine()!)!
//
//// 색종이 붙이기
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    putPaper(input[0], input[1])
//}
//
//printAns()

//// 괄호의 값
//
//import Foundation
//
//var stack = [String]()
//let string = readLine()!.map { String($0) }
//
//for s in string {
//    if s == "(" || s == "[" {
//        stack.append(s)
//    } else if s == ")" {
//        var temp = 0
//        guard stack.last == nil else {
//            print(0)
//            exit(0)
//        }
//        while !stack.isEmpty {
//            let popped = stack.popLast()!
//            if popped == "(" {
//                stack.append(temp == 0 ? "2" : "\(2 * temp)")
//                break
//            } else if popped == "[" {
//                print(0)
//                exit(0)
//            } else {
//                temp = temp == 0 ? Int(popped)! : temp + Int(popped)!
//            }
//        }
//    } else if s == "]" {
//        var temp = 0
//        guard stack.last == nil else {
//            print(0)
//            exit(0)
//        }
//        while !stack.isEmpty {
//            let popped = stack.popLast()!
//            if popped == "[" {
//                stack.append(temp == 0 ? "3" : "\(3 * temp)")
//                break
//            } else if popped == "(" {
//                print(0)
//                exit(0)
//            } else {
//                temp = temp == 0 ? Int(popped)! : temp + Int(popped)!
//            }
//        }
//    }
//}
//
//var ans = 0
//print(stack)
//for str in stack {
//    guard let num = Int(str) else {
//        print(0)
//        exit(0)
//    }
//    ans += num
//}
//
//print(ans)
