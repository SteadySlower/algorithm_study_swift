//
//  20220930.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/30.
//

//func solution(_ p:String) -> String {
//    //1. 입력이 빈 문자열인 경우, 빈 문자열 반환
//    if p.count < 1 {return ""}
//
//    var count = 0, index = p.startIndex
//
//    // 2. 문자열을 u와 v로 분리 (u는 균형잡힌 문자열)
//        //👉 count가 0이 되면 u는 균형잡힌 문자열
//    repeat{
//        count += String(p[index]) == "(" ? 1 : -1
//        index = p.index(after: index)
//    } while count != 0
//
//    var u = String(p[..<index]), v = String(p[index...])
//
//    // 3. u가 올바른 문자열이라면 v를 1단계부터 다시 수행
//    if String(u.first!) == "("{
//        // 3-1. 수행한 문자열을 u에 이어 붙힌 후 반환
//        return u + solution(v)
//    // 4. u가 올바른 문자열이 아니라면 아래와 같은 과정 수행
//    }else{
//        // 4-4. u의 첫 번째와 마지막 문자를 제거하고
//        u.removeLast()
//        u.removeFirst()
//        // "(" + "v를 재귀한 결과" + ")" + "u를 괄호방향을 뒤집은 결과"
//        return "(\(solution(v)))\(u.map{String($0) == "(" ? ")" : "("}.joined())"
//    }
//}


//func solution(_ p:String) -> String {
//
//    // 올바른 괄호 문자열인지 확인하는 함수
//    func isRight(_ p: String) -> Bool {
//        var stack = [Character]()
//
//        for c in p {
//            if c == "(" {
//                stack.append(c)
//            } else {
//                guard let _ = stack.popLast() else { return false }
//            }
//        }
//
//        return stack.isEmpty ? true : false
//    }
//
//    // 균형잡힌 괄호 문자열인지 확인하는 함수
//    func isBalanced(_ p: String) -> Bool {
//
//        // 여는 괄호와 닫는 괄호의 수를 비교
//        let openCnt = p.filter { $0 == "(" }.count
//        let closeCnt = p.filter { $0 == ")" }.count
//
//        return openCnt == closeCnt
//
//    }
//
//    // 균형잡힌 괄호 문자열 u와 나머지 v로 나누는 함수
//    func split(_ p: String) -> (String, String) {
//        for i in stride(from: 2, to: p.count, by: 2) {
//            let toIndex = p.index(p.startIndex, offsetBy: i)
//            let u = p[p.startIndex..<toIndex]
//            if isBalanced(String(u)) {
//                let v = p[toIndex..<p.endIndex]
//                return (String(u), String(v))
//            }
//        }
//        return (p,"")
//    }
//
//    // u를 조작하는 함수 -> "(" + "u의 첫문자과 마지막 문자를 지우고 괄호를 뒤집은 문자열" + ")"
//    func handleU(_ u: String) -> String {
//        var uArray = u.map { String($0) }
//
//        uArray.removeFirst()
//        _ = uArray.removeLast()
//
//        for i in 0..<uArray.count {
//            if uArray[i] == "(" {
//                uArray[i] = ")"
//            } else {
//                uArray[i] = "("
//            }
//        }
//
//        return uArray.joined()
//    }
//
//    // 문제 푸는 함수 (재귀함수)
//    func f(_ p: String) -> String {
//        // 1. 빈문자열은 리턴
//        if p.isEmpty { return "" }
//
//        //2. 문자열을 u와 v로 분리
//        let splited = split(p)
//        let u = splited.0
//        let v = splited.1
//
//        // 3. u가 올바른 문자열이라면 v를 1단계부터 다시 수행
//        if isRight(u) {
//            // 3-1. 수행한 문자열을 u에 이어 붙힌 후 반환
//            return u + f(v)
//        }
//
//        // 4. u가 올바른 문자열이 아니라면 아래와 같은 과정 수행
//
//        // 4-1. 빈 문자열에 "("를 붙인다.
//        var result = ""
//        result += "("
//
//        // 4-2. v를 1단계부터 재귀적으로 수행한 결과를 붙임
//        result += f(v)
//
//        // 4-3. ")"를 다시 붙임
//        result += ")"
//
//        // 4-4. u의 첫 번째와 마지막 문자를 제거하고, 나머지 문자열의 괄호 방향을 뒤집어서 뒤에 붙임
//        result += handleU(u)
//
//        // 4-5. 생성된 문자열을 반환
//        return result
//    }
//
//    return f(p)
//}
//
//print(solution("()))((()"))
