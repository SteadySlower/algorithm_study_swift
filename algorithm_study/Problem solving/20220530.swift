//
//  20220530.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/30.
//

//// 일곱 난장이
//
////✅ 조합 구현
//func combination(array: [Int], length: Int) -> [[Int]] {
//    var result = [[Int]]()
//    
//    func combi(nowIndex index: Int, now: [Int]) {
//        if now.count == length {
//            result.append(now)
//            return
//        }
//        
//        for i in index..<array.count {
//            combi(nowIndex: i + 1, now: now + [array[i]])
//        }
//    }
//    
//    combi(nowIndex: 0, now: [])
//    return result
//}
//
////✅ 입력 받기
//var dwarfs = [Int]()
//
//(0..<9).forEach { _ in
//    let height = Int(readLine()!)!
//    dwarfs.append(height)
//}
//
//let combinations = combination(array: dwarfs, length: 7)
//
////✅ 조합을 순회하면서 합이 100인 조합 찾기
//for combination in combinations {
//    if combination.reduce(0, +) == 100 {
//        combination.sorted().forEach { height in
//            print(height)
//        }
//        break //👉 조합이 여러개인 경우 1개의 조합만 출력하고 멈추어야 한다.
//    }
//}

//// 단어 공부
//
//// 원래 단어
//let word = readLine()!.uppercased().map { String($0) }
//// 중복을 제외하고 알파벳만 모은 것
//let alphabets = Array(Set(word))
//// 알파벳만 모은 것과 동일한 길이의 갯수를 저장하는 배열
//var result = Array(repeating: 0, count: alphabets.count)
//
//// 모든 알파벳에 대해서 단어 안에 몇개나 있는지 count
//for i in 0..<alphabets.count {
//    result[i] += word.filter({ $0 == alphabets[i] }).count
//}
//
//// 최대값을 구한다.
//let max = result.max()!
//
//// 최대값이 여러개라면 ? 출력
//if result.filter({ $0 == max }).count > 1 {
//    print("?")
//// 최대값이 1개라면 해당 index를 찾아서 알파벳을 출력
//} else {
//    let maxIndex = result.firstIndex(of: max)!
//    print(alphabets[maxIndex])
//}

//// 괄호
//
////✅ valid한 괄호문자인지 확인하는 함수
//func isVPS(_ ps: String) -> Bool {
//    var stack = [Int]() //👉 array로 stack을 구현
//    let psArray = ps.map { String($0) } //👉 char 하나하나를 String으로 바꾸어 준다.
//    // 각 괄호를 순환하면서
//    for p in psArray {
//        if p == "(" { //👉 여는 괄호일 때 stack에 push한다.
//            stack.append(0)
//        } else { //👉 닫는 괄호일 때
//            if !stack.isEmpty {
//                stack.popLast() //👉 stack이 비어있지 않다면 pop (닫는 괄호가 더 많음)
//            } else {
//                return false //👉 stack이 비어있다면 valid하지 않으므로 false를 리턴
//            }
//        }
//    }
//    
//    // 각 괄호를 모두 순환한 이후에
//    if !stack.isEmpty { //👉 stack이 비어있지 않다면 (여는 괄호가 더 많음) false를 리턴
//        return false
//    } else { // 👉 stack이 비어 있다면 true를 리턴
//        return true
//    }
//}
//
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let ps = readLine()!
//    print(isVPS(ps) ? "YES" : "NO")
//}
