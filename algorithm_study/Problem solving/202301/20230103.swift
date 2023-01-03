//
//  20230103.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/03.
//

//func permutation(of: [String]) -> [[String]] {
//    var result = [[String]]()
//    var visited = Array(repeating: false, count: of.count)
//
//    func dfs(_ now: [String]) {
//        if now.count == of.count {
//            result.append(now)
//            return
//        }
//
//        for i in 0..<of.count {
//            if !visited[i] {
//                visited[i] = true
//                dfs(now + [of[i]])
//                visited[i] = false
//            }
//        }
//    }
//
//    dfs([])
//
//    return result
//}
//
//// 연산 함수
//func operate(_ lhs: Int, _ rhs: Int, _ oper: String) -> Int {
//    switch oper {
//    case "+": return lhs + rhs
//    case "-": return lhs - rhs
//    case "*": return lhs * rhs
//    default: return 0
//    }
//}
//
//func solution(_ expression:String) -> Int64 {
//
//    // 문자열을 피연산자와 연산자로 분리하기
//    var operands = [Int]()
//    var operators = [String]()
//    let expression = expression.map { $0 }
//    var i = 0
//    var temp = ""
//
//    while i < expression.count {
//        // 숫자면 temp에 추가
//        if expression[i].isNumber {
//            temp += String(expression[i])
//        // 숫자가 아니면 temp를 Int로 변환해서 피연산자에 추가하고 연산자도 배열에 추가
//        } else {
//            operands.append(Int(temp)!)
//            temp = ""
//            operators.append(String(expression[i]))
//        }
//        i += 1
//    }
//
//    // 반복문을 돌고 마지막 temp 피연산자 배열에 추가
//    operands.append(Int(temp)!)
//
//    // 연산자의 우선순위 순서대로 연산하는 함수
//    func calculate(_ priority: [String]) -> Int {
//        var operands = operands
//        var operators = operators
//        // 연산자 우선순위 반복문
//        for p in priority {
//            // 해당 연산자가 operators 배열에 있을 때까지 반복
//            while let i = operators.firstIndex(of: p) {
//                let result = operate(operands[i], operands[i + 1], operators[i])
//                // 연산한 결과를 i 자리에 넣고
//                operands[i] = result
//                // i + 1과 연산자는 제거
//                operands.remove(at: i + 1)
//                operators.remove(at: i)
//            }
//        }
//
//        // 마지막 남은 1개의 숫자의 절대값을 리턴
//        return abs(operands[0])
//    }
//
//    // 연산 결과들을 저장하는 배열
//    var results = [Int]()
//
//    // 연산자의 우선순위 case 6가지 구하기 (by 순열)
//    let types = ["+", "-", "*"]
//    let priorities = permutation(of: types)
//
//    // 우선순위 케이스 별로 연산해서
//    for priority in priorities {
//        results.append(calculate(priority))
//    }
//
//    // 최댓값을 리턴한다.
//    return Int64(results.max()!)
//}

//print(solution("100-200*300-500+20"))
