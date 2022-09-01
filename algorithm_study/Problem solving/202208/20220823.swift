//
//  20220823.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/08/23.
//

//// 조이스틱

//extension Character {
//    var control: Int {
//        let up = Int(self.asciiValue!) - Int(Character("A").asciiValue!)
//        let down = Int(Character("Z").asciiValue!) - Int(self.asciiValue!) + 1
//        return up < down ? up : down
//    }
//}
//
//func solution(_ name:String) -> Int {
//    func findNextR() -> (Int, Int) {
//        var now = cursor
//        var count = 0
//        while true {
//            now = (now + 1) % name.count
//            count += 1
//            if !check[now] { return (now, count) }
//        }
//    }
//
//    func findNextL() -> (Int, Int) {
//        var now = cursor
//        var count = 0
//        while true {
//            now = (now - 1) > 0 ? now - 1 : name.count - 1
//            count += 1
//            if !check[now] { return (now, count) }
//        }
//    }
//
//    let controls = name.map { $0.control }
//    var check = Array(repeating: false, count: name.count)
//    for i in 0..<controls.count {
//        if controls[i] == 0 { check[i] = true }
//    }
//
//    var result = controls.reduce(0, +)
//    print("알파벳 초기 비용: \(result)")
//    var cursor = 0
//    check[cursor] = true
//
//    while check.filter({ $0 == false }).count != 0 {
//        let nextR = findNextR()
//        let nextL = findNextL()
//
//        if nextR.1 < nextL.1 {
//            cursor = nextR.0
//            result += nextR.1
//            check[cursor] = true
//            print("현재 cursor: \(cursor), 처리한 알파벳: \(name.map{$0}[cursor]), 이동비용: \(nextR.1), 총비용: \(result)")
//        } else if nextR.1 >= nextL.1  {
//            cursor = nextL.0
//            result += nextL.1
//            check[cursor] = true
//            print("현재 cursor: \(cursor), 처리한 알파벳: \(name.map{$0}[cursor]), 이동비용: \(nextL.1), 총비용: \(result)")
//        }
//    }
//
//    return result
//}
//
//print(solution("ZZAZZ"))
//print(solution("ZZZAAAZ"))
