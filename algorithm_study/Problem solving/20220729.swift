//
//  20220729.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/29.
//

// 괄호의 값

//import Foundation
//
//// 입력 받기
//let string = readLine()!.map { String($0) }
//var stack = [String]()
//
//// 올바르지 않은 문자열인 경우 0 출력하고 프로그램 종료
//func exitWithPrintingZero() {
//    print(0)
//    exit(0)
//}
//
//// 괄호들을 순회하면서
//for s in string {
//    //1. 여는 괄호의 경우 stack에 push
//    if s == "(" || s == "[" {
//        stack.append(s)
//    //2. 닫는 소괄호의 경우
//    } else if s == ")" {
//        var temp = 0 // 계산 결과를 담아놓는 임시 변수
//        guard !stack.isEmpty else { exitWithPrintingZero(); break }
//            //👉 만약에 stack이 비었다면 여는 괄호와 짝을 이룰 수 없으므로 종료
//        while !stack.isEmpty {
//            let popped = stack.popLast()!
//            //2-1. 여는 괄호를 만나면 지금까지의 계산 결과에 2를 곱해서 (단 0인 경우 2) push하고 break (짝을 찾음)
//            if popped == "(" {
//                stack.append(temp == 0 ? "2" : "\(2 * temp)")
//                break
//            //2-2. 짝이 맞지 않는 여는 괄호를 만나면 잘못된 짝이므로 종료
//            } else if popped == "[" {
//                exitWithPrintingZero()
//            //2-3. 숫자를 만나면 덧셈 계산
//            } else {
//                temp += Int(popped)!
//            }
//        }
//    //3. 닫는 대괄호의 경우
//    } else if s == "]" {
//        var temp = 0
//        guard !stack.isEmpty else { exitWithPrintingZero(); break }
//        while !stack.isEmpty {
//            //3-1. 여는 괄호를 만나면 지금까지의 계산 결과에 3를 곱해서 (단 0인 경우 3) push하고 break (짝을 찾음)
//            let popped = stack.popLast()!
//            if popped == "[" {
//                stack.append(temp == 0 ? "3" : "\(3 * temp)")
//                break
//            //3-2. 짝이 맞지 않는 여는 괄호를 만나면 잘못된 짝이므로 종료
//            } else if popped == "(" {
//                exitWithPrintingZero()
//            //3-3. 숫자를 만나면 덧셈 계산
//            } else {
//                temp += Int(popped)!
//            }
//        }
//    }
//}
//
//var ans = 0
//
//// stack에 남은 숫자 더해서 답 구하기
//for str in stack {
//    guard let num = Int(str) else { exitWithPrintingZero(); break }
//    ans += num
//}
//
//print(ans)

//// 펠린드롬 만들기
//
//import Foundation
//
//let input = readLine()!.map { String($0) }.sorted()
//let length = input.count
//var visited = Array(repeating: false, count: length)
//var result = [[String]]()
//
//func isPalin(_ array: [String]) -> Bool {
//    for i in 0..<Int(array.count/2) {
//        if array[i] != array[array.count - i - 1] { return false }
//    }
//    return true
//}
//
//func dfs(now: [String], depth: Int) {
//    if !result.isEmpty { return }
//
//    if depth == length {
//        if isPalin(now) { result.append(now) }
//        return
//    }
//
//    for i in 0..<length {
//        if !visited[i] {
//            visited[i] = true
//            dfs(now: now + [input[i]], depth: depth + 1)
//            visited[i] = false
//        }
//    }
//}
//
//dfs(now: [], depth: 0)
//
//if !result.isEmpty {
//    print(result[0].reduce("", +))
//} else {
//    print("I'm Sorry Hansoo")
//}

//// dic 활용한 풀이
//
//import Foundation
//
//// 입력 받기
//let input = readLine()!.map { String($0) }
//
//// 알파벳 갯수를 저장할 dictionary
//var dict = [String:Int]()
//
//// input을 dict에 갯수만큼 저장
//input.forEach { s in
//    if dict[s] != nil {
//        dict[s]! += 1
//    } else {
//        dict[s] = 1
//    }
//}
//
//// 홀수인 key를 저장하는 배열
//var odd = [String]()
//
//// key를 순회하면서 홀수인 key를 odd에 저장한다.
//for key in dict.keys {
//    if dict[key]! % 2 == 1 {
//        odd.append(key)
//    }
//}
//
//// 홀수인 key가 1개가 넘으면 팰린드롬을 만들 수 없으므로 종류
//if odd.count > 1 { print("I'm Sorry Hansoo"); exit(0) }
//
//// 결과를 저장할 문자열
//var result = ""
//
//// 홀수인 key가 하나 있을 때 그 key를 result은 한 가운데 놓는다.
//if odd.count == 1 {
//    result = odd[0]
//    dict[result]! -= 1 //👉 그리고 -1해서 짝수로 만든다.
//}
//
//// key를 알파벳순으로 정렬해서 순회한다.
//for key in dict.keys.sorted(by: >) {
//    while dict[key]! > 0 { //👉 남은 key가 0개일 때까지
//        result = key + result + key //👉 앞뒤로 하나씩 붙이고
//        dict[key]! -= 2 //👉 key의 갯수를 2개 뺀다
//    }
//}
//
//print(result)
