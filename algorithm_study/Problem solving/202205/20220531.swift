//
//  20220531.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/31.
//

//import Foundation
//
//// 연산하는 함수
//func operate(_ a: Double, _ b: Double, _ operand: String) -> Double {
//    switch operand {
//    case "+": return a + b
//    case "-": return b - a //❗️ 연산 순서에 주의
//    case "*": return a * b
//    case "/": return b / a //❗️ 연산 순서에 주의
//    default: return 0
//    }
//}
//
//// 해당 피연산자의 index를 얻는 extension
//    // A부터 순서대로 배열에 저장하므로 아스키코드를 이용해서 "A"가 0을 기준으로 구하면 된다.
//extension String {
//    var index: Int {
//        return Int(Character(self).asciiValue! - Character("A").asciiValue!)
//    }
//}
//
//// 연산자들
//let operands = ["+", "-", "*", "/"]
//
//// 입력 받기: 피연산자 갯수
//let N = Int(readLine()!)!
//
//// 반복문을 돌리기 좋게 식을 배열로 바꾼다
//let expression = readLine()!.map { String($0) }
//
//// 피연산자 값을 저장하는 배열
//var nums = [Double]()
//
//// 스택
//var stack = [Double]()
//
//// 피연산자 값을 배열에 저장
//for _ in 0..<N {
//    nums.append(Double(readLine()!)!)
//}
//
//for char in expression {
//    if !operands.contains(char) { //👉 피연산자가 아니라면
//        stack.append(nums[char.index]) //👉 배열에 저장
//    } else { //👉 피연산자라면
//        let a = stack.popLast()!
//        let b = stack.popLast()! //👉 최근 2개를 pop해서
//        stack.append(operate(a, b, char)) //👉 연산해서 stack에 넣는다.
//    }
//}
//
//print(String(format: "%.02f", stack.popLast()!)) //👉 소수점 2째자리까지의 String으로 바꾸어 출력

////✅ 커서 큐
//struct Queue<T> {
//    var data = [T]() //👉 element를 저장하는 배열
//    var index = 0 //👉 queue의 맨 앞을 가리키는 커서
//
//    //✅ 비었는지 확인
//    var isEmpty: Bool {
//        return !(data.count > index) //👉 count의 시간복잡도 O(1)
//        //👉 index가 data의 갯수보다 작다면? = 아직 데이터가 있다.
//            // 마지막 data가 dequeue되면 index가 data.count와 같아진다는 것을 생각하면 이해하기 쉽다.
//    }
//
//    //✅ 큐에 넣기
//    mutating func enqueue(_ element: T) {
//        data.append(element)
//    }
//
//    //✅ 큐에서 빼기
//    mutating func dequeue() -> T {
//        //⭐️ defer문을 활용해서 return된 이후에 index를 1 늘려준다.
//        defer {
//            index += 1
//        }
//        return data[index] //👉 현재 index를 return한다.
//    }
//}

////✅ 더블 스택큐
//struct Queue<T> {
//    var input = [T]() //👉 입력용 큐 (원래 큐의 순서대로 데이터가 존재)
//    var output = [T]() //👉 출력용 큐 (원래 큐의 반대 순서로 데이터가 존재)
//
//    // 빈 큐인지 확인
//    var isEmpty: Bool {
//        return input.isEmpty && output.isEmpty
//    }
//
//    // 큐에 남은 데이터 세기
//    var count: Int {
//        return input.count + output.count
//    }
//
//    // 큐에 데이터 넣기
//    mutating func enqueue(_ element: T) {
//        input.append(element)
//    }
//
//    // 큐에서 데이터 빼기
//    mutating func dequeue() -> T {
//        if output.isEmpty {
//            output = input.reversed() //👉 시간복잡도 O(1)
//            input.removeAll() //❗️ 시간복잡도 O(n), n의 input의 길이
//        }
//        return output.popLast()!
//    }
//}
