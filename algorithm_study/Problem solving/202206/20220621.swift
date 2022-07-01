//
//  20220621.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/21.
//

//// 커스텀 에러 만들기
//    // 백준에서 제출할 때 NSError()를 쓰면 에러남...
//enum CustomError: Error {
//    case overRange
//}
//
//// 버튼 A
//func pressA(_ n: Int) throws -> Int {
//    guard n + 1 < 100000 else { throw CustomError.overRange }
//    return n + 1
//}
//
////// 버튼 B
////func pressB(_ n: Int) throws -> Int {
////    guard n * 2 < 100000 else { throw CustomError.overRange }
////    var divider = 10000 //👉 만의 자리에서 시작해서 n * 2가 몇자리수인지 알아보기
////    while divider != 0 { //👉 0으로 나누기 방지! (n == 0일 때 발생)
////        if n * 2 / divider != 0 { return n * 2 - divider }
////            // divider로 나누었을 때 0이 아니라면 divider의 자릿수가 같음
////            // divider를 빼서 리턴
////        divider /= 10
////            // 몫이 0이라면 divider를 한자릿수 낮추어서 재시도
////    }
////    return 0 // divider가 0이면 n * 2 == 0이므로 0을 리턴
////}
//
//// 버튼 B
//func pressB(_ n: Int) throws -> Int {
//    guard n * 2 < 100000 else { throw CustomError.overRange }
//    var array = String(n * 2).map { String($0) }
//    guard array[0] != "0" else { return 0 }
//    array[0] = "\(Int(array[0])! - 1)"
//    return Int(array.reduce("", +))!
//}
//
//// 숫자 구조체 (value와 시도횟수(tries)를 저장)
//struct Number {
//    let v: Int
//    let t: Int
//    
//    init(_ v: Int, _ t: Int) {
//        self.v = v
//        self.t = t
//    }
//}
//
//// 큐 구현
//struct Queue {
//    var queue = [Number]()
//    var index = 0
//    
//    var isEmpty: Bool {
//        return queue.count - index == 0
//    }
//    
//    mutating func push(_ n: Number) {
//        queue.append(n)
//    }
//    
//    mutating func pop() -> Number {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//// bfs 구현
//func bfs() {
//    var queue = Queue()
//    queue.push(Number(N, 0))
//    check[N] = true
//    
//    while !queue.isEmpty {
//        let now = queue.pop()
//        //⭐️ 탈출 조건 순서 중요 (G에 도달해도 T번 초과하면 실패임!)
//        if now.t > T { print("ANG"); return } //🚫 횟수 초과
//        if now.v == G { print(now.t); return } //✅ 목표 숫자 도달
//        
//        // 완전 탐색 시작 (각각 A버튼 B버튼)
//        let nowA = try? pressA(now.v) //👉 error나면 nil할당
//        if let nowA = nowA {
//            if !check[nowA] {
//                queue.push(Number(nowA, now.t + 1))
//                check[nowA] = true
//            }
//        }
//        
//        let nowB = try? pressB(now.v)
//        if let nowB = nowB {
//            if !check[nowB] {
//                queue.push(Number(nowB, now.t + 1))
//                check[nowB] = true
//            }
//        }
//    }
//    print("ANG") //👉 큐 끝날 때까지 도달 못하면 실패
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
////let N = input[0], T = input[1], G = input[2]
//let (N, T, G) = (input[0], input[1], input[2])
//var check = Array(repeating: false, count: 100000)
//
//// bfs 실행
//bfs()

