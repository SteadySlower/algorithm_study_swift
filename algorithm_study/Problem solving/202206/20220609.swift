//
//  20220609.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/09.
//

//import Foundation
//
//extension Character {
//    var numIndex: Int {
//        return Int(self.asciiValue! - Character("A").asciiValue!)
//    }
//
//    var isOperator: Bool {
//        return ["+", "-", "*", "/"].contains(self)
//    }
//
//    func operate(a: Double, b: Double) -> Double {
//        switch self {
//        case "+": return a + b
//        case "-": return b - a
//        case "*": return a * b
//        case "/": return b / a
//        default: return 0.0
//        }
//    }
//}
//
//let N = Int(readLine()!)!
//let expression = readLine()!
//var nums = [Double]()
//
//for _ in 0..<N {
//    nums.append(Double(readLine()!)!)
//}
//
//var stack = [Double]()
//
//for char in expression {
//    if !char.isOperator {
//        stack.append(nums[char.numIndex])
//    } else {
//        let a = stack.popLast()!
//        let b = stack.popLast()!
//        stack.append(char.operate(a: a, b: b))
//    }
//}
//
//print(String(format: "%.02f", stack.popLast()!))

// 스택의 가장 마지막 보다는 새로 pop해야 할 수가 작아야 한다.


//var stack = [Int]()
//let N = Int(readLine()!)!
//
//// pop 해아할 수들 (이것도 stack으로 만들기 위해서 reverse 함)
//var toPops = [Int]()
//for _ in 0..<N {
//    toPops.append(Int(readLine()!)!)
//}
//toPops.reverse()
//
//var toPush = 1 // 지금 push할 수
//var toPop = toPops.popLast()! // 지금 pop해야하는 수
//var result = [String]() // 결과 저장
//
//// stack에 푸시할 때
//func push() {
//    stack.append(toPush) //👉 숫자 push하고
//    toPush += 1 //👉 다음 push할 숫자 1 늘린다.
//    result.append("+") //👉 결과에 push했음을 저장
//}
//
//// stack에서 pop할 때
//func pop() {
//    stack.removeLast() //👉 pop하고
//    toPop = toPops.popLast() ?? 0 //👉 다음에 pop할 숫자 (끝났으면 0)
//    result.append("-") //👉 결과에 pop했음을 저장
//}
//
//while toPop > 0 { //👉 pop할 숫자가 없을 때까지
//    if stack.isEmpty { //👉 stack이 비었으면 일단 push한다.
//        push()
//    }
//
//    if stack.last! > toPop { //👉 stack의 마지막 수가 pop할 숫자보다 크면 = 수열 만들 수 없음
//        break
//    } else if stack.last! < toPop { //👉 아직 작다면 더 push
//        push()
//    } else { //👉 같다면 pop
//        pop()
//    }
//}
//
//if toPops.isEmpty { //👉 전부 pop 했다면 결과 출력
//    result.forEach { char in
//        print(char)
//    }
//} else { //👉 중간에 만들 수 없어서 break 되었다면 "NO" 출력
//    print("NO")
//}


//import Foundation
//
//let N = Int(readLine()!)!
//
//var toPush = 1
//var stack = [Int]()
//var result = [String]()
//
//for _ in 0..<N {
//    let toPop = Int(readLine()!)! //👉 다음에 pop할 숫자를 여기서 입력을 받는다.
//
//    // 아직 toPop보다 toPush가 작다면 계속 push
//    while toPush <= toPop {
//        stack.append(toPush)
//        result.append("+")
//        toPush += 1
//    }
//
//    // 같다면 pop
//    if stack.last == toPop {
//        stack.removeLast()
//        result.append("-")
//    } else { //👉 toPop이 더 작다면 "NO"를 출력하고 종료
//        print("NO")
//        exit(0)
//    }
//}
//
//print(result.joined(separator: "\n"))
