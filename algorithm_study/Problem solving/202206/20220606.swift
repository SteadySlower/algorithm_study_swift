//
//  20220606.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/06.
//

// 회전하는 큐

//// 큐 구현
//struct Queue {
//    //✅ deque를 구현할 때는
//    var input = [Int]()
//    var output = [Int]()
//
//    var count: Int {
//        return input.count + output.count
//    }
//
//    mutating func index(of n: Int) -> Int {
//        if !input.isEmpty {
//            output = input.reversed() + output
//            input.removeAll()
//        }
//        output.reverse()
//        defer {
//            output.reverse()
//        }
//        return output.firstIndex(of: n)!
//    }
//
//    mutating func push(_ n: Int) {
//        input.append(n)
//    }
//
//    mutating func pop() -> Int {
//        if output.isEmpty {
//            output = input.reversed()
//            input.removeAll()
//        }
//        return output.popLast()!
//    }
//
//    mutating func moveLeft() {
//        self.push(self.pop())
//    }
//
//    mutating func moveRight() {
//        if !input.isEmpty {
//            output = input.reversed() + output
//            input.removeAll()
//        }
//        output.reverse()
//        let toRight = output.popLast()!
//        output.reverse()
//        output.append(toRight)
//    }
//}
//
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//
//let toPops = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//var queue = Queue()
//
//for i in 1...N {
//    queue.push(i)
//}
//
//var cnt = 0
//
//toPops.forEach { toPop in
//    let moveLeftCount = queue.index(of: toPop)
//    let moveRightCount = queue.count - moveLeftCount
//
//    if moveLeftCount < moveRightCount {
//        for _ in 0..<moveLeftCount {
//            queue.moveLeft()
//        }
//        _ = queue.pop()
//        cnt += moveLeftCount
//    } else {
//        for _ in 0..<moveRightCount {
//            queue.moveRight()
//        }
//        _ = queue.pop()
//        cnt += moveRightCount
//    }
//}
//
//print(cnt)

//// 데큐 구현
//struct Deque {
//    //✅ deque를 구현할 때는 무조건 더블 스택큐를 사용합니다.
//    var input = [Int]()
//    var output = [Int]()
//
//    var count: Int {
//        return input.count + output.count
//    }
//
//    //✅ queue에서 특정 값의 index를 구하는 함수
//    func index(of n: Int) -> Int {
//        let queue = output.reversed() + input // 원래 queue 모양대로 만들어서
//        return queue.firstIndex(of: n)! // index를 구해서 리턴
//    }
//
//    //✅ 오른쪽에 push = 원래 queue와 동일하게 구현
//    mutating func pushRight(_ n: Int) {
//        input.append(n)
//    }
//
//    //✅ 왼쪽에 push
//        // = queue에서 바로 pop될 자리
//        // = output의 맨 뒤에 넣으면 됨
//    mutating func pushLeft(_ n: Int) {
//        output.append(n)
//    }
//
//    //✅ 왼쪽에서 pop = 원래 queue와 동일하게 구현
//    mutating func popLeft() -> Int {
//        if output.isEmpty {
//            output = input.reversed()
//            input.removeAll()
//        }
//        return output.popLast()!
//    }
//
//    //✅ 오른쪽에서 pop
//        // = queue에서 방금 push된 자리
//        // input의 맨 마지막꺼 빼면 됨
//    mutating func popRight() -> Int {
//        if input.isEmpty {
//            input = output.reversed()
//            output.removeAll()
//        }
//        return input.popLast()!
//    }
//}
//
////✅ 문제 풀이를 위한 메소드 구현
//extension Deque {
//    mutating func moveLeft() {
//        self.pushRight(self.popLeft())
//    }
//
//    mutating func moveRight() {
//        self.pushLeft(self.popRight())
//    }
//}
//
//// 입력 받기
//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = input[0], M = input[1]
//let toPops = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//// deque 만들기
//var deque = Deque()
//for i in 1...N {
//    deque.pushRight(i)
//}
//
//// 2, 3번 연산 횟수를 저장할 변수
//var cnt = 0
//
//// pop 해야할 수 반복문
//toPops.forEach { toPop in
//    let moveLeftCount = deque.index(of: toPop) //👉 왼쪽으로 옮겨서 뺄 때 횟수
//    let moveRightCount = deque.count - moveLeftCount //👉 오른쪽으로 옮겨서 뺄 때 횟수
//
//    // 더 적은 쪽으로 선택해서 빼기
//    if moveLeftCount < moveRightCount {
//        for _ in 0..<moveLeftCount {
//            deque.moveLeft()
//        }
//        _ = deque.popLeft()
//        cnt += moveLeftCount
//    } else {
//        for _ in 0..<moveRightCount {
//            deque.moveRight()
//        }
//        _ = deque.popLeft()
//        cnt += moveRightCount
//    }
//}
//
//print(cnt)
