//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 문제가 너무 막막할 때는 작은 조각으로 나누어서 구현하자!
 다 구해놓고 세려고 하지말고 세면서 구하자!
 이해 안되면 쓰던가 그려보자!
 */

// 리모콘

//enum PreviousButtonType {
//    case none, number, oper
//}
//
//struct Queue {
//    var queue = [(Int, Int, PreviousButtonType)]()
//    var index = 0
//
//    var isEmpty: Bool {
//        queue.count - index == 0
//    }
//
//    mutating func push(_ t: (Int, Int, PreviousButtonType)) {
//        queue.append(t)
//    }
//
//    mutating func pop() -> (Int, Int, PreviousButtonType) {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//extension Int {
//    var isValid: Bool {
//        self >= 0 && self <= 5000000
//    }
//
//    func pushButton(_ n: Int, _ type: PreviousButtonType) -> Int {
//        if type == .number {
//            return self * 10 + n
//        } else {
//            return n
//        }
//    }
//}
//
//func bfs() {
//    var queue = Queue()
//    var check = Set<Int>()
//    let now = (100, 0, PreviousButtonType.none)
//
//    queue.push(now)
//    check.insert(now.0)
//
//    while !queue.isEmpty {
//        let now = queue.pop()
//
//        if now.0 == N { print(now.1); return }
//
//        for button in buttons {
//            let next = now.0.pushButton(button, now.2)
//            if next.isValid && !check.contains(next) {
//                queue.push((next, now.1 + 1, PreviousButtonType.number))
//                check.insert(next)
//            }
//        }
//
//        let plusOne = now.0 + 1
//        if plusOne.isValid && !check.contains(plusOne) {
//            queue.push((plusOne, now.1 + 1, PreviousButtonType.oper))
//            check.insert(plusOne)
//        }
//
//        let minusOne = now.0 - 1
//        if minusOne.isValid && !check.contains(minusOne) {
//            queue.push((minusOne, now.1 + 1, PreviousButtonType.oper))
//            check.insert(minusOne)
//        }
//    }
//}
//
//let N = Int(readLine()!)!
//let M = Int(readLine()!)!
//var xButtons: [Int]
//if M > 0 {
//    xButtons = readLine()!.split(separator: " ").map { Int(String($0))! }
//} else {
//    xButtons = [Int]()
//}
//
//let buttons = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].filter { !xButtons.contains($0) }
//
//bfs()

extension Int {
    var isPossible: Bool {
        let stringArray = String(self).map { String($0) }
        for string in stringArray {
            if xButtons.contains(string) {
                return false
            }
        }
        return true
    }
    
    var length: Int {
        String(self).map { String($0) }.count
    }
}

let N = Int(readLine()!)!
let M = Int(readLine()!)!
var xButtons: [String]
if M > 0 {
    xButtons = readLine()!.split(separator: " ").map { String($0) }
} else {
    xButtons = [String]()
}

let fromHundred = abs(N - 100)

func withPlus() -> Int {
    var numOfPlus = 0
    var n = N
    
    while n >= 0 && !n.isPossible {
        numOfPlus += 1
        n -= 1
    }
    
    return n.length + numOfPlus
}

func withMinus() -> Int {
    var numOfMinus = 0
    var n = N
    
    while !n.isPossible {
        numOfMinus += 1
        n += 1
    }
    
    return n.length + numOfMinus
}

print(fromHundred, withPlus(), withMinus())
print(min(fromHundred, withPlus(), withMinus()))
print(0.length)
