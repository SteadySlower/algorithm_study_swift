//
//  20220708.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/07/08.
//

//import Foundation
//
//// Double-ended queue 구현
//struct Deque {
//    var enque: [String]
//    var deque = [String]()
//    
//    // 아무 칸도 모르니까 "?"로 채우고 시작
//    init(n: Int) {
//        self.enque = Array(repeating: "?", count: n)
//    }
//    
//    // 현재 화살표가 가리키고 있는 글자
//        //👉 setter도 구현해서 글자를 입력할 수 있게 한다.
//    var now: String {
//        get {
//            if !deque.isEmpty {
//                return deque.last!
//            } else {
//                return enque.first!
//            }
//        }
//        set {
//            if !deque.isEmpty {
//                deque[deque.count - 1] = newValue
//            } else {
//                enque[0] = newValue
//            }
//        }
//    }
//    
//    // 회전 -> 큐의 맨 뒤에서 pop해서 맨 앞에 push 한다
//    mutating func rotate(num: Int) {
//        for _ in 0..<num {
//            self.pushLeft(self.popRight())
//        }
//    }
//    
//    mutating private func pushLeft(_ s: String) {
//        deque.append(s)
//    }
//
//    mutating private func popRight() -> String {
//        enque = deque.reversed() + enque
//        deque = []
//        return enque.popLast()!
//    }
//    
//    // 완성된 queue를 출력하는 함수
//    mutating func printQueue() {
//        enque = deque.reversed() + enque
//        deque = []
//        print(enque.joined(separator: ""))
//    }
//}
//
//// 아스키 코드를 index로 활용할 수 있게 Int로 만들어주는 extension
//extension String {
//    var checkIndex: Int {
//        Int(Character(self).asciiValue! - Character("A").asciiValue!)
//    }
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], K = input[1]
//var wheel = Deque(n: N)
//
//// 중복된 알파벳이 있으면 안되므로 아스키 코드로 체크
//var check = Array(repeating: false, count: 26)
//
//for _ in 0..<K {
//    let spin = readLine()!.split(separator: " ").map { String($0) }
//    let num = Int(spin[0])!, string = spin[1]
//    
//    // 바퀴를 회전 시키고
//    wheel.rotate(num: num)
//    
//    // 아직 구하지 못한 칸이고 중복되지 않은 알파벳이면 입력
//    if wheel.now == "?" && !check[string.checkIndex] {
//        wheel.now = spin[1]
//        check[string.checkIndex] = true
//    
//    // 이미 구한 자리이고 동일한 알파벳이 위치한다면 continue
//    } else if wheel.now == spin[1] {
//        continue
//        
//    // 위의 경우라면 존재할 수 없는 바퀴이므로 "!" 출력하고 종료
//    } else {
//        print("!"); exit(0)
//    }
//}
//
//// 구한 바퀴 출력하기
//wheel.printQueue()
