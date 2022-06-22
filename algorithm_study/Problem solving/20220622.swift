//
//  20220622.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/06/22.
//

//// 큐 구현
//struct Queue {
//    var queue = [Number]()
//    var index = 0
//    
//    var isEmpty: Bool {
//        queue.count - index == 0
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
//// 숫자를 저장할 자료형
//struct Number {
//    var value: Int
//    var record: Int = 0
//    //👉 지금까지 실시한 명령어를 문자열이 아닌 숫자로 저장합니다.
//}
//
////⭐️ 명령어를 숫자로 저장해주는 함수
//func addRecord(_ record: Int, _ f: String) -> Int {
//    // DSLR을 각각 1 ~ 4의 숫자로 바꾸어서 기존 record를 * 10하고 맨 뒤에 저장합니다.
//        //🚫 0부터 시작하면 처음에 "D"가 나오면 저장이 안됩니다.
//    switch f {
//    case "D": return record * 10 + 1
//    case "S": return record * 10 + 2
//    case "L": return record * 10 + 3
//    case "R": return record * 10 + 4
//    default: return 0
//    }
//}
//
////⭐️ 숫자로 되어 있는 기록을 문자로 바꾸어주는 함수
//func printRecord(_ record: Int) {
//    var result = ""
//    var n = record //👉 parameter는 immutable이므로 복사해서 사용한다.
//    let strings = ["", "D", "S", "L", "R"] // 저장한 숫자와 해당되는 문자의 index가 일치하는 배열
//    
//    // 10으로 나누면서 1자리씩 접급
//    while n > 0 {
//        result = strings[n % 10] + result //👉 경로가 거꾸로 기록되어 있으므로 result의 앞에 더한다.
//        n /= 10
//    }
//    
//    print(result)
//}
//
//// 반복문을 위한 함수 배열
//let functions = [D, S, L, R]
//
//// D 연산
//func D(_ n: Number) -> Number {
//    let value = (n.value * 2) % 10000 //👉 10000을 넘든 안넘든 10000으로 나눈 값은 리턴하면 됨
//    let record = addRecord(n.record, "D")
//    return Number(value: value, record: record)
//}
//
//// S 연산
//func S(_ n: Number) -> Number {
//    let value = n.value - 1 >= 0 ? n.value - 1 : 9999 //👉 0보다 작으면 9999 리턴
//    let record = addRecord(n.record, "S")
//    return Number(value: value, record: record)
//}
//
//// L 연산
//func L(_ n: Number) -> Number {
//    let value = (n.value % 1000) * 10 + (n.value / 1000) //👉 1000으로 나눈 나머지 (일의 자리수 ~ 백의 자리수) * 10 + 천의 자리수
//    let record = addRecord(n.record, "L")
//    return Number(value: value, record: record)
//}
//
//// R 연산
//func R(_ n: Number) -> Number {
//    let value = (n.value / 10) + (n.value % 10) * 1000 //👉 10으로 나눈 몫 (십의 자리수 ~ 천의 자리수) + 1000 * 일의 자리수
//    let record = addRecord(n.record, "R")
//    return Number(value: value, record: record)
//}
//
//// bfs 구현
//func bfs(A: Int, B: Int) {
//    var queue = Queue()
//    var check = Array(repeating: false, count: 10000)
//    queue.push(Number(value: A))
//    check[A] = true
//    
//    while !queue.isEmpty {
//        let now = queue.pop()
//        if now.value == B { printRecord(now.record); return  }
//        
//        for i in 0..<4 {
//            let next = functions[i](now)
//            if !check[next.value] {
//                queue.push(next)
//                check[next.value] = true
//            }
//        }
//    }
//}
//
//// 입력 받기
//let T = Int(readLine()!)!
//
//// 테스트 케이스만큼 반복문
//for _ in 0..<T {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let (A, B) = (input[0], input[1])
//    bfs(A: A, B: B)
//}

