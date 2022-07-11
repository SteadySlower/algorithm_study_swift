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

//
//func solve() {
//    if N == 100 {
//        print(0)
//        return
//    }
//
//    var buttonPush = Int.max
//
//    if N.isPossible {
//        buttonPush = N.length
//    }
//
//    let onlyUpDown = abs(N - 100)
//
//    let withUp: Int = {
//        var n = N
//        var pushUp = 0
//        while !n.isPossible && n >= 0 {
//            n -= 1
//            pushUp += 1
//        }
//        return n.length + pushUp
//    }()
//
//    let withDown: Int = {
//        var n = N
//        var pushDown = 0
//        while !n.isPossible && n < 1000000 {
//            n += 1
//            pushDown += 1
//        }
//        return n.length + pushDown
//    }()
//
//    print(min(buttonPush, onlyUpDown, withUp, withDown))
//}
//
//solve()

extension Int {
    var length: Int? {
        var now = self
        
        if now == 0 {
            if xButtons.contains(0) {
                return nil
            } else {
                return 1
            }
        }
        
        var length = 0
        
        while now > 0 {
            guard !xButtons.contains(now % 10) else { return nil }
            now /= 10
            length += 1
        }
        
        return length
    }
}

let N = Int(readLine()!)!
let M = Int(readLine()!)!
var xButtons = [Int]()
if M > 0 {
    xButtons = readLine()!.split(separator: " ").map { Int(String($0))! }
}

var ans = abs(N - 100)

for channel in 0...1000000 {
    if let length = channel.length {
        ans = min(ans, length + abs(channel - N))
    }
}

print(ans)
